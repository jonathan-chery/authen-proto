.PHONY: gen build test clean

gen:
	export PATH=$$PATH:$$(go env GOPATH)/bin && protoc -I=proto --go_out=pkg/proto --go_opt=paths=source_relative --connect-go_out=pkg/proto --connect-go_opt=paths=source_relative --go-grpc_out=pkg/proto --go-grpc_opt=paths=source_relative proto/authen/v1/common.proto proto/authen/v1/auth.proto proto/authen/v1/admin.proto

build:
	go build ./...

test:
	go test ./...

clean:
	rm -f pkg/proto/authen/v1/*.pb.go
	rm -rf pkg/proto/authen/v1/v1connect/
