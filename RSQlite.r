#RSQLite

require(RSQLite)

setwd("C:/data-shell/")
getwd()
setwd("C:/data-shell/")
myDB <- "survey.db"
conn <- dbConnect(drv =SQLite(), dbname =myDB)

dbGetQuery(conn, 
           "SELECT type, 
              tbl_name 
           FROM sqlite_master")

dbListTables(conn)


dbListFields(conn, "Survey")
dbGetQuery(conn, "SELECT count(*) FROM Survey")
dbDisconnect(conn)

QryResult <- dbGetQuery(conn, "Select 
	site.lat, site.long, 
           visited.dated, 
           survey.quant, survey.reading
           FROM Site
           JOIN Visited ON Site.name=Visited.site
           JOIN Survey ON visited.ident=survey.taken
           Where Visited.dated is NOT NULL;")
QryResult$quant <- as.factor(QryResult[,"quant"])
summary(QryResult)