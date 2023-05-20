# shell-tools
Handy zsh enhancements for my zsh development environment.  This command expects to be running on a system stocked with the same tools as those that ship with mac OS 13.3, plus the following additions (which you should install if not already present):
- oh-my-zsh (https://ohmyz.sh/)
- homebrew (https://brew.sh/)
- mysql (or mariadb)
- pyenv (https://github.com/pyenv/pyenv)
- sdkman (https://gist.github.com/tfield/55064fc0c3f80fa67f624874f0b8d55e)
- nvm (brew install nvm)

## Installation:

Add the following to your `.zshrc`

```zsh
# ATF Shell Tools
[ ! -f $HOME/.atf/.zshrc ] && (mkdir -p $HOME/.atf && curl https://raw.githubusercontent.com/tfield/shell-tools/main/.zshrc > $HOME/.atf/.zshrc) ; source $HOME/.atf/.zshrc
```

## Removal:

Remove the two lines listed in _Installation_ above from your `.zshrc`. and then run the following

```zsh
rm -rf $HOME/.atf
```
