cat heart.csv | awk -F',' '$8<1 && $2<1 {print}'|wc -l >>q4a.dat
cat heart.csv | awk -F',' '$8<1 && $2>0 {print}'|wc -l >>q4a.dat
