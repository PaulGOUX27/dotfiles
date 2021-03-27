# dotfiles

## Setup
To do when creating the repository
```
git init --bare $HOME/dotfiles
alias dg='git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
dg config status.showUntrackedFiles no
dg remote add origin git@github.com:PaulGOUX27/dotfiles.git
```

Remember to write the alias somewhere to keep it (.bashrc, .zshrc)

## Replication
To do when installing dotfiles on a new computer
```
git clone --separate-git-dir=$HOME/dotfiles git@github.com:PaulGOUX27/dotfiles.git dotfiles-tmp
rsync --recursive --verbose --exclude '.git' dotfiles-tmp/ $HOME/
rm -r dotfiles-tmp
dg config status.showUntrackedFiles no
dg remote set-url origin git@github.com:PaulGOUX27/dotfiles.git
```

## Usage
To add files
```
dg status
dg add .gitconfig
dg commit -m 'Add gitconfig'
dg push
```

To get files
```
dg pull
```
