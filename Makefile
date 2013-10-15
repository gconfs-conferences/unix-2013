slides.pdf: slides/slides.md
	pandoc -t beamer \
	    slides/slides.md \
	    --include-in-header slides/header.tex \
	    --slide-level 3 \
	    -V theme:Warsaw -o slides.pdf

slides: slides.pdf

clean:
	rm -f slides.{aux,nav,log,out,pdf,tex,toc,snm}
	rm -f slides/slides.{aux,nav,log,out,pdf,tex,toc,snm}

.PHONY: slides clean
