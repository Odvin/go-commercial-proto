protoOrder:
	rm -f golang/order/*.go
	protoc --proto_path=order --go_out=./golang/order --go_opt=paths=source_relative \
	--go-grpc_out=./golang/order --go-grpc_opt=paths=source_relative \
	order/*.proto

.PHONY: protoOrder