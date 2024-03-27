num=10
start=1
while [ $start -le $num ]
do
echo $start
start=`expr $start + 1`
done
