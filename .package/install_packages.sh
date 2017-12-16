#!/bin/bash

brew update
brew bundle

eval "$(rbenv init -)"
rbenv install 2.3.1
rbenv rehash
rbenv local 2.3.1
gem install bundler

mkdir -p ~/.nvm

