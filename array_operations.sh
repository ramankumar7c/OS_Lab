echo "Enter n"
read n
declare -a arr
i=0
while [ $i -lt $n ]
do
read arr[$i]
i=`expr $i + 1`
done
min=10000
max=0
avg=0
i=0
while [ $i -lt $n ]
do
if [ ${arr[$i]} -lt $min ]
then
min=`expr ${arr[$i]}`
fi
if [ ${arr[$i]} -gt $max ]
then
max=`expr ${arr[$i]}`
fi
avg=`expr $avg + ${arr[$i]}`
i=`expr $i + 1`
done
avg=`expr $avg / $n`
echo "Min"
echo $min
echo "Max"
echo $max
echo "Avg"
echo $avg
