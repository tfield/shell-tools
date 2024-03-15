# shell-tools
Handy zsh enhancements for my zsh development environment.  This command expects to be running on a system stocked with the same tools as those that ship with mac OS 13.3, plus the following additions (which you should install if not already present):
- oh-my-zsh (https://ohmyz.sh/)
- homebrew (https://brew.sh/)
- mysql (or mariadb)
- pyenv (https://github.com/pyenv/pyenv)
- sdkman (https://gist.github.com/tfield/55064fc0c3f80fa67f624874f0b8d55e)
- nvm (brew install nvm)

It will also install a base IntelliJ IDEA IdeaVim configuration which you can source from your `~/.ideavimrc` file.

## Installation:

Add the following to your `~/.zshrc`

```zsh
# Tony Field Shell Tools https://github.com/tfield/shell-tools
[ ! -f $HOME/.atf/.zshrc ] && (mkdir -p $HOME/.atf && curl https://raw.githubusercontent.com/tfield/shell-tools/main/.zshrc > $HOME/.atf/.zshrc) ; source $HOME/.atf/.zshrc
```

Add the following to your `~/.ideavimrc`
```zsh
source ~/.atf/.ideavimrc
```

## Removal:

1. Remove the two lines listed in _Installation_ above from your `.zshrc`.
2. Remove the line above from your `.ideavimrc`.
3. Run the following

```zsh
rm -rf $HOME/.atf
```
