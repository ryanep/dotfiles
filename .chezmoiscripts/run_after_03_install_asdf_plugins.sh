#!/bin/sh

asdf_plugin_add() {
    # Exit code 2 indicates the plugin is already installed so test and exit.
    asdf plugin add "$1" "${2:-}" || test $? = 2
    asdf install $1
}

asdf_plugin_add nodejs
