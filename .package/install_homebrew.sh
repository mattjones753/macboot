#!/bin/bash

if ! command -v gcc >/dev/null; then
  xcode-select --install
fi

if ! command -v brew >/dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi


