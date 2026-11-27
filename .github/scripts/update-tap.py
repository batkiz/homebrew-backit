import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import sys
from tempfile import TemporaryFile


# Formulae in this tap ship binaries. Each URL has its own checksum,
# including the URLs inside on_arm and on_intel blocks.
FORMULA_ASSET = re.compile(
    r'^(?P<indent> +)url "(?P<url>https://[^"]+)"(?P<options>[^\n]*)\n'
    r'(?P<version>(?P=indent)version "[^"]+"\n)?'
    r'(?P=indent)sha256 "[0-9a-f]{64}"$', re.MULTILINE
)


def update_formula(path, current, latest):
    source = path.read_text()
    assets = list(FORMULA_ASSET.finditer(source))
    if not assets or len(assets) != len(re.findall(r"^ +sha256 ", source, re.MULTILINE)):
        raise ValueError("unrecognized formula checksum layout")

    def update_asset(match):
        url = match["url"]
        if "#{version}" in url:
            download = url.replace("#{version}", latest)
        elif current in url:
            url = download = url.replace(current, latest)
        else:
            raise ValueError(f"cannot update URL {url}")
        with TemporaryFile() as archive:
            subprocess.run(["curl", "--fail", "--location", "--silent", "--show-error",
                            "--retry", "3", "--output", "-", download], stdout=archive, check=True)
            archive.seek(0)
            digest = hashlib.sha256()
            for chunk in iter(lambda: archive.read(1024 * 1024), b""):
                digest.update(chunk)
        indent = match["indent"]
        version_line = match["version"] or ""
        return f'{indent}url "{url}"{match["options"]}\n{version_line}{indent}sha256 "{digest.hexdigest()}"'

    updated = FORMULA_ASSET.sub(update_asset, source)
    updated = updated.replace(f'\n  version "{current}"\n', f'\n  version "{latest}"\n')
    path.write_text(updated)


def main():
    results, tap_dir = map(Path, sys.argv[1:])
    failed = False
    for item in json.loads(results.read_text()):
        name = item.get("cask") or item["formula"]
        try:
            if item.get("status") == "error":
                raise ValueError(item.get("messages"))
            if not item.get("version", {}).get("outdated"):
                continue
            current, latest = (item["version"][key] for key in ("current", "latest"))
            if not re.fullmatch(r"[a-z0-9][a-z0-9@+.-]*", name) or not re.fullmatch(r"[A-Za-z0-9][A-Za-z0-9.,+_-]*", latest):
                raise ValueError("unsupported package name or version")
            relative = Path("Casks" if "cask" in item else "Formula") / f"{name}.rb"
            package = tap_dir / relative
            if "cask" in item:
                subprocess.run(["brew", "bump-cask-pr", "--write-only", "--no-audit", "--no-style",
                                f"--version={latest}", f"batkiz/backit/{name}"], check=True)
            else:
                update_formula(package, current, latest)
            if package.read_bytes() == relative.read_bytes():
                raise ValueError("package definition did not change")
            shutil.copyfile(package, relative)
            message = f"- {name}: {current} → {latest}"
        except (OSError, ValueError, subprocess.CalledProcessError) as exc:
            failed = True
            message = f"- {name}: update failed ({exc})"
        print(message, flush=True)
        with open(os.environ["GITHUB_STEP_SUMMARY"], "a") as summary:
            print(message, file=summary)
    return int(failed)


if __name__ == "__main__":
    sys.exit(main())
