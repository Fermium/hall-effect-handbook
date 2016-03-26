#!bin/bash

echo "Build started"
rm  Exports/Hall_Handbook.pdf

echo "Building pdf..."
pandoc Hall_Handbook.md --latex-engine=xelatex --filter=pandoc-eqnos -o Exports/Hall_Handbook.pdf
echo "Pdf built"

echo "COMPLETE!"
#open  Exports/Hall_Handbook.pdf
