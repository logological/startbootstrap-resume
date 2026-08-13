all:	dist/css/styles.css dist/js/scripts.js | install

dist/css/styles.css:	$(wildcard src/scss/*.scss) $(wildcard src/scss/*/*.scss) scripts/build-scripts.js scripts/render-scripts.js
	npm run build:scss

dist/js/scripts.js:	$(wildcard src/js/*.js) scripts/build-scss.js scripts/render-scss.js
	npm run build:scripts

clean: 
	npm run clean

install:
	if [ 0"$$OFFLINE" -ne 1 ]; then npm install;fi

.PHONY:	install clean
