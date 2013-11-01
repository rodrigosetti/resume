OUTPUTDIR=generated

.PHONY: all
all: gen/resume.html gen/resume.pdf gen/resume.docx gen/resume.txt

gen/resume.html: README.md
	pandoc $< --standalone -o $@

gen/resume.pdf: README.md
	pandoc $< -o $@

gen/resume.docx: README.md
	pandoc $< -o $@

gen/resume.txt: README.md
	pandoc $< --to plain -o $@

clean:
	rm -f gen/{*.html,*.pdf,*.docx,*.txt}

