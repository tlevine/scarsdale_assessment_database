library(sqldf)
.connection <- dbConnect(MySQL(),
                        user = 'public',
                        password = 'public',
                        dbname = 'scarsdale',
                        host = 'tlevine.the-nsa.org')

query <- function(sql) sqldf(sql, connection = .connection)
