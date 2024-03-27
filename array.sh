declare -a arr
arr[0]=1
arr[1]=2
arr[2]=3
i=0
while [ $i -lt 3 ]
do
echo ${arr[$i]}
i=`expr $i + 1`
done
