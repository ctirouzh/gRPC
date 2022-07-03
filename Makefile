clean: 
	rm pb/*.go
	
gen:
	protoc --proto_path=proto proto/*.proto \
	--go_out=:pb --go-grpc_out=:pb

run: 
	go run main.go

server: 
	go run cmd/server/main.go -port 8080	

test: 
	go test ./... -cover -race

