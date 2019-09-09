PROJECT_NAME ?= accountservice
SHELL 	 := /bin/bash
executable := accountservice

all: fmt test $(executable)

clean:
	@rm -rf bin/*

$(executable):
	@echo Building $(executable)
	GO111MODULE=on go build -o bin/$@ cmd/$@/main.go

build:
	@echo Building $(executable)
	GOOS=linux GO111MODULE=on go build -o bin/$(executable) cmd/$(executable)/main.go
	docker build -t someprefix/$(executable) -f Dockerfile .

fmt:
	find . -name '*.go' | grep -v vendor | xargs gofmt -w -s

test:
	go test ./...

.PHONY: clean $(executable) build fmt test

build-debug:
	# 编译Linux版 dlv可执行文件
	GOOS=linux GOARCH=amd64 go build -o bin/dlv github.com/go-delve/delve/cmd/dlv
	# 编译Linux版 应用可执行文件
#	GOOS=linux GOARCH=amd64 go build -gcflags "all=-N -l"
	@echo Building $(executable)
	GOOS=linux GO111MODULE=on go build -o bin/$(executable) cmd/$(executable)/main.go
	docker build -t someprefix/$(executable) -f Dockerfile_debug .


# 运行容器
run-debug:
	docker run -p 20000:20000 someprefix/$(executable)

debug:build-debug run-debug