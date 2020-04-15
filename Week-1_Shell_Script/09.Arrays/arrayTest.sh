#!/bin/bash

count=0;
Fruits[((count++))]="Apple";
Fruits[((count++))]="Banana";
Fruits[((count++))]="Orange";

echo ${Fruits[@]};
