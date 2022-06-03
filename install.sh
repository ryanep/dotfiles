#!/bin/sh

set -e # -e: exit on error

if [ ! "$(command -v brew)" ]; then
	# No chezmoi installation found.
	echo No homebrew found. Installing...
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
	# Brew installed.
	echo Homebrew installed. Skipping.
fi

if [ ! "$(command -v chezmoi)" ]; then
	# No chezmoi installation found.
	echo No chezmoi found. Installing...
	brew install chezmoi
else
	# chezmoi installed.
	echo Chezmoi installed. Skipping.
fi

chezmoi init --apply