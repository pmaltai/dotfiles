alias c="clear"
alias pm="python manage.py"

alias tempos="sudo powermetrics --samplers smc |grep -i 'CPU die temperature'"
  alias psst="brew services start postgresql"
  alias pssp="brew services stop postgresql"

 # Shortcuts
 alias d="cd ~/Documents"
  alias dl="cd ~/Downloads"
  alias dt="cd ~/Desktop"
  alias p="cd ~/Developments"
  alias g="git"

alias ls='exa --icons'
alias ll='exa -alh --icons'
alias la='exa -l -g --icons'
alias lla='la -a --icons'
alias tree="ls --tree --level=3 --icons"

alias rm='trash'
 
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; np    m install npm -g; npm update -g; sudo gem update --system; sudo gem update; sudo gem     cleanup'

  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'


# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Setting PATH for Python 3.10
# The original version is saved in /Users/munkhaltaipurevdorj/.config/fish/config.fish.pysave
set -x PATH "/Library/Frameworks/Python.framework/Versions/3.10/bin" "$PATH"

# Setting PATH for Python 3.9
# The original version is saved in /Users/munkhaltaipurevdorj/.config/fish/config.fish.pysave
set -x PATH "/Library/Frameworks/Python.framework/Versions/3.9/bin" "$PATH"

# Generated for envman. Do not edit.
test -s "$HOME/.config/envman/load.fish"; and source "$HOME/.config/envman/load.fish"


alias brew="env PATH=(string replace (pyenv root)/shims '' \"\$PATH\") brew"

zoxide init fish | source
