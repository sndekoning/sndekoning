#' FormatColNames
#'
#' @param colnm A character vector to transform to consistent names.
#' @param force_character Should the input
#'
#' @return A character vector of the same length
#' @export
#'
#' @examples
FormatColNames <- function(colnm, force_character = FALSE) {
  if (!force_character) {
    tryCatch(
      colnm <-
        as.character(colnm),
      error = function(e)
        stop(
          "Provided vector is not of type character, or could not be coerced to character."
        )
    )
  }

  if (!is.character(colnm)) {
    stop("Provided vector is not of type character, or could not be coerced to character.")
  }


  colnm <-
    tolower(gsub(
      pattern = "[[:punct:]]+",
      replacement = "_",
      x = colnm,
      fixed = FALSE
    ))

  return(colnm)

}
