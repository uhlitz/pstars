#' Wrapper functions to convert gene identifiers in org.Hs.eg.db or org.Mm.eg.db package
#'
#' \code{pstars} converts ids from identifier X to identifier Y using AnnotationDbi.
#' By default, target ids are concatenated for non-unique mappings, but non-unique mappings can be
#' forced to return unique mappings. However, this is not recommended.
#'
#' @param pvalues vector of numeric pvalues to be converted
#' @return A character vector of same length as input
#' @examples
#' pstars(c(0.04, 0.005, 0.1))
pstar <- function(pvalue) {
  if(!is.numeric(pvalue)) stop("pvalue must be of class numeric")
  if(pvalue >= 0.05) result <- "n.s."
  if(pvalue < 0.05) result <- "*"
  if(pvalue < 0.01) result <- "**"
  if(pvalue < 0.001) result <- "***"
  if(pvalue < 0.0001) result <- "****"
  if(pvalue < 0.00001) result <- "*****"
  return(result)
}
#' @export
pstars <- function(pvalues) {
  sapply(pvalues, pstar)
}
