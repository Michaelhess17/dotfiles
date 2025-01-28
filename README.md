# Hyprland Dotfiles (NixOS 24.11 Stable)

This repository was setup using a tutorial [here](https://www.ackama.com/articles/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained/).

Many configuration files for Hyprland are based on [JaKooLit](https://github.com/JaKooLit/)'s installation scripts and dotfiles, opting to use the `color-scripts`, `nvidia-drivers`, and `oh-my-zsh`.

To install these files on a new system:
1. Use [JaKooLit's Hyprland-Dots](https://github.com/JaKooLit/Hyperland-Dots) repo and the included instructions to install all the basic tools (`hyprland`, `kitty`, `rofi`, `swaybar`, `oh-my-zsh`, etc.)
2. Ignore the repository we are about to create/clone: `echo ".cfg" >> ~/.gitignore`
3. Clone this repository: `git clone git@github.com:/Michaelhess17/dotfiles.git $HOME/.cfg --bare`
4. Add an alias for the dotfile repository's bare directory structure `alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'` to `.bashrc` and `.zshrc` files.
5. Checkout the content from the repo: `config checkout`
6. You may get an error that some files are going to be overwritten. This is okay! Just backup the files you want to and delete files you want to overwrite!
7. Also download [JaKooLit's Wallpaper Bank](https://github.com/JaKooLit/Wallpaper-Bank) if you want.
