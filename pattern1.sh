echo "Enter number of rows: "
read rows

coeff=1
i=0
while [ $i -le $rows ]
do
	space=1
	p=` expr $rows - $i `
	while [ $space -le $p ]
	do
		echo -n " "
		space=` expr $space + 1 `
	done
	j=0
	while [ $j -le $i ]
	do
		if [ $j -eq 0 -o $i -eq 0 ]
		then
			coeff=1
		else
			coeff=$((coeff*(i-j+1)/j))
		fi
		echo -n $coeff " "
		j=` expr $j + 1 `
	done
	echo
	i=` expr $i + 1 `
done
