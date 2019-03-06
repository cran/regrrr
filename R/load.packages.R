#' load multiple packages
#'
#' @param pkg_name_vec a string vector of package names
#' 
#' 
#' @examples
#' \dontrun{
#' load.pkgs(c("dplyr", "car", "purrr"))
#' }
#' 
#' @export
load.pkgs <- function(pkg_name_vec){
  tryCatch({
  invisible(suppressMessages(lapply(pkg_name_vec, require, character.only = TRUE)))
  }, error=function(e){cat("ERROR :", conditionMessage(e), "\n")})
    }
  
  
