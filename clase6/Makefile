TARGET = main.pdf

default: $(TARGET)

# Rule to compile .tex files to .pdf
%.pdf: %.tex
	latexmk -pdf $<

clean:
	git clean -fX
