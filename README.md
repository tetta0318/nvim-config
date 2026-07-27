# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

# Nvimのインストール
## neovimをインストールする

```
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
sudo apt install neovim
```

## 設定ファイルをcloneする

Windowsだったら`~/AppData/Local/` Linuxマシン(Mac)だったら`~/.config/` に移動してから

```
git clone https://github.com/tetta0318/nvim-config.git nvim
```

## HackGenのインストール
LazyVimはNerd Fontsのアイコンを使用しているが，大半の日本語フォントはNerd Fontsに対応していないため，HackGenNFをインストールする．

WindowsだったらHackGenのgithubからフォントをインストールし，ダウンロード，ターミナルのフォントを変えるだけ．WSLも同様にホストマシン側からフォントを変更可能．MacもフォントをbrewでインストールしたらGUI側からフォントを変更出来た気がする．

Linuxマシンだったら，

```
# 作業用ディレクトリ作成
mkdir -p ~/tmp/hackgen && cd ~/tmp/hackgen

# 最新版のURLをコピーしてインストール
curl -LO https://github.com/yuru7/HackGen/releases/download/v2.10.0/HackGen_NF_v2.10.0.zip

# 解凍
unzip HackGen_NF_v2.10.0.zip
```

システムのフォントファミリに追加
```
sudo mkdir -p /usr/share/fonts/HackGen
sudo cp HackGen_v2.10.0/*.tf /usr/share/fonts/HackGen/
```

キャッシュを更新してインストールされたか確認
```
fc-cache -vf
fc-list | grep -i hackgen
```

システムフォントとして設定
```
gsettings set org.gnome.desktop.interface font-name 'HackGen 11'
gsettings set org.gnome.desktop.interface document-font-name 'HackGen 11'
gsettings set org.gnome.desktop.interface monospace-font-name 'HackGen 11'
```

