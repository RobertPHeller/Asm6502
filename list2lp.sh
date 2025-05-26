#!/bin/bash
#
# Print or convert to PostScript a listing file
#
a2ps -1 -r -B -s tumble -L 66 -l 145 --borders=no -c $@
