#!/bin/bash
echo "Sum of Two Random Dice Number = "$(( $((1 + RANDOM % 6)) + $((1 + RANDOM % 6)) ))
