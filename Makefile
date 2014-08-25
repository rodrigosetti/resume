OUTPUTDIR=generated

PANDOC=${HOME}/.cabal/bin/pandoc --data-dir=data

.PHONY: all
all: gen/resume.html gen/resume.pdf gen/resume.docx gen/resume.txt

gen/resume.html: README.md
	${PANDOC} $< -t html5 --template=github -o $@

gen/resume.pdf: README.md
	${PANDOC} -V geometry:margin=1in $< -o $@

gen/resume.docx: README.md
	${PANDOC} $< -o $@

gen/resume.txt: README.md
	${PANDOC} $< --to plain -o $@

clean:
	rm -f gen/{*.html,*.pdf,*.docx,*.txt}

