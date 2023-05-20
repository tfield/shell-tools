# shell-tools
Handy zsh enhancements for my zsh development environment.

## Installation:

Add the following to your `.zshrc`

```zsh
[ ! -f $HOME/.atfzshrc ] && curl https://raw.githubusercontent.com/tfield/shell-tools/main/.atfzshrc > $HOME/.atfzshrc
source $HOME/.atfzshrc
```

## Removal:

Remove the two lines listed in _Installation_ above from your `.zshrc`. and then run the following

```zsh
cd $HOME
rm .atfzshrc
rm -rf $HOME/.atfbin
```
