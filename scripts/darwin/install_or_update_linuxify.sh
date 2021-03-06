#!/bin/sh

set -eu

# `linuxify` is a magic script that transparently replaces MacOS' CLI utils
# with their GNU versions and adds ones that we'd expect on most linux distros
linuxify_dir="$MEATBOX_LIBS_DIR/linuxify"

git-clone-or-update https://github.com/fabiomaia/linuxify.git "$linuxify_dir"

(cd "$linuxify_dir" && ./linuxify install >/dev/null)
