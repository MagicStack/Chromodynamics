.PHONY: release


release:
	apm init --theme .atom-build --convert Chromodynamics.tmTheme
	cp .atom-build/styles/*.less atom/
	rm -rf .atom-build
	cat atom/base.less | sed 's/syntax-wrap-guide-color;/syntax-wrap-guide-color;background-color:@syntax-wrap-guide-color !important;/g' > atom/base.less~
	mv atom/base.less~ atom/base.less
