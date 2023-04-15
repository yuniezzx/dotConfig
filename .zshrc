if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# powerlevel10k 配置
source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# zsh-syntax-highlighting zsh高亮配置
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# zsh-autosuggestions zsh自动补全配置
plugins=( 
    # other plugins...
    zsh-autosuggestions
)

# Rust 配置
source "$HOME/.cargo/env"

export "PATH=$HOME/.local/bin:$PATH"

# mongodb 配置


# pyenv python 版本管理 配置
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
# pyenv 插件 pyenv-virtualenv(辅助pyenv 创建Python 环境) 配置
eval "$(pyenv virtualenv-init -)"


# google-cloud-cli 配置
#The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/niezzx/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/niezzx/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/niezzx/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/niezzx/google-cloud-sdk/completion.zsh.inc'; fi

# Ranger  配置
#  RANGER_LOAD_DEFAULT_RC 为控制是否加载默认配置文件
export RANGER_LOAD_DEFAULT_RC=FALSE


# Set personal aliases
# To run MongoDB (i.e. the mongod process) as a macOS service,
alias mongostart="brew services start mongodb-community@6.0"
# To stop a mongod running as a macOS service,
alias mongostop="brew services stop mongodb-community@6.0"
# alias lazygit to lg
alias lg="lazygit"
# alias logo-ls replace ls
alias ls='logo-ls'
# alias neovim to open .zshrc file
alias zshrc="nvim ~/.zshrc"
# alias typora open file
alias typora="open -a typora"







