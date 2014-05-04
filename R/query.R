library(sqldf)
.connection <- dbConnect(MySQL(),
                        user = 'public',
                        password = 'public',
                        dbname = 'scarsdale',
                        host = 'dadawarehouse.thomaslevine.com')

query <- function(sql) sqldf(sql, connection = .connection)