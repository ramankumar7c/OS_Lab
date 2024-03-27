echo "Enter 1st Number : "
read x
echo "Enter 2nd Number : "
read y
x=$((x+y))
y=$((x-y))
x=$((x-y))

echo "After swapping 1st Number : "$x
echo "After swapping 2nd Number : "$y
