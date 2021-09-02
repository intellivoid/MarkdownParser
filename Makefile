clean:
	rm -rf build

build:
	mkdir build
	ppm --no-intro --compile="src/MarkdownParser" --directory="build"

update:
	ppm --generate-package="src/MarkdownParser"

install:
	ppm --no-intro --no-prompt --fix-conflict --install="build/net.intellivoid.markdown_parser.ppm"