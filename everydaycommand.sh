#!/bin/sh 
# Purpose - Copy this file to a user's ~/bin or ~/.local/bin and then
# symlink commands named after ones in the bin folder to this file
# and they will automatically be temporarily executed in this environment.
# This saves needing to have this file imported for custom commands
# See install.sh
c=${0/*\//}
source $HOME/dev/everyday_admin_tools/bin/activate
cmd="$HOME/dev/everyday_admin_tools/bin/$c"
if [ ! -x $cmd ]; then
    echo "ERROR: No everyday_admin_tools command $c"
    exit 1
else
    $cmd "$@"
    exit $?
fi
