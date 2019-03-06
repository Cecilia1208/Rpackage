#' Oldest Player Function
#'
#' This function allows you to get the player earned the most points for a specific year.
#' @param year Which is your year of interest? Range from 1950 to 2017.
#' @keywords age
#' @export
#' @examples
#' oldest_player()
#'

oldest_player <- function(data, year){
  sub <- dplyr::filter(data, Year == year)
  filter <- dplyr::filter(sub, Age == max(Age, na.rm = TRUE))
  dplyr::filter(filter, PTS == max(PTS, na.rm = TRUE))

}
