set terminal png
set output 'question4_d.png'
set title 'Age_group vs heart-disease'
set xrange [-1.5:1.5]
set yrange [-1.5:1.5]
set style fill solid
set key outside

total = 302.0


age_group_50_60 = 125.0
age_group_60_70 = 80.0
age_group_70_80 = 10.0
age_group_80_90 = 0.0
age_group_90_100 = 0.0

# Calculate percentages for each age group
percentage_50_60 = (age_group_50_60 / total) * 360
percentage_60_70 = (age_group_60_70 / total) * 360
percentage_70_80 = (age_group_70_80 / total) * 360
percentage_80_90 = (age_group_80_90 / total) * 360
percentage_90_100 = (age_group_90_100 / total) * 360

a1=percentage_50_60
a2=a1+percentage_60_70
a3=a2+percentage_70_80 
a4=a3+percentage_80_90
a5=360

set size square
set angle degree

set object 1 circle at 0,0 size 1 arc[0:a1] fc rgb 'blue'
set object 2 circle at 0,0 size 1 arc[a1:a2] fc rgb 'red'
set object 3 circle at 0,0 size 1 arc[a2:a3] fc rgb  'pink'
set object 4 circle at 0,0 size 1 arc[a3:a4] fc rgb 'cyan'
set object 5 circle at 0,0 size 1 arc[a4:a5] fc rgb  'orange'

plot NaN title 'age\_group\_50\_60' with line lc 'blue',NaN title 'age\_group\_60\_70' with line lc 'red',NaN title 'age\_group\_70\_80' with line lc 'pink' ,NaN title 'age\_group\_80\_90' with line lc 'cyan', NaN title 'age\_group\_90\_100' with line lc 'orange'

