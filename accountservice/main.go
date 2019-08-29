package main

import (
        "fmt"
        "github.com/callistaenterprise/goblog/accountservice/service"
        "github.com/callistaenterprise/goblog/accountservice/dbclient"
        "mark"
)

var appName = "accountservice"

func main() {
        fmt.Printf("Starting %v\n", appName)
        initializeBoltClient()
        service.StartWebServer("6767")
        test()
}

func initializeBoltClient() {
        service.DBClient = &dbclient.BoltClient{}
        service.DBClient.OpenBoltDb()
        service.DBClient.Seed()
}

func test()  {
        mark.TestB()
}
