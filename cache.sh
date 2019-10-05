#!/bin/bash

CACHE=cache

mkdir $CACHE

cp -rf \
	*.aux \
	*.auxlock \
	*.fdb_latexmk \
	*.fls \
	*.log \
	*.out \
	*.synctex.gz \
	svg-inkscape \
	tikz \
	*.bbl \
	*.bcf \
	*.blg \
	*.run.xml \
	*.toc \
	$CACHE || true
