GOBIN ?= $(shell go env GOPATH)/bin

.PHONY: lint
lint: $(GOBIN)/staticcheck
	staticcheck ./...

$(GOBIN)/staticcheck:
	go install honnef.co/go/tools/cmd/staticcheck@latest
