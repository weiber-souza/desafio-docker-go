FROM golang:1.20.2-alpine3.17 as builder

WORKDIR /usr/app/

COPY fullcycle.go .

RUN go mod init fullcycle-rocks && \
    go build

# This image is most useful in the context of building base images (such as debian and busybox) 
# or super minimal images (that contain only a single binary and whatever it requires, such as hello-world).
FROM scratch

WORKDIR /

COPY --from=builder /usr/app/fullcycle-rocks .

EXPOSE 8080

ENTRYPOINT ["/fullcycle-rocks"]