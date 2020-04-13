#!/bin/bash
#function for Fahrenheit to Celcius Converion.
function fahToCel() {
	f=$1;
	#c=(f-32)*5/9
	diff=$(( $f - 32 ))
	div=$(( 5 / 9 ))
	c=$(( $diff * $div ))
	echo $c

}
#Function for Celcius to Fahrenheit Conversion.
function celToFah() {
	c=$1
	#f=(( c * 9 )/5)+32
	mul=$(( c * 9 ))
	div=$(( $mul / 5 ))
	f=$(( $div + 32 ))
	echo $f

}
echo "Choose Type of Conversion.";
read -p "1.Fahrenheit to Celcius.  2.Celcius to Fahrenheit." x;
case $x in
	1)
		read -p "Enter Fahrenheit value : " f
		celcius="$( fahToCel $f )"
		echo "Celcius Temperature = $celcius";;
	2)
		read -p "Enter celcius value : " c
		fahrenheit="$( celToFah $c )"
		echo "Fahrenheit Temperature = $fahrenheit";;
	*)
		echo "Choose Valid Option.";;
esac
