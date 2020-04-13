#!/bin/bash -x

echo "Random Number: "$(( RANDOM ))
echo "Random Number B/W 1 to 10 : "$((1 +  RANDOM % 10 ))
echo "Random Number B/W 0 to 1 : "$(( RANDOM % 2 ))
echo "Random Number B/W 1 to 6 : "$((1 + RANDOM % 6 ))
