#!/bin/bash


if [ $# -eq 0 ]; then
  echo "Usage: $0 <input-file>"
  exit 1
fi


INPUT_FILE=$1


OUTPUT_FILE="output.tex"


echo "\\documentclass{article}" > $OUTPUT_FILE
echo "\\usepackage{longtable}" >> $OUTPUT_FILE
echo "\\usepackage{caption}" >> $OUTPUT_FILE
echo "\\captionsetup{labelformat=empty}" >> $OUTPUT_FILE
echo "\\title{Data Analysis Report}" >> $OUTPUT_FILE 
echo "\\author{Om Anand}" >> $OUTPUT_FILE  
echo "\\date{\\today}" >> $OUTPUT_FILE  
echo "\\usepackage{geometry}">> $OUTPUT_FILE
echo "\\geometry{margin=2cm}">> $OUTPUT_FILE
echo "\\begin{document}" >> $OUTPUT_FILE


echo "\\maketitle" >> $OUTPUT_FILE
echo "\\newpage" >> $OUTPUT_FILE


echo "\\section*{Data Table}" >> $OUTPUT_FILE


echo "\\begin{longtable}{|c|c|c|c|c|c|c|c|c|c|c|}" >> $OUTPUT_FILE
echo "\\hline" >> $OUTPUT_FILE
echo "\\textbf{trestbps} & \\textbf{chol} & \\textbf{fbs} & \\textbf{restecg} & \\textbf{thalach} & \\textbf{exang} & \\textbf{oldpeak} & \\textbf{slope} & \\textbf{ca} & \\textbf{thal} & \\textbf{target} \\\\" >> $OUTPUT_FILE
echo "\\hline" >> $OUTPUT_FILE



while IFS=, read -r trestbps chol fbs restecg thalach exang oldpeak slope ca thal target; do
  echo "$trestbps & $chol & $fbs & $restecg & $thalach & $exang & $oldpeak & $slope & $ca & $thal & $target \\\\" >> $OUTPUT_FILE
  echo "\\hline" >> $OUTPUT_FILE
done < $INPUT_FILE


echo "\\end{longtable}" >> $OUTPUT_FILE
echo "\\end{document}" >> $OUTPUT_FILE

echo "LaTeX file '$OUTPUT_FILE' has been generated."

