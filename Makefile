.PHONY: generate-go-protoc

all: generate-go-protoc

generate-go-protoc:
	mkdir -p ./generated/user/
	protoc \
    --go_out=generated/ \
    --go_opt=paths=source_relative \
    --go-grpc_out=generated/ \
    --go-grpc_opt=paths=source_relative \
    --proto_path=./proto/ \
    ./proto/**/*.proto
