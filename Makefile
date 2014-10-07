all: highload.pdf


highload.pdf: highload.tex
	rm -fr obj
	mkdir obj
	cd obj \
            && pdflatex -output-format pdf ../$< \
            && pdflatex -output-format pdf ../$< \
            && mv $@ ..
	rm -fr obj

evince: highload.pdf
	evince $<
