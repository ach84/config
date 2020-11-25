#!/bin/bash

case $1 in
  d|diff)
	diff -u ./aliases ~/.aliases
	diff -u ./colors/ach.vim ~/.vim/colors/ach.vim
	diff -u ./colors/default.vim ~/.vim/colors/default.vim
	diff -u ./i3wm/config ~/.config/i3/config
	diff -u ./i3wm/i3status.conf ~/.config/i3status/config
	diff -u ./mlterm/main ~/.mlterm/main
	diff -u ./mlterm/termcap ~/.mlterm/termcap
	diff -u ./vimrc ~/.vimrc
	diff -u ./zshrc ~/.zshrc
	;;
  i|install)
	install -d ~/.config/i3
	install -d ~/.config/i3status
	install -d ~/.mlterm
	install -d ~/.vim/colors
	install -m0644 ./aliases ~/.aliases
	install -m0644 ./colors/ach.vim ~/.vim/colors/ach.vim
	install -m0644 ./colors/default.vim ~/.vim/colors/default.vim
	install -m0644 ./i3wm/config ~/.config/i3/config
	install -m0644 ./i3wm/i3status.conf ~/.config/i3status/config
	install -m0644 ./mlterm/main ~/.mlterm/main
	install -m0644 ./mlterm/termcap ~/.mlterm/termcap
	install -m0644 ./vimrc ~/.vimrc
	install -m0644 ./zshrc ~/.zshrc
	;;
  *)
	echo "Usage: $0 {diff|install}"
	exit 2
	;;
esac
