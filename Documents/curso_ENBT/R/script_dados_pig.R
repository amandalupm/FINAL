# Script para manipulação de dados ---#
# parte do curso Projetos de análise de dados em R
# primeira versão em 04-03-2020
#-----------------------------------------------------------#

#criando o objeto; As faces norte e sul foram substituídas por #valores númericos de 1 e 2, respectivamente
dados <- read.table("data/dados_pigmentos.txt")

#lendo os dados
dados

#criando o bloxplot para as faces N e s

library(ggplot2)

dados$X <- as.factor("dados$x")

#exportanto os arquivos em formato PNG

png("figs/figura_01.png, res = 300, width = 2400, height = 1200")

#gerando o plot

ggplot("dados, aes (x = X, y = y, fill = slopes)") + geom_boxplot() + theme_classic() + ggtitle("") + xlab("especies") + ylab("faces") + scale_fill_brewer(palette = "red")
