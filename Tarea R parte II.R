library(ggplot2)
library(tables)
library(knitr)
library(rdatamarket)

unemploymentinfo = dminfo("http://data.is/OjHc61")
unemploymentzoo = dmseries(unemploymentinfo)
unemploymentlist = dmlist(unemploymentinfo)
unemploymentsmalldf = dmlist(unemploymentinfo, "Country" = c("Colombia","Mexico","Venezuela"))
unemploymentsmallzoo = dmseries(unemploymentinfo, "Country" = c("Colombia","Mexico","Venezuela"))

plotunemployment1 = qplot(Year,Value, data=unemploymentsmalldf,geom= "path", colour="Country")
print(plotunemployment1)
plot(unemploymentsmallzoo, plot.type="single", lty=1:3, col=1:3)
legend(x="bottomright",legend=colnames(unemploymentsmallzoo), lty=1:3, col=1:3)
plot(unemploymentsmallzoo, plot.type="multiple")


nuclearenergyinfo = dminfo("http://data.is/SV29cL")
nuclearenergyzoo = dmseries(nuclearenergyinfo)
nuclearenergylist = dmlist(nuclearenergyinfo)
nuclearenergysmalldf = dmlist(nuclearenergyinfo, "Country" = c("Argentina","Brazil","China"))
nuclearenergysmallzoo = dmseries(nuclearenergyinfo, "Country" = c("Argentina","Brazil","China"))

plotnuclearenergy1 = qplot(Year,Value, data=nuclearenergysmalldf,geom= "path", colour="Country")
print(plotnuclearenergy1)

plot(nuclearenergysmallzoo, plot.type="single", lty=1:3, col=1:3))
legend(x="bottomright",legend=colnames(nuclearenergysmallzoo), lty=1:3, col=1:3)
plot(nuclearenergysmallzoo, plot.type="multiple")





