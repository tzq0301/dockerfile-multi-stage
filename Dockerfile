# syntax=docker/dockerfile:1

FROM golang:1.21 AS build-stage
WORKDIR /src
COPY <<EOF ./main.go
package main

import "fmt"

func main() {
  fmt.Println("hello, world")
}
EOF
RUN CGO_ENABLED=0 GOOS=linux go build -o /hello ./main.go

FROM scratch AS export-stage
COPY --from=build-stage /hello /hello

FROM scratch AS deploy-stage
COPY --from=build-stage /hello /hello
ENTRYPOINT [ "/hello" ]
