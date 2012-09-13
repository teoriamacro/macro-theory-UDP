PARTE III

Para esta última parte el ejercicio es similar a la primera. Yo recopilé datos del banco central de Chile, la primera base de datos consiste en datos anuales desde 1995 hasta 2011 de la base monetaria en Chile. Presentaré los primeros comandos al igual que en las partes anteriores









Esto como mencionamos anteriormente para habilitar los comandos que contienen las funciones necesarias.


```r
datosbc = read.table("Cuadrobc.csv", header = F, sep = ";", quote = "")
```

```
## Warning: no fue posible abrir el archivo 'Cuadrobc.csv': No such file or
## directory
```

```
## Error: no se puede abrir la conexión
```

```r
datosbc = datosbc[, 1:2]
```

```
## Error: objeto 'datosbc' no encontrado
```

```r
datosbc = datosbc[3:19, 1:2]
```

```
## Error: objeto 'datosbc' no encontrado
```

```r
names(datosbc) = c("year", "basemonetaria")
```

```
## Error: objeto 'datosbc' no encontrado
```

```r
View(datosbc)
```

```
## Error: objeto 'datosbc' no encontrado
```


Al igual que en la parte I acá presento los comandos para leer la base y el segundo y tercer comando consisten en modificar la base en cantidad de filas y columnas que son necesarias dado el fin del ejercicio y tener datos mejor ordenados, el cuarto comando entrega nombre a las variables. Ahora vienen los gráficos y la tabla donde se muestran estadisticos.


```r
plot1 = qplot(year, basemonetaria, data = datosbc)
```

```
## Error: objeto 'datosbc' no encontrado
```

```r
print(plot1)
```

```
## Error: objeto 'plot1' no encontrado
```



```r
mitabla1 = tabular((row.names + 1) ~ (n = 1) + Format(digits = 2) * (year + 
    basemonetaria) * (mean + sd), data = na.omit(datosbc))
```

```
## Error: objeto 'datosbc' no encontrado
```


Finalmente presentaré lo mismo que antes pero ahora la variable es la TPM en Chile, los datos son una muestra desde 1995 hasta 2011 al igual que con la base anterior, a continuación mostraré los comandos corrspondientes.


```r
datostpm = read.table("CuadroTPM.csv", header = F, sep = ";", quote = "")
```

```
## Warning: no fue posible abrir el archivo 'CuadroTPM.csv': No such file or
## directory
```

```
## Error: no se puede abrir la conexión
```

```r
datostpm = datostpm[2:19, ]
```

```
## Error: objeto 'datostpm' no encontrado
```

```r
datostpm = datostpm[2:19, 1:3]
```

```
## Error: objeto 'datostpm' no encontrado
```

```r
names(datostpm) = c("year", "tpm")
```

```
## Error: objeto 'datostpm' no encontrado
```

```r
View(datostpm)
```

```
## Error: objeto 'datostpm' no encontrado
```


Y los comandos para graficar el tiempo vs la TPM.


```r
plot2 = qplot(year, tpm, data = datostpm)
```

```
## Error: objeto 'datostpm' no encontrado
```

```r
print(plot2)
```

```
## Error: objeto 'plot2' no encontrado
```



```r
mitabla2 = tabular((row.names + 1) ~ (n = 1) + Format(digits = 2) * (year + 
    tpm) * (mean + sd), data = na.omit(datostpm))
```

```
## Error: objeto 'datostpm' no encontrado
```


Con esto finalmente concluimos los ejercicios.

