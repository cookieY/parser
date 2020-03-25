{
	  mv go.mod go.mod
	  mv go.sum1 go.sum
	  GO111MODULE=on go test -p 1 -race -covermode=atomic -coverprofile=coverage.txt -coverpkg=./... ./...
} || {
	  mv go.mod go.mod
	  mv go.sum go.sum1
}

mv go.mod go.mod
mv go.sum go.sum1
