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

#OBS. A limpeza dos dados foi feita à mão, usando o Excel.

ks_tbl <- read.csv("ks-projects-201612.csv")      
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

# 1) Quantidade de projetos por país;

res1 <- table(ks_tbl$country)
write.csv(res1,"mytable1.csv",quote=F)

# 2) Quais as 3 categorias com maior quantidade de projetos aprovados, 
#e quanto foi arrecadado em projetos aprovados por cada uma destas 
#3 categorias

res2 <- table(ks_tbl$category)
x <- sort(res2,decreasing=T)
write.csv(x,"mytable2.csv",quote=F)

res21 <- ks_tbl %>% 
        dplyr::group_by(category) %>%
        filter(category %in% c("Product Design","Documentary", "Music")) %>%
        summarize(mean_size = mean(usd.pledged, na.rm = TRUE))
write.csv(res21,"mytable3.csv",quote=F)

# 3) Para os projetos bem sucedidos do país "US" qual o valor em dólares 
#foi arrecadado acima das metas estabelecidas.

res3 <- ks_tbl %>%
        dplyr::filter(country == "US")

####### Disconnecting to local Spark #######
spark_disconnect(sc)

