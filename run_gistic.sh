#!/bin/sh
## set MCR environment and launch GISTIC executable
## Modified from gistic2 script

# Get script directory
#DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DIR=/opt/GISTIC
echo "Going to $DIR"
cd $DIR

## NOTE: change the line below if you have installed the Matlab MCR in an alternative location
MCR_ROOT=$DIR/MATLAB_Compiler_Runtime
MCR_VER=v83

echo Setting Matlab MCR root to $MCR_ROOT

## set up environment variables
LD_LIBRARY_PATH=$MCR_ROOT/$MCR_VER/runtime/glnxa64:$LD_LIBRARY_PATH
LD_LIBRARY_PATH=$MCR_ROOT/$MCR_VER/bin/glnxa64:$LD_LIBRARY_PATH
LD_LIBRARY_PATH=$MCR_ROOT/$MCR_VER/sys/os/glnxa64:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH
XAPPLRESDIR=$MCR_ROOT/$MCR_VER/MATLAB_Component_Runtime/v83/X11/app-defaults
export XAPPLRESDIR

## launch GISTIC executable
./gp_gistic2_from_seg $@