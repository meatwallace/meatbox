#!/usr/bin/env bash

set -euo pipefail

# install `yay` if it's unavalable, a `pacman` wrapper that integrates the AUR
if is not available "yay"; then
  sudo pacman -S --noconfirm yay
fi
