#!/bin/sh
echo $0 $*
progdir=`dirname "$0"`
cd $progdir
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$progdir

$EMU_DIR/cpufreq.sh

#echo performance > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
./OpenBOR.trimui "$*"

