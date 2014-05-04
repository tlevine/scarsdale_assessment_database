library(sqldf)

query <- function(sql) {
  .connection <- dbConnect(MySQL(),
                           user = 'public',
                           password = 'public',
                           dbname = 'scarsdale',
                           host = 'tlevine.the-nsa.org')
  sqldf(sql, connection = .connection)
}
