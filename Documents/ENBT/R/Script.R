# Lendo os dados, importando como objeto

dados<-read.table("data/fotoquimica.txt", h=T)
View(dados)

# Summaryzando os dados

summary(dados)

# Criando um modelo de anova
ANOVA_twoway<-aov(Fv.Fm~Especie+Face, data=dados)
# Vendo a normalidade dos dados

par(mfrow=c(2,2))
plot(ANOVA_twoway)
require(MASS)
par(mfrow=c(1,1))
boxcox(ANOVA_twoway)

# Não é necessário a transformação dos dados
anova(ANOVA_twoway)

# Como não houve diferença entre as faces, só entre as
# espécies, irei simplificar o modelo

ANOVA1_twoway<-aov(Fv.Fm~Especie, data=dados)
anova(ANOVA1_twoway)

# O valor de p < 0.001 (2.022e-06)
# Aplicando o teste de Tukey

require(agricolae)
anova_agricolae<-aov(dados$Fv.Fm~dados$Especie, data=dados)
HSD.test(anova_agricolae,"dados$Especie", console=T)

# Fazendo um gráfico
plot(Fv.Fm~Especie, las=1, cex.axis=0.5, xlab="")




