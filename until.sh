num=10
start=1
until [ $start -gt $num ]
do
echo $start
start=`expr $start + 1`
done
