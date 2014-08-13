default: gen-all

gen-src:
	ulqui generate-src --from literate-src --to src

gen-html:
	ulqui generate-html --from literate-src --to docs

gen-all: gen-src gen-html


test: gen-src
	busted src/bogo.lua

clean:
	rm -rf \
		docs \
		src
