library(ggplot2)
library(tables)
library(knitr)
library(rdatamarket)
library(RODBC)
library(gdata)
booktabs()

datosbc=read.table("Cuadrobc.csv",header=F,sep=";",quote="")
datosbc=datosbc[ ,1:2]
datosbc=datosbc[3:19,1:2]
names(datosbc)=c("year","basemonetaria")

View(datosbc)
plot1=qplot(year,basemonetaria, data=datosbc)
print(plot1)

mitabla1=tabular( (row.names + 1) ~ (n=1) + Format(digits=2)*(year + basemonetaria)*(mean+sd), data= na.omit(datosbc))



datostpm=read.table("CuadroTPM.csv",header=F,sep=";",quote="")
datostpm=datostpm[2:19, ]
datostpm=datostpm[2:19,1:3]
names(datostpm)=c("year","tpm")
View(datostpm)
plot2=qplot(year,tpm, data=datostpm)
print(plot2)

mitabla2 =tabular( (row.names + 1) ~ (n=1) + Format(digits=2)*(year + tpm)*(mean+sd), data= na.omit(datostpm)) 


