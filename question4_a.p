
set datafile separator ","
set style data histogram
set style fill solid
set boxwidth 0.5
set xlabel "Gender"
set ylabel "Number of people with Heart Disease"
set title "Heart Disease by Gender"


set table "counts.dat"
plot "< awk -F, '$8 == 1 {print $2}' heart.csv | sort | uniq -c" using 1:2 title "Heart Disease Count" with histogram


plot "counts.dat" using 2:xtic(1) title "Heart Disease Count"

