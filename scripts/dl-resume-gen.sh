# Required Setup for Mac:
# brew install pandoc
# brew install --cask basictex
# ln -s -v /Library/TeX/texbin/pdflatex /usr/local/bin/pdflatex

# Generate DOCX File
pandoc -f gfm \
       -t docx \
       -o GrantICarroll.docx \
       programming/resume.md

# Generate PDF File
# Addtional formatting can be added with -V
# https://learnbyexample.github.io/customizing-pandoc/
pandoc -f gfm \
       -t pdf \
       -o GrantICarroll.pdf \
       -V geometry:margin=2cm \
       programming/resume.md