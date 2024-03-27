echo "Enter mark of the student"
read mark
if [ $mark -ge 90 ]
then
echo "Grade: O"
elif [ $mark -ge 80 ]
then
echo "Grade: E"
elif [ $mark -ge 70 ]
then
echo "Grade: A"
elif [ $mark -ge 60 ]
then
echo "Grade: B"
elif [ $mark -ge 50 ]
then
echo "Grade: C"
elif [ $mark -ge 40 ]
then
echo "Grade: D"
else
echo "Grade: F"
fi
