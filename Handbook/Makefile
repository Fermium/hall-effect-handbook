dir:
	@mkdir -p Exports

pdf: dir
	@echo "Building Pdf..."
	@pandoc Hall_Handbook*.md  --template=Assets/Template/template.latex --latex-engine xelatex --filter pandoc-fignos --filter pandoc-eqnos --filter pandoc-tablenos --toc -o Exports/Hall_Handbook.pdf
	@echo "Pdf built"
  
open_pdf: pdf
	@open Exports/Hall_Handbook.pdf

clean_html:
	@rm -f Exports/Hall_Handbook.html
	@rm -r -f Exports/Assets
	
html: dir 
	@echo "Building Html..."
	@mkdir -p Exports/Assets/
	@pandoc Hall_Handbook*.md --filter pandoc-fignos --filter=pandoc-eqnos --filter pandoc-tablenos --mathjax -s -S --toc -c Assets/Template/style.css  -o Exports/Hall_Handbook.html
	@cp -r Assets/* Exports/Assets/
	@sed -i".tmp" "/includegraphics/d" Exports/Hall_Handbook.html && rm Exports/Hall_Handbook.html.tmp
	@echo "Html built"
  


open_html: html  
	open Exports/Hall_Handbook.html



docx: dir 
	@echo "Building Docx..."
	@pandoc Hall_Handbook*.md --filter pandoc-fignos --filter=pandoc-eqnos --filter pandoc-tablenos -o Exports/Hall_Handbook.docx
	@echo "Docx built"


open_docx: docx
	@open Exports/Hall_Handbook.html
	
open_all: open_pdf open_html open_docx
    

all: clean pdf html docx
	@echo "All buil!"



clean: 
	@rm -r -f Exports
