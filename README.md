# dotfiles

## Setup
```
git init --bare $HOME/dotfiles
alias dg='git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
dg config status.showUntrackedFiles no
dg remote add origin <my-git-dotfile-repository>
```

Remember to write the alias somewhere to keep it (.bashrc, .zshrc)

## Replication
```
git clone --separate-git-dir=$HOME/dotfiles <my-git-dotfile-repository> dotfiles-tmp
rsync --recursive --verbose --exclude '.git' dotfiles-tmp/ $HOME/
rm --recursive dotfiles-tmp
```

## Configuration
```
dg config status.showUntrackedFiles no
dg remote set-url origin <my-git-dotfile-repository>
```

## Usage
```
dg status
dg add .gitconfig
dg commit -m 'Add gitconfig'
dg push
```
