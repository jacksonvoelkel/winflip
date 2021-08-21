#' Flip Paths
#'
#' Intended to flip backslashes in Windows paths
#'
#' @param x Highlighted text to flip
#' @export

winflip <- function(x){
    context <- rstudioapi::getActiveDocumentContext()
    invisible(lapply(rev(context$selection), function(con){
      rstudioapi::modifyRange(
        location = con$range, 
        text = gsub("\\\\","/",con$text), 
        id = context$id)
    }))
}

