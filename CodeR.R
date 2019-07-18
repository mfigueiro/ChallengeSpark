### CODE IN R ###

####### load packages ######

packageVersion("sparklyr") ## new version
library(sparklyr)
library(data.table)
library(dplyr)
library(tidyverse)

####### Connect to local Spark instance #######
#spark_available_versions()
#spark_install("2.4.3")
#spark_installed_versions()

sc <- spark_connect(master = "local", 
                    spark_home= Sys.getenv("SPARK_HOME"),
                    version = "2.4.3")

spark_web(sc)

####### read the dataset into R #######

#OBS. A limpeza dos dados foi feita � m�o, usando o Excel.

ks_tbl <- read.csv("ks-projects-201801.csv", quote= "",
                   fill=TRUE,
                   header=TRUE, stringsAsFactors=FALSE)
                   
# basic check to see the data has been properly read

str(ks_tbl)
names(ks_tbl)
head(ks_tbl)
dim(ks_tbl) ### 13 variables
class(ks_tbl)
View(ks_tbl)

# pushing the data into Spark DataFrame

ks_proj_tbl <- copy_to(sc, ks_tbl, "ks_projects", overwrite = TRUE)

# check if the table is available on Spark

src_tbls(sc)

####### Data analysis and save the results #######

# 1) Quantidade de projetos por pa�s;

res1 <- table(ks_tbl$country)
write.csv(res1,"mytable1.csv",quote=F)

# 2) Quais as 3 categorias com maior quantidade de projetos aprovados, 
#e quanto foi arrecadado em projetos aprovados por cada uma destas 
#3 categorias

res2 <- table(ks_tbl$category)
x <- sort(res2,decreasing=T)
write.csv(x,"mytable2.csv",quote=F)

# 3) Para os projetos bem sucedidos do pa�s "US" qual o valor em d�lares 
#foi arrecadado acima das metas estabelecidas.

write.csv(res3,"mytable2.csv",quote=F)
spark_disconnect(sc)
