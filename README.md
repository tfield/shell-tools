# shell-tools
Handy zsh enhancements for my zsh development environment.  This command expects the following tools to be intalled:
- homebrew (https://brew.sh/)
- mysql (or mariadb)
- nvm (brew install nvm)
- sdkman (https://gist.github.com/tfield/55064fc0c3f80fa67f624874f0b8d55e)

## Installation:

Add the following to your `.zshrc`

```zsh
[ ! -f $HOME/.atf/.zshrc ] mkdir -p $HOME/.atf && curl https://raw.githubusercontent.com/tfield/shell-tools/main/.zshrc > $HOME/.atf/.zshrc
source $HOME/.atf/.zshrc
```

## Removal:

Remove the two lines listed in _Installation_ above from your `.zshrc`. and then run the following

```zsh
cd $HOME
rm -rf $HOME/.atf
```
