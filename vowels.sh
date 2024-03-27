echo "Enter name "
read name
len=`echo $name | wc -c`
echo "Vowels:"
i=1
while [ $i -lt $len ]
do
ch=`echo $name | cut -c $i`
if [ $ch = "a" -o $ch = "e" -o $ch = "i" -o $ch = "o" -o $ch = "u" ]
then
echo $ch
fi
i=`expr $i + 1`
done
