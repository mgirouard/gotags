.PHONY: build clean install

export GO111MODULE=off

PREFIX := $(HOME)/bin

build: test bin/gotags

clean:
	$(RM) -r bin/

test:
	go test

install: bin/gotags
	cp $< $(PREFIX)

bin/gotags:
	go build -o $@
