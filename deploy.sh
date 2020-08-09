#!/bin/sh

mkdir -p \
	~/.config/X11 \
	~/.config/bspwm \
	~/.config/dunst \
	~/.config/mpv \
	~/.config/newsboat \
	~/.config/nvim/ftplugin \
	~/.config/python \
	~/.config/ranger \
	~/.config/sxhkd \
	~/.config/zathura \
	~/.config/zsh \
	~/.local/bin

ln -sfr bspwmrc ~/.config/bspwm/bspwmrc
ln -sfr config ~/.config/newsboat/config
ln -sfr dunstrc ~/.config/dunst/dunstrc
ln -sfr init.vim ~/.config/nvim/init.vim
ln -sfr rc.conf ~/.config/ranger/rc.conf
ln -sfr startup.py ~/.config/python/startup.py
ln -sfr sxhkdrc ~/.config/sxhkd/sxhkdrc
ln -sfr zathurarc ~/.config/zathura/zathurarc
ln -sfr zshenv ~/.zshenv

ln -sfr X11/* ~/.config/X11
ln -sfr bin/* ~/.local/bin
ln -sfr ftplugin/* ~/.config/nvim/ftplugin
ln -sfr mpv/* ~/.config/mpv

for file in $(find zsh -type f); do
	ln -sfr "$file" "$HOME/.config/zsh/.${file##*/}"
done
