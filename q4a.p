set terminal png
set output 'question4_a.png'
set title  'gender vs number of people having heart disease.'
set xlabel 'gender'
set ylabel 'number of people'
set style data histogram
set style fill solid
set key outside
plot 'q4a.dat' using 2:xtic(1) ti col lc 'orange','' u 3 ti col lc 'blue'
