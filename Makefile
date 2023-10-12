all: build deploy

build:
	npm run build

deploy:
	git subtree push --prefix dist origin gh-pages
