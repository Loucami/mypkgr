# MVNPDF

Description de la fonction.

## Usage

``` r
mvnpdfsmartC(x, mean, varcovM, Log = TRUE)

mvnpdf(x, mean = rep(0, nrow(x)), varcovM = diag(nrow(x)), Log = TRUE)
```

## Arguments

- x:

  a matrix, with n columns (the observations) and p rows.

- mean:

  a vector of means.

- varcovM:

  a variance-covariance matrix.

- Log:

  a logical parameter, with default value to TRUE.

## Value

Returns a list containing the matrix x, and a vector of length n of the
multivariate normal distribution density values at those points
(eventually in log-scale).

## Details

Détails de la fonction.

## Examples

``` r
mvnpdf(x = matrix(1.96), Log = FALSE)
#> $x
#>      [,1]
#> [1,] 1.96
#> 
#> $y
#> [1] 0.05844094
#> 
#> attr(,"class")
#> [1] "mvnpdf"
dnorm(1.96)
#> [1] 0.05844094
```
