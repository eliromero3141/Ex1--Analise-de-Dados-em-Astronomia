set.seed(42)

dados <- read.csv(file="dados1.csv", sep = ";", dec = ",", header=TRUE)

pop1 = subset(dados, população == "Population I")
pop2 = subset(dados, população == "Population II")

dist1 = pop1[,1]
dist2 = pop2[,1]

print(paste0("Média 1 = " , round(mean(dist1),2)))
print(paste0("Mediana 1 = " , round(median(dist1),2)))
print(paste0("Desv. Padrão 1 = " , sd(dist1)))

sig_G_1 = 0.7413*(quantile(dist1,0.75,names = FALSE) - quantile(dist1,0.25,names = FALSE))

print(paste0("sig_G_1 = ", sig_G_1))

cat("\n")

print(paste0("Média 2 = " , round(mean(dist2),2)))
print(paste0("Mediana 2 = " , round(median(dist2),2)))
print(paste0("Desv. Padrão 2 = " , sd(dist2)))

sig_G_2 = 0.7413*(quantile(dist2,0.75,names = FALSE) - quantile(dist1,0.25,names = FALSE))

print(paste0("sig_G_2 = ", sig_G_2))


par(mfrow=c(2,2))

hist(dist1,main="Distance to the LMC: Population I",xlab=' DM (in magnitudes)',col='darkblue')

boxplot(dist1,col="Sky Blue",main='DM distribution - Population I',xlab='DM (in magnitudes)')

hist(dist2,main="Distance to the LMC: Population II",xlab=' DM (in magnitudes)',col='darkblue')

boxplot(dist2,col="Sky Blue",main='DM distribution - Population II',xlab='DM (in magnitudes)')