# Plot of the mvnpdf_invC function

Plot of the mvnpdf_invC function

## Usage

``` r
# S3 method for class 'mvnpdf_invC'
plot(x, ...)
```

## Arguments

- x:

  an object of class `mvnpdfsmart` resulting from a call of the
  `mnvpdf()` function.

- ...:

  graphical parameters passed to
  [`plot()`](https://rdrr.io/r/graphics/plot.default.html) function.

## Value

Nothing is returned, only a plot is given.

## Examples

``` r
pdfvalues <- mvnpdf(x=matrix(seq(-3, 3, by = 0.1), nrow = 1), Log=FALSE)
plot(pdfvalues)
```
