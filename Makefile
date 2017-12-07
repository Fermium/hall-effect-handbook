# DEFAULT AND COMPREHENSIVE TARGETS
all: clean pdf html docx
	@echo "All built!"
bookdown_all: clean bookdown_pdf bookdown_epub bookdown_html
	@echo "All build!"
bookdown_all_compress: clean compress_bookdown_pdf bookdown_epub  bookdown_html
	@echo "All build!"
all_compress: clean compress_pdf html docx
		@echo "All buil!"

# CLEANING TARGET
clean:
	@rm -r -f Exports

clean_html:
	@rm -f Exports/Hall_Handbook.html
	@rm -r -f Exports/Assets

# DEPENDENCIES

dir:
	@mkdir -p Exports

# TARGETS

pdf: dir
	@echo "Building Pdf..."
	@pandoc Hall_Handbook*.md  --template=Assets/Template/template.latex --latex-engine xelatex --filter pandoc-fignos --filter pandoc-eqnos --filter pandoc-tablenos --toc -o Exports/Hall_Handbook.pdf
	@echo "Pdf built"

html: dir
	@echo "Building Html..."
	@mkdir -p Exports/Assets/
	@pandoc Hall_Handbook*.md --filter pandoc-fignos --filter pandoc-eqnos --filter pandoc-tablenos --mathjax -s -S --toc -c Assets/Template/style.css  -o Exports/Hall_Handbook.html
	@cp -r Assets/* Exports/Assets/
	@sed -i".tmp" "/includegraphics/d" Exports/Hall_Handbook.html && rm Exports/Hall_Handbook.html.tmp
	@echo "Html built"

docx: dir
	@echo "Building Docx..."
	@pandoc Hall_Handbook*.md --filter pandoc-fignos --filter pandoc-eqnos --filter pandoc-tablenos -o Exports/Hall_Handbook.docx
	@echo "Docx built"

bookdown_html: dir
	@Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')"
	@mkdir ./Exports/Hall_Handbook
	@mv _book/* ./Exports/Hall_Handbook/
	@rm -R _book/


bookdown_pdf: dir
	@Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_book')"
	@cp _book/_main.pdf ./Exports/Hall_Handbook.pdf

bookdown_epub: dir
	@Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::epub_book')"
	@cp _book/_main.epub ./Exports/Hall_Handbook.epub
compress_bookdown_pdf : bookdown_pdf
	@echo "Compressing PDF"
	@cp Exports/Hall_Handbook.pdf Exports/Hall_Handbook_hires.pdf
	@rm Exports/Hall_Handbook.pdf
	@gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dDownsampleColorImages=true -dColorImageResolution=150 -dNOPAUSE  -dBATCH -sOutputFile=Exports/Hall_Handbook.pdf Exports/Hall_Handbook_hires.pdf


# POSTPROCESSING TARGETS
compress_pdf: pdf
	@echo "Compressing PDF"
	@cp Exports/Hall_Handbook.pdf Exports/Hall_Handbook_hires.pdf
	@rm Exports/Hall_Handbook.pdf
	@gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dDownsampleColorImages=true -dColorImageResolution=150 -dNOPAUSE  -dBATCH -sOutputFile=Exports/Hall_Handbook.pdf Exports/Hall_Handbook_hires.pdf


# "OPEN" TARGETS (ONLY ON MAC)
open_pdf: pdf
	@open Exports/Hall_Handbook.pdf

open_html: html
	open Exports/Hall_Handbook.html

open_docx: docx
	@open Exports/Hall_Handbook.docx

open_all: open_pdf open_html open_docx
