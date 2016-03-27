#!bin/bash

echo "Build started"
rm  Exports/Hall_Handbook.pdf

echo "Building Pdf..."
pandoc Hall_Handbook.md --latex-engine=xelatex --filter=pandoc-eqnos -o Exports/Hall_Handbook.pdf
echo "Pdf built"

echo "Building Html..."
rm Exports/Hall_Handbook.html
pandoc Hall_Handbook.md --latex-engine=xelatex --filter=pandoc-eqnos --mathjax -s  -o Exports/Hall_Handbook.html
cp Media/* Exports/Media/
echo "Html built"


echo "COMPLETE!"
#open  Exports/Hall_Handbook.pdf
