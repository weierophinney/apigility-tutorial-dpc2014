#!/bin/sh

INPUT_FILE=phpnw14.rst
OUTPUT_FILE=2014-10-03-phpnw-apigility-tutorial.pdf

rst2pdf ${INPUT_FILE} \
    -b1 \
    --fit-background-mode=scale \
    --smart-quotes=1 \
    --fit-literal-mode=overflow \
    -s borland.style,style-main.style \
    --output=../${OUTPUT_FILE} \
    --strip-elements-with-class=note \
    --strip-elements-with-class=handout \
    $@
