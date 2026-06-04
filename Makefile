all:	dist/css/styles.css dist/js/scripts.js

dist/css/styles.css:	$(wildcard src/scss/*.scss) $(wildcard src/scss/*/*.scss)
	npm run build:scss

dist/js/scripts.js:	$(wildcard src/js/*.js)
	npm run build:scripts

clean: 
	npm run clean

install:
	npm install

.PHONY:	install clean
