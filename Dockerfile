FROM golang:1.10.4-alpine

// .表示当前路径下所有文件
ADD . /go/src/app

WORKDIR /go/src/app

RUN  go build -v -o /go/src/app/jenkins-app

CMD ["./jenkins-app"]
