unsetopt share_history 
echo -n "Greetings $USER! "

export PATH=$HOME/.atf:$PATH

[ ! -f $HOME/.atf/logtail.sh ] && echo "" && echo "Installing logtail" && curl https://raw.githubusercontent.com/tfield/shell-tools/main/logtail.sh > $HOME/.atf/logtail.sh && chmod +x $HOME/.atf/logtail.sh
alias tail=logtail.sh

[ ! -f $HOME/.atf/curl-format.txt ] && echo "" && echo "Installing curltime" && curl https://raw.githubusercontent.com/tfield/shell-tools/main/curl-format.txt > $HOME/.atf/curl-format.txt
alias curltime='curl -w "@$HOME/.atf/curl-format.txt" -o /dev/null -s '

[ ! -f $HOME/.atf/.ideavimrc ] && echo "" && echo "Installing IdeaVim config" && curl https://raw.githubusercontent.com/tfield/shell-tools/main/.ideavimrc > $HOME/.atf/.ideavimrc

echo -n "Initializing"
alias p='cd /Volumes/Projects'

export PATH="/Applications/IntelliJ IDEA.app/Contents/MacOS":$PATH
export PATH=/usr/local/mysql/bin:$PATH
export PATH="$HOME/.local/bin:$PATH"
export DISPLAY=localhost:0

# ############################################
echo -n " oh-my-zsh"
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
ZSH_THEME="maran"
ZSH_THEME="jnrowe"
ZSH_THEME="simple"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# ############################################
echo -n ", pyenv"
[ -f /opt/homebrew/bin/pyenv ] && (echo -n ", python" && export PATH="$(pyenv root)/shims:${PATH}")

# export PATH="$HOME/.jenv/bin:$PATH"
# eval "$(jenv init -)"

# ############################################
# echo -n ", nvm"
# export NVM_DIR="$HOME/.nvm"
# [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
# [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# ############################################
echo -n ", docker completions"
fpath=($HOME/.docker/completions $fpath)
autoload -Uz compinit
compinit

# ############################################
# Tony: use sdkman to install multiple java versions, switch between java versions, and 
# install the micronaut command line.
echo -n ", sdkman"
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# ############################################
echo "."
