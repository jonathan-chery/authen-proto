# authen-proto

Protocol buffer definitions for the Authen identity provider.

## Module

```
github.com/jonathan-chery/authen-proto
```

## Version

Current stable: `v1.0.0`

## Generated Stubs

This module includes pre-generated `.pb.go` files so consumers do not need `protoc` installed:

- `pkg/proto/authen/v1/common.pb.go`
- `pkg/proto/authen/v1/auth.pb.go`
- `pkg/proto/authen/v1/admin.pb.go`
- `pkg/proto/authen/v1/v1connect/` — ConnectRPC service handlers
- `pkg/proto/authen/v1/*_grpc.pb.go` — gRPC service definitions

## Proto Files

- `proto/authen/v1/common.proto` — Shared types (Identity, Pagination, Empty)
- `proto/authen/v1/auth.proto` — AuthService (Register, Challenge, Verify, Refresh, Revoke, Validate, RotateKey)
- `proto/authen/v1/admin.proto` — AdminService (RegTokens, Keys, Policies, Sessions, ServerInfo, Passport)

## Regenerating Stubs

```bash
make gen
```

Requires `protoc`, `protoc-gen-go`, `protoc-gen-connect-go`, and `protoc-gen-go-grpc` in your `$PATH`.

## Usage

```go
import v1 "github.com/jonathan-chery/authen-proto/pkg/proto/authen/v1"
```

## License

See parent project.
