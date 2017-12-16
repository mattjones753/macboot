#!/bin/bash

if ! command -v gcc >/dev/null; then
  xcode-select --install
fi

if ! command -v brew >/dev/null; then
    curl -fsS \
      'https://raw.githubusercontent.com/Homebrew/install/master/install' | ruby
fi


