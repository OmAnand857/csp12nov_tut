set terminal png
set output 'question4_c.png'
set datafile separator ','
set title 'Age vs Cholesterol'
set xlabel 'Age'
set ylabel 'Cholesterol'
set xrange [0:100]
set style data linespoints
set pointsize 0.3
plot 'question4_c.csv' using 1:5 ti col pt 7 lc "blue"
