#!/bin/sh

set -eu

scripts="
  create_home_directories.sh
  install_or_update_node_modules.sh
  install_or_update_python_packages.sh
  install_or_update_ruby_gems.sh
  setup_tmux.sh
  setup_nvim.sh
  install_or_update_zplugin.sh
  set_zsh_as_default_shell.sh
  load_zsh.sh
"

setup() {
  for script in $scripts; do
    "./$script" >/dev/null
  done
}

setup "$@"