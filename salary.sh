calculate_gross_salary() {
    basic_salary=$1
    if [ $basic_salary -lt 5000 ]; then
        hra=$(echo "scale=2; $basic_salary * 0.10" | bc)
        da=$(echo "scale=2; $basic_salary * 0.90" | bc)
    else
        hra=600
        da=$(echo "scale=2; $basic_salary * 0.95" | bc)
    fi
    gross_salary=$(echo "scale=2; $basic_salary + $hra + $da" | bc)
    echo "Gross Salary: $gross_salary"
}

echo "Enter basic salary: "
read basic_salary
calculate_gross_salary $basic_salary
