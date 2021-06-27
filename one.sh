#! /bin/sh

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
java -Xmx1024M -cp $SCRIPT_DIR/target:$SCRIPT_DIR/lib/ECLA.jar:$SCRIPT_DIR/lib/DTNConsoleConnection.jar:$SCRIPT_DIR core.DTNSim $*
