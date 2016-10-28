#!/bin/bash

# Declare input argument as a variable
INPUT_FILENAME=$1

# Convert markdown to HTML
pandoc -o $INPUT_FILENAME.html $INPUT_FILENAME.md
# Convert markdown to DOCX
pandoc -o $INPUT_FILENAME.docx $INPUT_FILENAME.md
# Convert markdown to ODT
pandoc -o $INPUT_FILENAME.odt $INPUT_FILENAME.md
# Convert markdown to PDF
pandoc -o $INPUT_FILENAME.pdf $INPUT_FILENAME.md

# Make the command line read "Converted INPUT-FILENAME to HTML, DOCX, ODT, PDF
echo "Converted $INPUT_FILENAME to HTML, DOCX, ODT, PDF"