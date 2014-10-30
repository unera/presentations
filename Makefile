all: highload.pdf


%.pdf: %.tex
	rm -fr obj
	mkdir obj
	cd obj \
	    && cp -r ../img . \
            && pdflatex -output-format pdf ../$< \
            && mv $@ ..
	rm -fr obj


evince-hl: highload.pdf
	evince highload.pdf

evince-db: db.pdf
	evince db.pdf
