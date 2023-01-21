# My dotfiles

In this repo you will find some of my basic dotfile configs.

## Inspired by

- [Takuya](https://github.com/craftzdog/dotfiles-public)
- [ThePrimeagen](https://github.com/ThePrimeagen/.dotfiles)

## Installation scripts

Run `install.sh`, then one of these two based on your distro:

- `install-arch.sh` - for Arch
- `install-manjaro.sh` - for Manjaro

## Utils

### The Way

A terminal-based snippet manager.

https://github.com/out-of-cheese-error/the-way

A good way to store:

- Shell commands
- Code that is not used often but is handy to have in a way that I can search for, instead of having to memorize an editor snippet shortcut, e.g. config file templates, css resets, etc.

#### Setup (Arch)

1. Install `the-way` with `cargo install the-way`
2. Install `xsel` with `pacman -S xsel`
3. Run `the-way config get` to print the-way's config file path
4. Open the config file and change the value of `copy_cmd` to `'xsel -ib'`

I use `xsel` because `xclip` is not able to copy the snippet from within Neovim inside a `toggleterm` terminal.
