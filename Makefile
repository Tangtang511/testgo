BIN=bin

build:
	go build -v -o $(BIN)/testgo .

container:
	docker build -t testgo:dev .