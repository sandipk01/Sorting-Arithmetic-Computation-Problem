#!/bin/bash -x

#Write program to take three inputs – a, b & c

#VARIABLES
declare -A operations
declare -a operationsArray
operation1=0
operation2=0
operation3=0
operation4=0

#TAKING THREE INPUTS
printf "Enter the value of a\n"
read a
printf "Enter the value of b\n"
read b
printf "Enter the value of c\n"
read c

#ARITHMETIC OPERATIONS
operation1=$(( $a+$b*$c ))
operation2=$(( $a*$b+$c ))
operation3=$(( $c+$a/$b ))
operation4=$(( $a%$b+$c ))

#PRINTING
printf "Operation1=$operation1\n"
printf "Operation2=$operation2\n"
printf "Operation3=$operation3\n"
printf "Operation4=$operation4\n"

#STORING OPERATIONS IN DICTIONARY
operations[0]=$operation1
operations[1]=$operation2
operations[2]=$operation3
operations[3]=$operation4

for (( index=0; index<${#operations[@]}; index++ ))
do
	operationsArr[$index]="${operations[$index]}"
done

echo "READING FROM DICTIONARY:" "${operations[@]}"
echo "READING FROM ARRAY:" "${operations[@]}"

