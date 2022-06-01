#!/bin/bash
dict[1]=0
dict[2]=0
dict[3]=0
dict[4]=0
dict[5]=0
dict[6]=0
max_count=10
while(( 10 ))
do
    jac=$(( RANDOM % 10 + 1 ))
    (( dict[$jac]++))

    if(( dict[$jac] == max_count))
    then
        break
    fi
done
most_freq_numb=$(( 1+RANDOM % 6 ))
least_freq_numb=$(( 1+RANDOM % 6 ))

echo " corresponding frequencies are:"
echo ${!dict[@]}
for numb in ${!dict[@]}
do

    if(( dict[$numb] >= dict[$most_freq_numb] ))
    then
        most_freq_numb=$numb
    fi

    if(( dict[$numb] <= dict[$least_freq_numb] ))
    then
        least_freq_numb=$numb
    fi

    echo $number " " ${dictionary[$number]}
done

echo " maximum times is $most_freq_numb"
echo "minimum times is $least_freq_numb"
