.PHONY: clean

%.pdf: %.tex $(DEPENDS)
	rubber -f --pdf -s $<
	rubber-info --check $<
	rm -rf *.aux *.bbl *.blg *.log *.toc *.snm *.out *.nav tags
clean:
	rm -rf *.pdf
