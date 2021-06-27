#!/bin/sh

if [ "$(uname)" != "Linux" ]; then
    SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
else
    SCRIPT_DIR=$(dirname "$(readlink -f "$0")")
fi
java -Xmx1024M -cp $SCRIPT_DIR/target:$SCRIPT_DIR/lib/ECLA.jar:$SCRIPT_DIR/lib/DTNConsoleConnection.jar:$SCRIPT_DIR core.DTNSim $*
