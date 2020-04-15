#!/bin/bash
echo "Please Enter the inch(in) value to convert foot(ft) : "
read in
ft=$(( $in / 12 ))
n=$(( $in % 12 ))
echo "$in inch = $ft feet & $n inch"
