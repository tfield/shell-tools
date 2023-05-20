# shell-tools
Handy zsh enhancements for my zsh development environment.

## Installation:

Add the following to your `.zshrc`

```zsh
[ ! -f $HOME/.atfzshrc ] && curl https://raw.githubusercontent.com/tfield/shell-tools/main/.atfzshrc > $HOME/.atfzshrc
source $HOME/.atfzshrc
```

## Removal:

Run the following

```zsh
cd $HOME
rm .atfzshrc
rm bin/logtail.sh
rm bin/curltime.sh
```
