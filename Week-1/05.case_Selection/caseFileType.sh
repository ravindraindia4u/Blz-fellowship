#!/bin/bash
for filename in $(ls)
do
	ext=${filename##*\.}
	case "$ext" in
		java)
			echo "$filename : Java Source file";;
		o)
			echo "$filename : Object file";;
		sh)
			echo "$filename : Shell script";;
		txt)
			echo "$filename : Text file";;
		*)
			echo "$filename : not processed";;
	esac
done
