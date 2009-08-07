eot: GoudyBookletter1911.eot
ttf: GoudyBookletter1911.ttf
otf: GoudyBookletter1911.otf

# Download Goudy Bookletter 1911 from
# http://home.comcast.net/~crudfactory/cf3/gb1911.xhtml

GoudyBookletter1911--2008.02.06.zip:
	curl -O http://home.comcast.net/%7Ecrudfactory/cf3/fonts/GoudyBookletter1911--2008.02.06.zip

GoudyBookletter1911.otf: GoudyBookletter1911--2008.02.06.zip
	unzip GoudyBookletter1911--2008.02.06.zip

# http://code.google.com/p/ttf2eot/
%.eot: %.ttf
	ttf2eot < $< > $@

# http://fontforge.sourceforge.net/scripting-tutorial.html
%.ttf: %.otf
	./convert.pe $<
