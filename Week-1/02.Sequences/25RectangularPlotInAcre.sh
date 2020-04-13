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
area1=$(echo "scale = 6; $area" | bc)
echo "Area of $l feet x $b feet Rectangular plot  = "$area1" Square meter(m^2)"
area_in_ac=`echo $area1\* 0.000247\* 25`
echo "Area of 25 such Rectanglular plots = $(echo "$area_in_ac" | bc) Acre(ac)"
