# goblog
Code samples for the Go microservice blog series


先打一个linux可执行文件
```
进入accountservice目录，然后执行下面命令：
export GOOS=linux
go build -o accountservice-linux-amd64
export GOOS=darwin
```
然后打一个镜像：
```
进入根目录，然后执行下面的命令：
docker build -t someprefix/accountservice accountservice/
```

测试：
```
curl http://localhost:6767/accounts/10000
```

新建一个docker-compose.yml
启动

