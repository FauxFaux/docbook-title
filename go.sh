#!/bin/sh
rm -rf html
xsltproc --output html/ --xinclude /usr/share/xml/docbook/stylesheet/docbook-xsl/htmlhelp/htmlhelp.xsl usersBook.xml

