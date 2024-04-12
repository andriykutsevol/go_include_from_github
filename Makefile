run_service:
	go run .


GOPATH_DIR := $(PWD)
GOPATH_DIR := $(shell dirname $(GOPATH_DIR))

set_vars:
	go env -w GO111MODULE=on
	mkdir -p ../GOPATH
	go env -w GOPATH=$(GOPATH_DIR)/GOPATH
	


install_deps:
	$(MAKE) set_vars
	rm -f go.mod go.sum
	go mod init github.com/andriykutsevol/go_include_from_github
	go mod tidy

build:
	go build

install:
	go install	

test:
	go test -v ./...