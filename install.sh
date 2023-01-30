#!/bin/sh
extra_commands="awscurl cfn-lint"
user_bin_dir=$HOME/.local/bin
if [ ! -d $user_bin_dir ]; then
    echo "User bin folder $user_bin_dir does not exist."
    echo "mkdir -p $user_bin_dir && echo \"PATH=${PATH}:$user_bin_dir\" >> ~/.bashrc"
    exit 1
fi
here=$(dirname $0)
# substitute for an available Python version >= 3.8
py=$(command -v python3.8)
cd "$here"
if [ ! -f bin ]; then
  $py -m venv .
fi
source bin/activate
pip install -r requirements.txt
install -m 0755 everydaycommand.sh $user_bin_dir/.everydaycommand
for cmd in $extra_commands; do
  echo "Linking $cmd"
  ln -sf $user_bin_dir/.everydaycommand $user_bin_dir/$cmd
done

