# Script para manipulação de dados ---#
# parte do curso Projetos de análise de dados em R
# primeira versão em 04-03-2020
#-----------------------------------------------------------#

#criando o objeto; As faces norte e sul foram substituídas por #valores númericos de 1 e 2, respectivamente
dados <- read.table("data/tabela_dados.txt", h=T)
View(dados)

#lendo os dados
dados

#criando o bloxplot para as faces N e s

library(ggplot2)

dados$X <- as.factor(dados$x)

#gerando o plot

ggplot(dados, aes (x = x, y = y, fill = face)) + geom_boxplot() + theme_classic() + ggtitle("") + xlab("especies") + ylab("valores de carotenoides")


pigm_ANOVA_twoway<-aov(y~face, data=dados)
anova(pigm_ANOVA_twoway)

# O valor de p= 0.006 para as faces

