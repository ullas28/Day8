#!/bin/bash
no_of_indi=10
birth_day[]
echo "The Birthday months and year of #no_of_indi individual : "
for(( indi =1; indi <= no_of_indi; indi++ ))
do
        (( birth_month =$(( RANDOM % 12 + 1)) ))
        (( bithh_year =$(( RANDOM % 2 + 92)) ))
        echo "indi $indi birthday in month = $birth_month year= $birth_year "
        birth_day[$birth_month]=" ${individual}"
       done

for month in ${!birth_day[@]}
do
        echo "The individual who are having bithday in month @month are: "
       for indi in ${birth_day[$birth_month]}
	do
	echo -n "@indi ";
	done
	echo
done
