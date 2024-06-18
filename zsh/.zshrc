# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
#plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"







## Customer Kssessio
# Custom oh-my-zsh theme

##PROMPT='%F{cyan}%n%f@%F{green}%m%f %F{blue}%~%f '
#PROMPT="
#%{$fg[white]%}(%D %*) <%?> %F{208}%n%f in %{$fg[yellow]%}[%~] $program %{$fg[default]%}
#%{$fg[green]%}%m %F{yellow}$(git_info)%f %{$fg[default]%}%# " 


#PROMPT='%F{cyan}%n%f@%F{green}%m%f %F{blue}%~%f '
#PROMPT="
#%{$fg[white]%}(%D %*) <%?> %F{208}%n%f in %{$fg[yellow]%}[%~] $program %{$fg[default]%}
#%{$fg[green]%}%m %{$fg[default]%}%# " 




# Function to get the current Git branch
git_branch() {
  local branch_name
  branch_name=$(git symbolic-ref HEAD 2> /dev/null) || \
  branch_name=$(git rev-parse --short HEAD 2> /dev/null) || return 1
  echo "${branch_name#refs/heads/}"
}

# Function to get the Git repository status
git_repo_status() {
  local git_status_output
  git_status_output=$(git status --porcelain 2> /dev/null)
  if [[ -n $git_status_output ]]; then
    echo "%F{red}✗%f"
  else
    echo "%F{green}✓%f"
  fi
}

# Function to combine Git branch and status
git_info() {
  local branch_info
  branch_info=$(git_branch) || return 1
  echo "(${branch_info}$(git_repo_status))"
}

# Right prompt with Git info
#RPROMPT='%F{yellow}$(git_info)%f'

# Enable colors
#autoload -U colors && colors

# Enable prompt substitutions
setopt prompt_subst

# Source oh-my-zsh
#source $ZSH/oh-my-zsh.sh

#export AUTO_TITLE_SCREENS="NO"
#
#export PROMPT="
#%{$fg[white]%}(%D %*) <%?> %F{208}%n%f in %{$fg[yellow]%}[%~] $program %{$fg[default]%}
#%{$fg[cyan]%}%m %#%{$fg[default]%} "
#
#export RPROMPT=
#
#set-title() {
#    echo -e "\e]0;$*\007"
#}
#
#ssh() {
#    set-title $*;
#    /usr/bin/ssh -2 $*;
#    set-title $HOST;
#}

. "$HOME/.cargo/env"

#PATH=$PATH:~/.config/nvim:~/.local/bin/

# https://amzn-aws.slack.com/archives/C02HL9RBSFJ/p1715988170487969
export GOPROXY='https://proxy.golang.org,direct'
export GOSUMDB=sum.golang.org

#ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=cyan,underline
#ZSH_HIGHLIGHT_STYLES[precommand]=fg=cyan,underline
#ZSH_HIGHLIGHT_STYLES[arg0]=fg=cyan
ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=#e69138,underline
ZSH_HIGHLIGHT_STYLES[precommand]=fg=#e69138,underline
ZSH_HIGHLIGHT_STYLES[arg0]=fg=#e69138
## Functions/methods

#PROMPT='%F{cyan}%n%f@%F{green}%m%f %F{blue}%~%f '
#PROMPT="
#%{$fg[white]%}(%D %*) <%?> %F{208}%n%f in %{$fg[yellow]%}[%~] $program %{$fg[default]%}
#%{$fg[green]%}%m %{$fg[default]%}" 

PROMPT="
%{$fg[white]%}(%D %*) <%?> %F{208}%n%f in %{$fg[yellow]%}[%~] $program %{$fg[default]%}
%{$fg[cyan]%}%m %{$fg[default]%}" 
#PROMPT="
#%{$fg[white]%}(%D %*) <%?> %F{208}%n%f in %{$fg[yellow]%}[%~] $program %{$fg[default]%}
#%{$fg[green]%}%m " 

#(24-05-24 5:34:26) <0> fedora in [~/workplace/kssessio/bottlerocket-dev/br-repo/ctr-1.7]
#ip-172-31-58-201 %

#fedora @ ip-172-31-58-201 ➜  /home/fedora/workplace/kssessio/bottlerocket-dev/br-repo/ctr-1.7 git:(ctr-1.7) ✗

#PROMPT="%{$fg_bold[white]%}%n %{$fg[blue]%}@ %{$fg_bold[yellow]%}%m"

#PROMPT+="%(?:%{$fg_bold[cyan]%}➜ :%{$fg_bold[red]%}➜)"

#PROMPT+='$reset_color%$(git_prompt_info)'
#PROMPT='%{$fg_bold[red]%}➜ %{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}
PROMPT+='%{$fg_bold[cyan]%}➜ %{$fg_bold[red]%}%p%{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}% %{$reset_color%}'
VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
#alias vim=nvim


zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'


bindkey '^[[Z' autosuggest-accept  # shift + tab  | autosuggest

bindkey -s ^f "tmux-sessionizer\n"

source ~/.zsh_profile
