#!/bin/bash

git_diff ()
{
	git --no-pager diff $1
	exit 0
}

git_status ()
{
	git status -s --untracked-files=no
	exit 0
}

[ -z "$1" ] && git_status

case $1 in
  status)
	cmd='git status -s --untracked-files=no'
	;;
  update)
	cmd='git remote update'
	;;
  list)
	cmd='echo'
	;;
  *)
	git_diff $1
	;;
esac

for f in `ls`; do
	[ -d $f ] || continue
	[ -L $f ] && continue
	[ -d $f/.git ] || continue
	cd $f
	br=$( git branch -l | grep ^* )
	printf " ===>>> %-10s %-8s\n" "$f" "$br"
	$cmd
	cd ..
done

exit 0
