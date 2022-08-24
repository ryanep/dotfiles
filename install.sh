#!/bin/sh

set -e

if [ ! "$(command -v brew)" ]; then
	echo No homebrew installation found. Installing...
	
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
	echo Homebrew already installed. Skipping.
fi

if [ ! "$(command -v chezmoi)" ]; then
	echo No chezmoi installation found. Installing...

	brew install chezmoi
else
	echo Chezmoi already installed. Skipping.
fi

chezmoi init --apply https://github.com/ryanep/dotfiles.git