#!/bin/sh

FILE=presentation

rst2pdf ${FILE}.rst \
    -b1 \
    --fit-background-mode=scale \
    --smart-quotes=1 \
    --fit-literal-mode=overflow \
    -s borland.style,style-main.style,style-handout.style \
    --output=${FILE}-handout.pdf \
    --strip-elements-with-class=slide \
    $@
