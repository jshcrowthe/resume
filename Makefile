all: index.html index.pdf

index.html: index.md style.css
	pandoc --standalone -c style.css --from markdown --to html -o index.html index.md

index.pdf: index.html
	wkhtmltopdf index.html index.pdf

clean:
	rm -f index.html index.pdf