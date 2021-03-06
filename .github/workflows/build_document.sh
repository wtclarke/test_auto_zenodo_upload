#!/bin/bash
version=`git tag`
echo "${version/./_}"
pandoc document.MD -t html -o - | pandoc -f html --pdf-engine=xelatex -V geometry:margin=1in -V mainfont:Roboto -o "my_built_document_${version/./_}.pdf"