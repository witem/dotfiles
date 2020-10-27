# dotfiles

# Base install

- [nvm](https://github.com/nvm-sh/nvm#installing-and-updating)
-- `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh | bash`
- `ln -s ~/dotfiles/.gitconfig .gitconfig`
- `ln -s ~/dotfiles/.gitignore_global .gitignore_global`

## tmux

- [tmp](https://github.com/tmux-plugins/tpm) `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`
- `ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf`

## zsh - [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)

- `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
- `ln -s ~/dotfiles/.zshrc ~/.zshrc`

## vim

- `pacin gvim`
- [SpaceVim](https://spacevim.org/quick-start-guide/) `curl -sLf https://spacevim.org/install.sh | bash`
- `ln -svf ~/dotfiles/SpaceVim.d ~/.SpaceVim.d`
- `npm i -g tslint typescript-formatter eslint-cli js-beautify`

## kitty

- `ln -svf ~/dotfiles/kitty ~/.config/kitty`
