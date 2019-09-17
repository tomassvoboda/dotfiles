dotfiles
=====

Personal dotfiles managed by GNU Stow (at least 2.3.0 required). Install:

```sh
git clone https://github.com/tomassvoboda/dotfiles.git ~/.config/dotfiles
stow -d ~/.config/dotfiles -t ~ -v dotfiles
```