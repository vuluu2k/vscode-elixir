.PHONY: deps build publish release clean

deps:
	npm install

build:
	npm run build

publish:
	npx ovsx publish

release: deps build publish

clean:
	rm -rf node_modules
	rm -f *.vsix
	rm -rf out
