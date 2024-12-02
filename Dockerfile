FROM golang:1.23.3-alpine3.20 AS build

COPY . /app/
RUN CGO_ENABLED=0 go build -ldflags="-w -s" -o /app/hello-go /app/main.go

FROM scratch
ARG USER_UID=10001
USER ${USER_UID}
COPY --from=build --chmod=755 /app/hello-go /hello-go

ENTRYPOINT ["/hello-go"]

