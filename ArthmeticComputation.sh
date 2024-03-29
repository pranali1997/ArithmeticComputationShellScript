#!/bin/bash -x

declare -A resultDictionary

echo "WELCOME TO ARITHMETIC COMPUTATION AND SORTING PROGRAM"

read -p "Enter the first input: " a
read -p "Enter the second input: " b
read -p "Enter the third input: " c


operation1=$(($a+$b*$c))
operation2=$(($a*$b+$c))
operation3=$(($c+$a/$b))
operation4=$(($a%$b+$c))

echo "first operation" $operation1
echo "second operation" $operation2
echo "third operation" $operation3
echo "fourth operation" $operation4

resultDictionary[0]=$operation1
resultDictionary[1]=$operation2
resultDictionary[2]=$operation3
resultDictionary[3]=$operation4


for i in ${!resultDictionary[@]}
do
	resultArray[$i]=${resultDictionary[$i]}
done

echo "Sorted result in descending order "
for((i=0; i<${#resultArray[@]}; i++))
do
	echo ${resultArray[$i]}
done | sort -nr

echo "Sorted result in ascending order"
for((i=0; i<${#resultArray[@]};i++))
do
	echo ${resultArray[$i]}
done | sort -n
