all:	dist/css/styles.css dist/js/scripts.js

dist/css/styles.css:	install
	npm run build:scss

dist/js/scripts.js:	install
	npm run build:scripts

clean: 
	npm run clean

install:
	if [ 0"$$OFFLINE" -ne 1 ]; then npm install;fi

.PHONY:	install clean
