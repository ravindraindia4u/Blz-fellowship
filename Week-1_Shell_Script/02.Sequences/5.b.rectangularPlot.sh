#!/bin/bash
echo "Please Enter length of Rectangular in feet(ft) : "
read l
echo "Please Enter breath of Rectangular in feet(ft) : "
read b
#ft=$(echo 0.3048 )
echo $ft
lf=`echo $l\* 0.3048`
bf=`echo $b\* 0.3048`
area=`echo $lf\* $bf`

echo "Area of Rectangle = "$(echo "scale = 6; $area" | bc)" Square meter (m^2)"
