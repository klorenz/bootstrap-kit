COFFEE_FILES = $(wildcard src/*.coffee)


js:
	coffee -c -o lib src/*.coffee

lib/%.js: src/%.coffee
	coffee -c src/%.coffee -o lib

dist/bootstrap-kit.js: index.js $(COFFEE_FILES)
	browserify --transform coffeeify $< > $@


.PHONY: dist/js/bootstrap-kit.js
