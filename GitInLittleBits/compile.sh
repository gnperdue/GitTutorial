#!/bin/sh

# Don't think we need to compile individual docs...
# asciidoc -b html5 -a data-uri -a toc2 lesson001.adoc 
# asciidoc -b html5 -a data-uri -a toc2 lesson002.adoc 
asciidoc -b html5 -a data-uri -a toc2 GitInLittleBits.adoc 

# a2x --fop -f pdf GitInLittleBits.adoc
a2x $1 -f pdf GitInLittleBits.adoc



