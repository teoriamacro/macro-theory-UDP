PARTE I

En esta primera parte consiste en visualizar la base de datos de la world penn table. Para comenzar, mostraremos los primeros comandos, los cuales son:


```r
library(ggplot2)
library(tables)
```

```
## Loading required package: Hmisc
```

```
## Loading required package: survival
```

```
## Loading required package: splines
```

```
## Hmisc library by Frank E Harrell Jr
## 
## Type library(help='Hmisc'), ?Overview, or ?Hmisc.Overview') to see overall
## documentation.
## 
## NOTE:Hmisc no longer redefines [.factor to drop unused levels when
## subsetting.  To get the old behavior of Hmisc type dropUnusedLevels().
```

```
## Attaching package: 'Hmisc'
```

```
## The following object(s) are masked from 'package:survival':
## 
## untangle.specials
```

```
## The following object(s) are masked from 'package:base':
## 
## format.pval, round.POSIXt, trunc.POSIXt, units
```

```r
library(knitr)
library(rdatamarket)
```

```
## Loading required package: zoo
```

```
## Attaching package: 'zoo'
```

```
## The following object(s) are masked from 'package:base':
## 
## as.Date, as.Date.numeric
```

```r
booktabs()
```

```
## $toprule
## [1] "\\hline"
## 
## $midrule
## [1] "\\hline"
## 
## $bottomrule
## [1] "\\hline"
## 
## $titlerule
## NULL
## 
```


Esas primeras instrucciones se utilizan para activar los paquetes en los cuales se utilizan funciones para realizar las actividades posteriores en este ejercicio.



```r
pwdata <- read.csv("pwt71_w_country_names.csv")
```

```
## Warning: no fue posible abrir el archivo 'pwt71_w_country_names.csv': No
## such file or directory
```

```
## Error: no se puede abrir la conexión
```

```r
selectediso = c("MEX", "COL", "VEN")
myselection = subset(pwdata, isocode %in% selectediso)  #
```

```
## Error: objeto 'pwdata' no encontrado
```

```r
myselection = droplevels(myselection)
```

```
## Error: objeto 'myselection' no encontrado
```

```r
View(myselection)
```

```
## Error: objeto 'myselection' no encontrado
```


La primera instruccion son para leer los datos del penn world table, en las siguientes se selecciona la base de datos solo para Mexico Colombia y Venezuela. Y en la última es para ver la seleccion de países elegidos. 
A continuación presentaré los gráficos de series de tiempo, del GDP per cápita a PPP, el consumo per cápita kc y la inversión per capita ki.




```r
plot1 = qplot(year, rgdpch, data = myselection, geom = "path", colour = country)
```

```
## Error: objeto 'myselection' no encontrado
```

```r
print(plot1)
```

```
## Error: objeto 'plot1' no encontrado
```

```r

plot2 = qplot(year, kc, data = myselection, geom = "path", colour = country)
```

```
## Error: objeto 'myselection' no encontrado
```

```r
print(plot2)
```

```
## Error: objeto 'plot2' no encontrado
```

```r

plot3 = qplot(year, ki, data = myselection, geom = "path", colour = country)
```

```
## Error: objeto 'myselection' no encontrado
```

```r
print(plot3)
```

```
## Error: objeto 'plot3' no encontrado
```


Finalmente para esta primera parte presentaré una tabla con estadisticos como media y varianza de las variables consumo per cápita e inversión per cápita



```r
mitabla = tabular((country + 1) ~ (n = 1) + Format(digits = 2) * (kc + ki) * 
    (mean + sd), data = na.omit(myselection))
```

```
## Error: objeto 'myselection' no encontrado
```



PARTE II

Las primeras instrucciones al igual que en la primera parte


```r
library(ggplot2)
library(tables)
library(knitr)
library(rdatamarket)
```


A continuación presentaremos datos de la tasa de desempleo civil a nivel mundial para diversos periodos, datos recolectados del sitio de datamarket


```r
unemploymentinfo = dminfo("http://data.is/OjHc61")
unemploymentzoo = dmseries(unemploymentinfo)
unemploymentlist = dmlist(unemploymentinfo)
unemploymentsmalldf = dmlist(unemploymentinfo, Country = c("Colombia", "Mexico", 
    "Venezuela"))
unemploymentsmallzoo = dmseries(unemploymentinfo, Country = c("Colombia", "Mexico", 
    "Venezuela"))
```


Posteriormente presentaré distintos tipos de gráficos sobre el desempleo 


```r
plotunemployment1 = qplot(Year, Value, data = unemploymentsmalldf, geom = "path", 
    colour = "Country")
print(plotunemployment1)
```

![plot of chunk unnamed-chunk-7](figure/unnamed-chunk-71.png) 

```r

plot(unemploymentsmallzoo, plot.type = "single", lty = 1:3, col = 1:3)
legend(x = "bottomright", legend = colnames(unemploymentsmallzoo), lty = 1:3, 
    col = 1:3)
```

![plot of chunk unnamed-chunk-7](figure/unnamed-chunk-72.png) 

```r
plot(unemploymentsmallzoo, plot.type = "multiple")
```

![plot of chunk unnamed-chunk-7](figure/unnamed-chunk-73.png) 



A continuación realizaré el mismo procedimiento pero para una variable distinta, la cual corresponde al nivel de consumo de energia nuclear en Argentina, Brasil y China, por lo tanto tenemos.


```r
nuclearenergyinfo = dminfo("http://data.is/SV29cL")
nuclearenergyzoo = dmseries(nuclearenergyinfo)
nuclearenergylist = dmlist(nuclearenergyinfo)
nuclearenergysmalldf = dmlist(nuclearenergyinfo, Country = c("Argentina", "Brazil", 
    "China"))
nuclearenergysmallzoo = dmseries(nuclearenergyinfo, Country = c("Argentina", 
    "Brazil", "China"))
```



Y ahora los gráficos de series de tiempo para los tres países mencionados

















