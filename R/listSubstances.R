listSubstances <- function(service=NA, search=NA, type="name") {
  if (missing(service)) stop("You must specify the API service to use.");

  handle = new_handle()
  handle_setheaders(handle, "User-Agent" = "r/renm")
  handle_setheaders(handle, "Accept" = "application/json")

  url = paste(service, "substance", sep="")
  if (!missing(search)) {
    url = paste(url, "?search=", search, "&type=", type, sep="")
  }
  conn <- curl::curl(url, handle, open="r")
  txt <- readLines(conn)
  close(conn)
  data = fromJSON(txt)

}
