echo "Enter Number "
read num

if [ `expr $num % 2` -eq 0 ]
then
echo "Even"
else
echo "Odd"
fi
