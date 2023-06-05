# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.cargo/bin:$HOME/bin:/usr/local/bin:$HOME/.gem/ruby/3.0.0/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="muse"
# ZSH_THEME="pygmalion"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
#

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=3

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  catimg
  archlinux
  extract
  colored-man-pages
  tmux
  tmuxinator
  node
  npm
  nvm
  docker
  docker-compose
  encode64
  gpg-agent
  redis-cli
  sudo
  systemd
  rust
  colorize
  battery
  jsontools
  rsync
  ufw
  zsh-interactive-cd
  dnf
)

source $ZSH/oh-my-zsh.sh

# User configuration

# source /usr/share/nvm/init-nvm.sh
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# dircolors
test -r ~/.dir_colors && eval $(dircolors ~/.dir_colors)

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
export VISUAL="nvim"
export TERM=screen-256color
# export TERM=xterm-256color

alias e=$EDITOR
alias wttr="curl http://wttr.in/kiev"

# Move to other file
alias yayupg='yay -Syu'
alias yayin='yay -S'
alias yayins='yay -U'
alias yayre='yay -R'
alias yayrem='yay -Rns'
alias yayrep='yay -Si'
alias yayreps='yay -Ss'
alias yayloc='yay -Qi'
alias yaylocs='yay -Qs'
alias yayinsd='yay -S --asdeps'
alias yaymir='yay -Syy'
alias yaylsorphans='yay -Qdt'
alias yayrmorphans='yay -Rs $(yay -Qtdq)'
alias yayfileupg='yay -Fy'
alias yayfiles='yay tFs'


if (( $+commands[abs] && $+commands[aur] )); then
  alias yayupd='yayman -Sy && sudo abs && sudo aur'
elif (( $+commands[abs] )); then
  alias yayupd='yayman -Sy && sudo abs'
elif (( $+commands[aur] )); then
  alias yayupd='yayman -Sy && sudo aur'
else
  alias yayupd='yayman -Suy'
fi

fbr() {
  local branches branch
  branches=$(git branch --all | grep -v HEAD) &&
  branch=$(echo "$branches" | fzf-tmux -d $(( 2 + $(wc -l <<< "$branches") )) +m) &&
  git checkout $(echo "$branch" | sed "s/.* //" | sed "s#remotes/[^/]*/##")
}

j() {
  if [[ "$#" -ne 0 ]]; then
    cd $(autojump $@)
    return
  fi
  cd "$(autojump -s | sed '/_____/Q; s/^[0-9,.:]*\s*//' |  fzf --height 40% --nth 1.. --reverse --inline-info +s --tac --query "${*##-* }" )"
}

function пше () {                                                                                                                                                                                                  
  case $1 in                                                                                                                                                                                                     
    курва )                                                                                                                                                                                                    
      shift;                                                                                                                                                                                                 
      git commit $@;;                                                                                                                                                                                        
    пердоле )                                                                                                                                                                                                  
      shift;                                                                                                                                                                                                 
      git push $@;;                                                                                                                                                                                          
    подкурвич )                                                                                                                                                                                                
      shift;                                                                                                                                                                                                 
      git pull $@;;                                                                                                                                                                                          
    *)                                                                                                                                                                                                         
      git $@;;                                                                                                                                                                                               
  esac                                                                                                                                                                                                           
}


# For nnn
export NNN_BMS='d:~/Documents;p:~/projects/;D:~/Downloads/'
export NNN_SSHFS_OPTS="sshfs -o follow_symlinks"        # make sshfs follow symlinks on the remote
export NNN_CONTEXT_COLORS="2136"                        # use a different color for each context

# pnpm
export PNPM_HOME="/home/lnv/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# bun completions
[ -s "/home/lnv/.bun/_bun" ] && source "/home/lnv/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
