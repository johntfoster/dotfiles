#!/usr/bin/env bash

script_dir=$(dirname "$(readlink -f "$0")")

cp $HOME/.bash_profile $HOME/.bash_profile_backup 2>/dev/null || true
cp $HOME/.bashrc $HOME/.bashrc_backup 2>/dev/null || true

rm -rf $HOME/.bash_profile
rm -rf $HOME/.bashrc

ln -sf $script_dir/bash_profile $HOME/.bash_profile
ln -sf $script_dir/bashrc $HOME/.bashrc
