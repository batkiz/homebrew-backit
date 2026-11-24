# Backit for Homebrew

这个 tap 为 [backit Scoop bucket](https://github.com/batkiz/backit/tree/master/bucket) 中有 macOS 发行版、且 Homebrew 和软件上游尚未提供安装包的项目维护 Formula 和 Cask。可安装的软件、已有的官方渠道和待核对项目见[收录记录](INVENTORY.md)。

## 安装

从现有本地仓库安装，在本仓库根目录执行：

```sh
brew tap batkiz/backit "$PWD"
brew trust --tap batkiz/backit
brew install batkiz/backit/redis-viewer
brew install --cask batkiz/backit/wake
```

仓库发布到 GitHub 的 `batkiz/homebrew-backit` 后，首次添加可使用 `brew tap batkiz/backit`。之后使用 `brew update` 和 `brew upgrade` 更新。

`beetcb-ghdl` 和 `misawa-xq` 的命令名与这里的包名相同，方便与 Homebrew 里同名的其他工具共存。仅有 Intel 发行版的包在定义中标明架构。Apple Silicon 版 `kaf-cli` 可以原生生成 EPUB，其随附的 MOBI 转换工具 `kindlegen` 是 Intel 程序。

## 收录与更新

1. 从 Scoop 的活动目录 `bucket/` 选取候选，找到上游的 macOS 下载页或发行记录。分别确认版本、架构和包内路径。macOS 的版本号可能与 Windows 不同，例如 BitComet。
2. 在 [Homebrew 官方目录](https://formulae.brew.sh/) 核对项目主页、旧名和别名，再检查开发者的安装文档及其 tap 仓库。例如 `pwsh` 对应 `powershell`，`obs-cli` 则由上游通过 [muesli/tap](https://github.com/muesli/homebrew-tap) 提供。
3. 将命令行工具放在 `Formula/`，桌面应用放在 `Casks/`。为各架构固定上游 URL 和 SHA-256，使用发行方公布的摘要或实际下载文件计算的摘要。更新 [INVENTORY.md](INVENTORY.md) 中对应的行。
4. 若 Homebrew 或上游接手了已收录项目，在收录记录中写明新的安装渠道，并在弃用原包时给出迁移说明。

`Review upstream changes` 每周一运行，也可在 GitHub Actions 手动运行。运行摘要列出活动 bucket 相对收录记录增删的条目，以及 livecheck 发现的新版本。维护者核对发行文件后更新定义和摘要。推送或提交 PR 时，`Check tap` 会用 Homebrew 加载 Intel 和 Apple Silicon 两套定义，并各安装一个 Formula 和 Cask。

本地检查命令：

```sh
brew readall --os=sequoia --arch=all batkiz/backit
brew livecheck --tap=batkiz/backit --newer-only
```
