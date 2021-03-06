all:  pdf html
	@echo "All build!"
	
all_compress: compress_pdf  html
	@echo "All build!"
	
# CLEANING TARGET
clean:
	@rm -rf Exports

dir:
	@mkdir -p Exports

# TARGETS
html: dir
	@Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')"

pdf: dir
	@Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_book')"

epub: dir
	@Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::epub_book')"
	#@Rscript -e "bookdown::kindlegen()"
	
compress_pdf : pdf
	@echo "Compressing PDF"
	@mv Exports/Hall_Handbook.pdf Exports/Hall_Handbook_hires.pdf
	@gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dDownsampleColorImages=true -dColorImageResolution=150 -dNOPAUSE  -dBATCH -sOutputFile=Exports/Hall_Handbook.pdf Exports/Hall_Handbook_hires.pdf

zip: all
	@zip -r Hall_Handbook.zip Exports
	@mv Hall_Handbook.zip Exports/

# "OPEN" TARGETS (ONLY ON MAC)
open_pdf: pdf
	@open Exports/Hall_Handbook.pdf

open_html: html
	open Exports/index.html


open_all: open_pdf open_html
	
