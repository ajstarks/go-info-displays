# Go for Information Displays
![](page1.png)

## Colophon

This deck uses [Fira Sans, Fira Mono](https://en.wikipedia.org/wiki/Fira_Sans), and 
[Charter](https://en.wikipedia.org/wiki/Bitstream_Charter).

The command line to generate the deck

	$ pdfdeck -pagesize 1920,1080 -mono FiraMono-Regular -sans FiraSans-Regular -serif Charter\ Regular goinfo.xml

The fonts are stored in $DECKFONTS, generated from TrueType files with the ```makefont``` utility 
from the [gofpdf](https://github.com/jung-kurt/gofpdf) package.

	$ cd $DECKFONTS
	$ makefont -embed /path/to/ttf-file
	

