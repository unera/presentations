all: highload.pdf


highload.pdf: highload.tex
	rm -fr obj
	mkdir obj
	cd obj \
	    && cp -r ../img . \
            && pdflatex -output-format pdf ../$< \
            && mv $@ ..
	rm -fr obj

evince: highload.pdf
	evince $<
