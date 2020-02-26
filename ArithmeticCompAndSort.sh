#!/bin/bash -x

#Write program to take three inputs – a, b & c

#VARIABLES
operation1
operation2

#TAKING THREE INPUTS
printf "Enter the value of a\n"
read a
printf "Enter the value of b\n"
read b
printf "Enter the value of c\n"
read c

operation1=$(( $a+$b*$c ))
operation2=$(( $a*$b+$c ))

printf "Operation1=$operation1\n"
printf "Operation2=$operation2\n"
