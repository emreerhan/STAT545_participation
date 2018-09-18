---
title: "Data Frame Exploration"
output: 
    html_document:
        theme: cerulean
        toc: true
        keep_md: true
---

## Exploring `gapminder`

### Setting up

We load `gapminder` using the `library` function


```r
library(gapminder)
```

### Exploring gapminder

The `head` command gives us the first part of the gapminder dataset, so we can see what it looks like.

```r
head(gapminder)
```

```
## # A tibble: 6 x 6
##       country continent  year lifeExp      pop gdpPercap
##        <fctr>    <fctr> <int>   <dbl>    <int>     <dbl>
## 1 Afghanistan      Asia  1952  28.801  8425333  779.4453
## 2 Afghanistan      Asia  1957  30.332  9240934  820.8530
## 3 Afghanistan      Asia  1962  31.997 10267083  853.1007
## 4 Afghanistan      Asia  1967  34.020 11537966  836.1971
## 5 Afghanistan      Asia  1972  36.088 13079460  739.9811
## 6 Afghanistan      Asia  1977  38.438 14880372  786.1134
```
We can get a good summary of `gapminder` using the summary function:

```r
summary(gapminder)
```

```
##         country        continent        year         lifeExp     
##  Afghanistan:  12   Africa  :624   Min.   :1952   Min.   :23.60  
##  Albania    :  12   Americas:300   1st Qu.:1966   1st Qu.:48.20  
##  Algeria    :  12   Asia    :396   Median :1980   Median :60.71  
##  Angola     :  12   Europe  :360   Mean   :1980   Mean   :59.47  
##  Argentina  :  12   Oceania : 24   3rd Qu.:1993   3rd Qu.:70.85  
##  Australia  :  12                  Max.   :2007   Max.   :82.60  
##  (Other)    :1632                                                
##       pop              gdpPercap       
##  Min.   :6.001e+04   Min.   :   241.2  
##  1st Qu.:2.794e+06   1st Qu.:  1202.1  
##  Median :7.024e+06   Median :  3531.8  
##  Mean   :2.960e+07   Mean   :  7215.3  
##  3rd Qu.:1.959e+07   3rd Qu.:  9325.5  
##  Max.   :1.319e+09   Max.   :113523.1  
## 
```

### Let's focus on the population sizes

Let's look at some descriptive statistics for this column.

```r
median(gapminder$pop)
```

```
## [1] 7023596
```

```r
mean(gapminder$pop)
```

```
## [1] 29601212
```

```r
sd(gapminder$pop)
```

```
## [1] 106157897
```

```r
var(gapminder$pop)
```

```
## [1] 1.12695e+16
```
We can see that these statistics agree with the statistics we got from the summary command above.

### An `if` statement

Let's see if the mean life expectancy is greater than that of Canada's, 82.

```r
if (mean(gapminder$lifeExp) > 82){
  print('It is!')
}else{
  print('It\'s not!')
}
```

```
## [1] "It's not!"
```
