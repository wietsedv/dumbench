push:
	git push
	git subtree push --prefix dist origin gh-pages

fetch:
	scp gpu:projects/dumb/exports/table.json src/
