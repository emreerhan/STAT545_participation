cm007 Exercises: Exploring Aesthetic Mappings
================

``` r
library(gapminder)
library(ggplot2)
library(tidyverse)
```

    ## ── Attaching packages ─────────────────────────────────────────────────────────────────────────────────────── tidyverse 1.2.1 ──

    ## ✔ tibble  1.4.2     ✔ purrr   0.2.5
    ## ✔ tidyr   0.7.2     ✔ dplyr   0.7.4
    ## ✔ readr   1.1.1     ✔ stringr 1.3.1
    ## ✔ tibble  1.4.2     ✔ forcats 0.2.0

    ## ── Conflicts ────────────────────────────────────────────────────────────────────────────────────────── tidyverse_conflicts() ──
    ## ✖ dplyr::filter() masks stats::filter()
    ## ✖ dplyr::lag()    masks stats::lag()

# Beyond the x and y aesthetics

Switch focus to exploring aesthetic mappings, instead of geoms.

## Shapes

  - Try a scatterplot of `gdpPercap` vs `pop` with a categorical
    variable (continent) as `shape`.
  - As with all (?) aesthetics, we can also have them *not* as
    aesthetics\!
      - Try some shapes: first as integer from 0-24, then as keyboard
        characters.
      - What’s up with `pch`?

List of shapes can be found [at the bottom of the `scale_shape`
documentation](https://ggplot2.tidyverse.org/reference/scale_shape.html).

``` r
gvsl = ggplot(gapminder, aes(gdpPercap, lifeExp)) + 
  scale_x_log10()
gvsl + geom_point(aes(shape = continent), alpha = 0.2)
```

![](cm007-exercise_files/figure-gfm/unnamed-chunk-2-1.png)<!-- -->

``` r
# Each shape number is a shape
gvsl + geom_point(shape = 7)
```

![](cm007-exercise_files/figure-gfm/unnamed-chunk-3-1.png)<!-- -->

``` r
gvsl + geom_point(pch = 7)
```

![](cm007-exercise_files/figure-gfm/unnamed-chunk-3-2.png)<!-- -->

## Colour

Make a scatterplot. Then:

  - Try colour as categorical variable.

<!-- end list -->

``` r
gvsl + geom_point(aes(colour = continent))
```

![](cm007-exercise_files/figure-gfm/unnamed-chunk-4-1.png)<!-- -->

  - Try `colour` and `color`.
  - Try colour as numeric variable.
      - Try `trans="log10"` for log scale.

Make a line plot of `gdpPercap` over time for all countries. Colour by
`lifeExp > 60` (remember that `lifeExp` looks bimodal?)

Try adding colour to a histogram. How is this different?

## Facetting

Make histograms of `gdpPercap` for each continent. Try the `scales` and
`ncol` arguments.

Remove Oceania. Add another variable: `lifeExp > 60`.

## Bubble Plots

  - Add a `size` aesthetic to a scatterplot. What about `cex`?
  - Try adding `scale_radius()` and `scale_size_area()`. What’s better?
  - Use `shape=21` to distinguish between `fill` (interior) and `colour`
    (exterior).

## “Complete” plot

Let’s try plotting much of the data.

  - gdpPercap vs lifeExp with pop bubbles
  - facet by year
  - colour by continent

# Continue from last time (geom exploration with `x` and `y` aesthetics)

## Path plots

Let’s see how Rwanda’s life expectancy and GDP per capita have evolved
over time, using a path plot.

  - Try `geom_line()`. Try `geom_point()`.
  - Add `arrow=arrow()` option.
  - Add `geom_text`, with year label.

## Two categorical variables

Try `cyl` (number of cylinders) ~ `am` (transmission) in the `mtcars`
data frame.

  - Scatterplot? Jitterplot? No.
  - `geom_count()`.
  - `geom_bin2d()`. Compare with `geom_tile()` with `fill` aes.

## Overplotting

Try a scatterplot with:

  - Alpha transparency.
  - `geom_hex()`
  - `geom_density2d()`
  - `geom_smooth()`

## Bar plots

How many countries are in each continent? Use the year 2007.

1.  After filtering the gapminder data to 2007, make a bar chart of the
    number of countries in each continent. Store everything except the
    geom in the variable `d`.

2.  Notice the y-axis. Oddly, `ggplot2` doesn’t make it obvious how to
    change to proportion. Try adding a `y` aesthetic:
    `y=..count../sum(..count..)`.

**Uses of bar plots**: Get a sense of relative quantities of categories,
or see the probability mass function of a categorical random variable.

## Polar coordinates

  - Add `coord_polar()` to a scatterplot.

# Want more practice?

If you’d like some practice, give these exercises a try

**Exercise 1**: Make a plot of `year` (x) vs `lifeExp` (y), with points
coloured by continent. Then, to that same plot, fit a straight
regression line to each continent, without the error bars. If you can,
try piping the data frame into the `ggplot` function.

**Exercise 2**: Repeat Exercise 1, but switch the *regression line* and
*geom\_point* layers. How is this plot different from that of Exercise
1?

**Exercise 3**: Omit the `geom_point` layer from either of the above two
plots (it doesn’t matter which). Does the line still show up, even
though the data aren’t shown? Why or why not?

**Exercise 4**: Make a plot of `year` (x) vs `lifeExp` (y), facetted by
continent. Then, fit a smoother through the data for each continent,
without the error bars. Choose a span that you feel is appropriate.

**Exercise 5**: Plot the population over time (year) using lines, so
that each country has its own line. Colour by `gdpPercap`. Add alpha
transparency to your liking.

**Exercise 6**: Add points to the plot in Exercise 5.
