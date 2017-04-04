#!/bin/zsh
set -u

F=$1

xsltproc --output html/ --xinclude docbook-xsl/htmlhelp/htmlhelp.xsl "$F"  2>/dev/null || exit 2

for i in {1..50}; do
    if xsltproc --output html/ --xinclude docbook-xsl/htmlhelp/htmlhelp.xsl $F 2>&1 | fgrep 'Request for title of element with no title:'; then
        echo "broke at step $i"
        exit 0
    fi
done
exit 1
