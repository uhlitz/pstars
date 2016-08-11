
#  Display p-values with asterisk symbols

Convert numeric pvalues to asterisk symbols: 0.05: \*; 0.01: \*\*, 0.001: \*\*\*, 0.0001: \*\*\*\*, 0.00001: \*\*\*\*\*

# Installation

```
devtools::install_github("uhlitz/pstars")
```

# Example

```
> library(pstars)
> pstars(c(0.04, 0.005, 0.1))
[1] "*"    "**"   "n.s."
```
