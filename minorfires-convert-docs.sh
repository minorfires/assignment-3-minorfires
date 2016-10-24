#!/bin/bash

# Declare input argument as a variable
INPUT_FILENAME=$1

# Convert markdown to HTML
pandoc -o $INPUT_FILENAME.html sample.md
# Convert markdown to DOCX
pandoc -o $INPUT_FILENAME.docx sample.md
# Convert markdown to ODT
pandoc -o $INPUT_FILENAME.odt sample.md
# Convert markdown to PDF
pandoc -o $INPUT_FILENAME.pdf sample.md

# Make the command line read "Converted INPUT-FILENAME to HTML, DOCX, ODT, PDF
echo "Converted $INPUT_FILENAME to HTML, DOCX, ODT, PDF"