#' Maximum Points Function
#'
#' This function get the oldest player of the input year, if multiple players found, return the one earned the most points
#' @param year Which is your year of interest? Range from 1950 to 2017.
#' @keywords points
#' @export
#' @examples
#' max_pts()
#'

max_pts <- function(data, year){
  sub <- dplyr::filter(data, Year == year)
  max <- dplyr::filter(sub, PTS == max(PTS, na.rm = TRUE))
  dplyr::select(max, Year, Player, PTS)
}
