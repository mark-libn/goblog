module accountservice

go 1.12

require github.com/callistaenterprise/goblog/accountservice/service v0.0.0

replace github.com/callistaenterprise/goblog/accountservice/service => /Users/libn/goworkspace/src/goblog/p3/service

require github.com/callistaenterprise/goblog/accountservice/dbclient v0.0.0

replace github.com/callistaenterprise/goblog/accountservice/dbclient => /Users/libn/goworkspace/src/goblog/p3/dbclient

require github.com/callistaenterprise/goblog/accountservice/model v0.0.0

replace github.com/callistaenterprise/goblog/accountservice/model => /Users/libn/goworkspace/src/goblog/p3/model
