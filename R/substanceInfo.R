substanceInfo <- function(uri=NA) {
  if (missing(uri)) stop("You must specify the API service to use.");

  handle = new_handle()
  handle_setheaders(handle, "User-Agent" = "r/renm")
  handle_setheaders(handle, "Accept" = "application/json")

  url = paste(uri, "/study", sep="")
  conn <- curl::curl(url, handle, open="r")
  txt <- readLines(conn)
  close(conn)
  data = fromJSON(txt)

}
