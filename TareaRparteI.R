library(ggplot2)
library(tables)
library(knitr)
library(rdatamarket)
booktabs()

pwdata <- read.csv("pwt71_w_country_names.csv")
selectediso = c("MEX","COL", "VEN") ;
myselection=subset(pwdata,isocode %in% selectediso)# 
myselection = droplevels(myselection)
View(myselection)

plot1=qplot(year,rgdpch, data=myselection,geom= "path", colour=country)
print(plot1)

plot2=qplot(year,kc, data=myselection,geom= "path", colour=country)
print(plot2)

plot3=qplot(year,ki, data=myselection,geom= "path", colour=country)
print(plot3)

mitabla = tabular( (country + 1) ~ (n=1) + Format(digits=2)*(kc + ki)*(mean+sd), data= na.omit(myselection))
