module github.com/mark-libn/goblog

go 1.12

require (
	github.com/boltdb/bolt v1.3.1
	github.com/callistaenterprise/goblog/accountservice/dbclient v0.0.0
	github.com/callistaenterprise/goblog/accountservice/model v0.0.0
	github.com/callistaenterprise/goblog/accountservice/service v0.0.0
	github.com/gorilla/mux v1.7.3
	github.com/smartystreets/goconvey v0.0.0-20190731233626-505e41936337
	github.com/stretchr/testify v1.4.0
	gopkg.in/h2non/gock.v1 v1.0.15
)

replace github.com/callistaenterprise/goblog/accountservice/model => /Users/libn/goworkspace/src/goblog/p7/model

replace github.com/callistaenterprise/goblog/accountservice/dbclient => /Users/libn/goworkspace/src/goblog/p7/dbclient

replace github.com/callistaenterprise/goblog/accountservice/service => /Users/libn/goworkspace/src/goblog/p7/service
