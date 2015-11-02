.PHONY: release


release:
	apm init --theme .atom-build --convert Chromodynamics.tmTheme
	cp .atom-build/styles/*.less styles/
	rm -rf .atom-build
	cat styles/base.less | sed 's/syntax-wrap-guide-color;/syntax-wrap-guide-color;background-color:@syntax-wrap-guide-color !important;/g' > styles/base.less~
	mv styles/base.less~ styles/base.less
