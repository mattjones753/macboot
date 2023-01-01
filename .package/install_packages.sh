#!/bin/bash

brew update
brew bundle --file=${HOME}/.package/Brewfile

mkdir -p ~/.nvm
