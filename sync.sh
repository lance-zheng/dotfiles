#!/bin/bash

if command -v brew >/dev/null 2>&1; then 
  echo -e 'Backup Homebrew...\n' 
  brew bundle dump -f --file backup/Brewfile
fi

if [ -d "$HOME/OneDrive/dotfiles" ]; then
	echo -e "Sync data to OneDrive...\n"
  cp -r ./backup $HOME/OneDrive/dotfiles
  cp -r ./config $HOME/OneDrive/dotfiles
fi

if [ -z $1 ];then
echo -e "Sync data to GitHub...\n"

# ignore contributions
git config user.email 12312312343434@t12312312343434.com

git checkout --orphan empty_branch > /dev/null

git add -A > /dev/null

git commit -am '.' > /dev/null

git branch -D main > /dev/null

git branch -m main > /dev/null

git reflog expire --expire=90.days.ago --expire-unreachable=now --all > /dev/null

echo -e '\nForce push to origin...\n' 
git push -f origin main > /dev/null
fi

echo -e "\nDone."

