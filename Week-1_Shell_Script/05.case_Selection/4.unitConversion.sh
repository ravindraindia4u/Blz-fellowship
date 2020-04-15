#!/bin/bash
echo "		~:unit conversion:~";
echo "1. Feet to Inch			3. Inch to Feet";
echo "2. Feet to Meter		4. Meter to Feet";
read -p "	Please Select One Option from above Lists : " num;
case $num in
	1)
		read -p "	Please enter feet value to convert inch : " feet;
		in=$(( $feet * 12 ));
		echo "$feet feet = $in Inch";;
	2)
		read -p "	Please enter feet value to convert Meter : " feet;
		me=`echo $feet\* 0.3048`;
		echo "$feet feet = "$(echo "scale = 4; $me" | bc)" Meter";;
	3)
		read -p "	Please enter Inch value to convert Feet : " inch;
		feet=`echo $inch\* 0.0833`;
		echo "$inch inch = "$(echo $feet | bc )" feet";;
	4)
		read -p "	Please enter meter value to convert feet : " me;
		feet=`echo $me\* 3.2808399`;
		echo "$me meter = "$(echo "scale = 4; $feet" | bc )" feet";;
	*)
		echo "Invalid Option";;
esac

