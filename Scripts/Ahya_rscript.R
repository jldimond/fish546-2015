#This script plots A. hyacinthus CpG data

setwd("~/Documents/fish546-2015/Analyses/Ahya")

#Read in CpG data with GOslim annotation

Ahya_cpg<- read.csv("Ahya_cpg_GOslim.csv")
Ahya_diff<- read.csv("Ahya_diff_cpg_GOslim.csv")

#Create density 
dencpg<-density(Ahya_cpg$Column2, na.rm=T)
dencpg_diff <- density(Ahya_diff$Column2, na.rm=T)

#Plot

plot(dencpg, xlim=c(0,1.7), ylim=c(0,1.6), main=NULL, xlab="CpG ratio", cex=1, lwd=2, col="#6C2DC760")
lines(dencpg_diff, col="#C11B1760", cex=1, lwd=2)
polygon(dencpg, col="#6C2DC760")
polygon(dencpg_diff,col="#C11B1760")
legend(x="topleft", c("whole transcriptome", "thermal stress genes"), col = c("#6C2DC760","#C11B1760"), lwd=2, bty="n", x.intersp=0.5)

