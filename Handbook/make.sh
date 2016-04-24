#!bin/bash

echo "Build started"
rm  Exports/Hall_Handbook.pdf

echo "Building Pdf..."
pandoc Hall_Handbook.md --latex-engine=xelatex --filter pandoc-fignos --filter=pandoc-eqnos --filter pandoc-tablenos --toc -o Exports/Hall_Handbook.pdf
echo "Pdf built"

echo "Building Html..."
rm Exports/Hall_Handbook.html
rm Exports/Media/*
pandoc Hall_Handbook.md --filter pandoc-fignos --filter=pandoc-eqnos --filter pandoc-tablenos --mathjax -s -S --toc -H Media/header.html -c Media/style.css  -o Exports/Hall_Handbook.html
cp Media/* Exports/Media/
echo "Html built"


echo "Building Docx..."
pandoc Hall_Handbook.md --filter pandoc-fignos --filter=pandoc-eqnos --filter pandoc-tablenos -o Exports/Hall_Handbook.docx
echo "Docx built"


#echo "Building pdf from html..."
#cp Exports/Hall_Handbook.html ./
#phantomjs rasterize.js Hall_Handbook.html Hall_Handbook_fromHTML.pdf "A4"
#mv Hall_Handbook_fromHTML.pdf Exports/
#rm Hall_Handbook.html
#echo "Pdf from html built"

echo "COMPLETE!"
#open  Exports/Hall_Handbook.pdf
