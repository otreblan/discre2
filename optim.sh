#!/bin/sh
#Mi script para optimizar pdf's de LaTeX
if [[ ${1} =~ .*\.pdf ]]
then
	PDF_NAME=$(echo ${1} | sed "s/\(.*\)\.pdf/\1/")
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dNOPAUSE -dQUIET -dBATCH -sOutputFile=${PDF_NAME}-compressed.pdf ${PDF_NAME}.pdf
else
	echo "Nel"
	exit 1
fi
