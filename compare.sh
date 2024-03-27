echo "Enter 1st Number"
read a
echo "Enter 2nd Number"
read b
if [ $a -eq $b ]
then
echo $a " is equal to " $b
elif [ $a -gt $b ]
then
echo $a " is greater than " $b
else
echo $a " is less than " $b
fi
