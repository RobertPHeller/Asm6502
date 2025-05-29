#!/bin/bash
dir=`dirname $0`
snobol4 -b $dir/DoxySnoFilter.sno $1
