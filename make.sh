#!/bin/bash

case $1 in
  diff)
	diff -u ./aliases ~/.aliases
	diff -u ./zshrc ~/.zshrc
	diff -u ./mlterm/main ~/.mlterm/main
	diff -u ./mlterm/termcap ~/.mlterm/termcap
	;;
  install)
	;;
  *)
	echo "Usage: $0 {diff|install}"
	exit 2
	;;
esac
