OUTPUTDIR=generated

.PHONY: all
all: gen/index.html gen/index.pdf gen/index.docx gen/index.txt

gen/index.html: index.md
	pandoc $< --standalone -o $@

gen/index.pdf: index.md
	pandoc $< -o $@

gen/index.docx: index.md
	pandoc $< -o $@

gen/index.txt: index.md
	pandoc $< --to plain -o $@

clean:
	rm -f gen/{*.html,*.pdf,*.docx,*.txt}

