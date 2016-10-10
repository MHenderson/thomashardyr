#' Tidy data frame of 6 of Thomas Hardy's novels
#'
#' Returns a tidy data frame of 6 of Thomas Hardy's completed, published novels with
#' two columns: \code{text}, which contains the text of the novels divided into
#' elements of up to about 70 characters each, and \code{book}, which contains the titles of
#' the novels as a factor in order of publication.
#'
#' @return A data frame with two columns: \code{text} and \code{book}
#'
#' @name hardy_books
#'
#' @import dplyr
#'
#' @examples
#'
#' library(dplyr)
#'
#' hardy_books() %>% group_by(book) %>%
#'      summarise(total_lines = n())
#'
#' @export

hardy_books <- function(){
  dplyr::bind_rows(
    dplyr::data_frame(
      text = maddingcrowd,
      book = "Far from the Madding Crowd"
    ),
    dplyr::data_frame(
      text = native,
      book = "The Return of the Native"
    ),
    dplyr::data_frame(
      text = mayor,
      book = "The Mayor of Casterbridge"
    ),
    dplyr::data_frame(
      text = woodlanders,
      book = "The Woodlanders"
    ),
    dplyr::data_frame(
      text = tess,
      book = "Tess of the D'Urbervilles"
    ),
    dplyr::data_frame(
      text = jude,
      book = "Jude the Obscure"
    )
  ) %>%
  dplyr::mutate(book = factor(book, levels = unique(book)))
}
