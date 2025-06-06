#' Load HC Andersen fairy tale texts
#'
#' This function loads a data set containing HC Andersen's fairy tales
#' in multiple languages. The data are stored as an RDS file inside
#' the package's `inst/extdata` directory.
#'
#' @return An object with the fairy tales. The exact structure depends on
#'   the underlying RDS file.
#' @examples
#' data <- load_eventyr_texts()
#' head(data)
load_eventyr_texts <- function() {
  path <- system.file("extdata", "tekster.rds", package = "andeRsen")
  if (path == "") {
    stop("Data file not found.")
  }
  readRDS(path)
}
