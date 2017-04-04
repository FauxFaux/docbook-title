Sometimes,

    xsltproc --output html/ --xinclude docbook-xsl/htmlhelp/htmlhelp.xsl usersBook.xml

... will generate a title containing `???TITLE???`, and sometimes it won't. ~70% of the time?

The error indicates that a `<code/>` element is at fault. The `<code/>` element is generated
by the glossary generator(?), and it's random chance whether it exists when the title code
decides to generate the `???TITLE???` nonsense.

I don't know where this goes, and how it ends up in the output...
