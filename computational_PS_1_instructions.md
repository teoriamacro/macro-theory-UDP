Computational Problem Set 1: Macro Data
========================================================





Instructions: 
+ You must publish your homework on Rpubs.com before Thurdsay at 23:59 and upload a copy of your Rmd file to *your* GitHub repository. All your files must have your last name in the filename, e.g. `cps1_answer_mayer.*` .

+ Let me suggest to focus in your pure R script first, and then integrate text and code in your Rmd document.

+ There is a *starter* file in my repo. It's a good idea to get ahold of it by pull it to your local repo.


## Part I. A classic: Penn World Tables

+ Feel free to start your work by modifying the R script called `computational_PS_1_starter.R`. 

+ Choose any three countries or territories from the Penn World Table 7.1, with the excepction of Chile, Brazil and Argentina from the Penn (*sigh* OK ... you may include Chile, but **only** if it doesn't make the graph look bad, because its numbers are too high or too low).

+ One of the variables you'll use is **PPP converted GDP per capita (chain series), at 2005 constant prices (2005 International dollar per person).
**. In the PWT7.1 this variable is called `rgdpch`

+ Choose two more variables. In particular, choose among of the expenditure variables as share of the GDP (it could be investment, consumption, goverment consumptions, openess, etc).

+ Produce three plots (one per variable), showing in each plot, the corresponding time series for all your selected countries. 

+ Install and/or load the `tables` package. Produce a table similar to 
the first table presented in package's vignette. Look for the part where explains this:


```r
tabular((Species + 1) ~ (n = 1) + Format(digits = 2) * (Sepal.Length + Sepal.Width) * 
    (mean + sd), data = iris)
```

```
##                                                   
##                 Sepal.Length      Sepal.Width     
##  Species    n   mean         sd   mean        sd  
##  setosa      50 5.01         0.35 3.43        0.38
##  versicolor  50 5.94         0.52 2.77        0.31
##  virginica   50 6.59         0.64 2.97        0.32
##  All        150 5.84         0.83 3.06        0.44
```


+ Here is an example using four variables and three countries


```r
load("cps1_exampledata.RData")  # had I created myselection here, this would be unnecesary
mytable = tabular((country + 1) ~ (n = 1) + Format(digits = 2) * (kc + ki + 
    kg + openk) * (mean + sd), data = na.omit(myselection))
mytable
```

```
##                                                        
##                kc        ki        kg        openk     
##  country   n   mean sd   mean sd   mean sd   mean  sd  
##  Argentina  60 70.0  3.9 21.4  3.4  7.8  1.9 23.8  11.8
##  Brazil     60 67.0  2.3 23.4  3.5 11.1  1.4 15.5   6.6
##  Chile      59 65.9  6.5 23.8  6.9  6.0  1.5 42.4  18.8
##  All       179 67.6  4.9 22.9  5.0  8.3  2.7 27.2  17.4
```


+ In the next PS, you will reuse this same code to produce prettier tables in $\LaTeX$.


## Part II. Cool new kid: Datamarket.com



+ Look around a bit Datamarket.com, and as a warm up, select a few variables and make plots, change the time span, play around a bit.

+ Once you have made a visualization of some data, pay attention to the **Short URL** button. It's important.

+ Install and/or load the `rdatamarket` package. Read it's documentation. There you will find examples.

+ Use it to import *two* data series of your choosing (maybe a variable related to unemployment would be nice).

+ Plot the data (in separate plots, if necessary). In fact, plot the data in three different ways. One, using `plot` with the option `plot.type="multiple`. Another one, also using `plot`, but with the option `plot.type="multiple`. A last one, using `ggplot2`'s commands. In the starter file, you may find examples for this.




## Part III. The local credit: Using BCCh' data.

+ Repeat something similar to what you did in Part I (i.e. plot and table), but using data taken from the web site of the Banco Central de Chile.


## Bonus Question. JGR and Deducer

These two are very nice R packages, although JGR has become partially replaced by RStudio. But, still, JGR benefits from its integration with Deducer. Thanks to Deducer, you have  easy-to-use statistical analysis commands and a very nice Plot Builder, which is GUI interface to ggplot2. *If you want to earn some extra credit* (redeemable in the future, whenever your esteemed instructor deems it appropriate and price may vary) this is what you can do: 

+ Check out the website: http://www.screenr.com/

+ Check out this video: http://www.youtube.com/watch?v=K38IkTn5M_o&feature=channel&list=UL

+ Produce an screencast similar to the previous point, but using the share variables of part II.



