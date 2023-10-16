# Instalando pacotes necessários

install.packages('DBI')
install.packages('RMySQL')
install.packages('dplyr')
install.packages('ggplot2')

library(DBI)
library(RMySQL)
library(dplyr)
library(ggplot2)

# Conectando ao banco de dados

con <- dbConnect(RMySQL::MySQL(),
                dbname = "nome_do_banco_de_dados",
                host = "localhost",
                port = 3306,
                user = "username",
                password = "senha")

# Executando uma consulta SQL
resultado <- dbGetQuery(con, "SELECT * FROM tabela")


# Fechando a conexão
dbDisconnect(con)
