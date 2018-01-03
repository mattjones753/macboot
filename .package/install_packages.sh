#!/bin/bash

brew update
brew bundle --file=${HOME}/.package/Brewfile

eval "$(rbenv init -)"
if [ ! -d ${HOME}/.rbenv/versions/2.3.1/ ]; then
  rbenv install 2.3.1
fi
rbenv rehash
rbenv local 2.3.1
gem install bundler

mkdir -p ~/.nvm
