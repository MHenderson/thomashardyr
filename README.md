# thomashardyr

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

To install the package type the following:

```
library(devtools)
install_github("mhenderson/thomashardyr")
library(thomashardyr)
```
