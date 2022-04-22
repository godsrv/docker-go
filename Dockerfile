FROM golang:1.18
# 作者lipper
MAINTAINER  "lipper"
RUN mkdir /app
# 设置工作区间
WORKDIR /app

COPY . .

RUN go build -o main ./server.go

EXPOSE 8080

CMD /app/main