# dotfiles

Arch Linux dotfiles managed with a bare git repository.

## Setup on a new machine

**1. Clone the bare repo**
```bash
git clone --bare https://github.com/AppleFritterz/dotfiles.git $HOME/.dotfiles
```

**2. Add the alias temporarily**
```bash
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

**3. Check out the files**
```bash
dotfiles checkout
```

If checkout fails due to conflicting files, back them up first:
```bash
mkdir -p ~/.dotfiles-backup
dotfiles checkout 2>&1 | grep -E "\s+\." | awk '{print $1}' | xargs -I{} mv {} ~/.dotfiles-backup/{}
dotfiles checkout
```

**4. Hide untracked files**
```bash
dotfiles config status.showUntrackedFiles no
```

**5. Reload shell**
```bash
source ~/.bashrc
```
The alias is in `.bashrc` — sourcing it makes it permanent without opening a new shell.

## Dependencies

- `delta` — required for gitconfig diff pager (`pacman -S git-delta`)
