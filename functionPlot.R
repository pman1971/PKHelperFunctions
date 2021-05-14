# Creates custom labels fro lattice plot axis
comma_fomatter <- function (lim, logsc = FALSE, at = NULL, ...) 
{
  ans <- yscale.components.default(lim = lim, logsc = logsc, 
                                   at = at, ...)
  xx = as.numeric(ans$left$labels$labels)
  ans$left$labels$labels <- comprss(xx)
  ans
}
