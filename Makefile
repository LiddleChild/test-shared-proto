.PHONY: generate-go-protoc

all: clean generate-go-protoc

clean:
	rm -rf generated

generate-go-protoc:
	mkdir -p ./generated/
	protoc \
    --go_out=./generated/ \
    --go_opt=paths=source_relative \
    --go-grpc_out=./generated/ \
    --go-grpc_opt=paths=source_relative \
    --proto_path=./proto \
    ./proto/**/*.proto
