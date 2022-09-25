
.PHONY: all test clean build

all: clean test build

build:
	go build -o bin/sleep cmd/sleep/main.go
	chmod +x bin/sleep

run:
	go run *.go -tags buildChecks

clean:
	go clean -cache -testcache -modcache
	rm -rf bin/