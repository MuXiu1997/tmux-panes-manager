#!/usr/bin/env bash

set -e

_current_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

main() {
    tmux bind-key C-s run-shell -b "$_current_dir/scripts/swap_pane"
    tmux bind-key C-q run-shell -b "$_current_dir/scripts/select_pane"
}

main
