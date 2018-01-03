#! /bin/bash

# tell iterm2 to use config in source control
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/.package/config/iterm2/"
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
