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

RUN go build -o /hello ./main.go

FROM scratch AS deploy-stage

COPY --from=build-stage /hello /hello

ENTRYPOINT [ "/hello" ]