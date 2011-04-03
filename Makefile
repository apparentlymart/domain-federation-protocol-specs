
all: build/dfp.html build/dfp.txt

clean:
	rm -rf build

prepare:
	mkdir -p build

build/dfp.html: prepare dfp.xml
	xml2rfc dfp.xml build/dfp.html

build/dfp.txt: prepare dfp.xml
	xml2rfc dfp.xml build/dfp.txt

