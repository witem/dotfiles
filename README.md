# dotfiles

# [nvm](https://github.com/nvm-sh/nvm#installing-and-updating)

* `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh | bash`

## tmux

* [tmp](https://github.com/tmux-plugins/tpm) `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`
* `ln -s dotfiles/.tmux.conf ~/.tmux.conf`

## zsh - oh-my-zsh

* `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
* `ln -s dotfiles/.zshrc ~/.zshrc`

## vim

* [SpaceVim](https://spacevim.org/quick-start-guide/) `curl -sLf https://spacevim.org/install.sh | bash`
* `ln -s dotfiles/SpaceVim.d ~/.SpaceVim.d`
