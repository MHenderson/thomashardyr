[![Build Status](https://travis-ci.org/MHenderson/thomashardyr.svg?branch=master)](https://travis-ci.org/MHenderson/thomashardyr)
[![DOI](https://zenodo.org/badge/56910697.svg)](https://zenodo.org/badge/latestdoi/56910697)
[![](http://www.r-pkg.org/badges/version/thomashardyr)](http://www.r-pkg.org/pkg/thomashardyr)
[![CRAN RStudio mirror downloads](http://cranlogs.r-pkg.org/badges/thomashardyr)](http://www.r-pkg.org/pkg/thomashardyr)

# thomashardyr

http://mhenderson.github.io/thomashardyr/

## An R Package for Thomas Hardy's Novels

This package provides access to the full texts of 6 of Thomas Hardy's novels.

The UTF-8 plain text for each novel was sourced from
[Project Gutenberg](https://www.gutenberg.org/)

The package contains:

* `maddingcrowd`:  *Far From The Madding Crowd*, published in 1874
* `native`:  *The Return of the Native*, published in 1878
* `mayor`:  *The Mayor of Casterbridge*, published in 1886
* `woodlanders`:  *The Woodlanders*, published in 1887
* `tess`:  *Tess of the D'Urbervilles*, published in 1891
* `jude`:  *Jude the Obscure*, also published in 1895

There is also a function `hardy_books()` that returns a tidy data frame of all 6 novels.

This package is based on Julia Silge's [janeaustenr](https://github.com/juliasilge/janeaustenr)
package.

## Installation

First install Drat https://cran.rstudio.com/web/packages/drat.

```
install.packages("drat")
```

Then to install `thomashardyr` type the following:

```
drat::addRepo("MHenderson")
install.packages("thomashardyr")
```
