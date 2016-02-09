listBundles <- function(service=NA) {
  if (missing(service)) stop("You must specify the API service to use.");

  handle = new_handle()
  handle_setheaders(handle, "User-Agent" = "r/renm")
  handle_setheaders(handle, "Accept" = "application/json")

  url = paste(service, "bundle/", sep="")
  res <- curl::curl_fetch_memory(url, handle)
  txt <- rawToChar(res$content)

  data = fromJSON(txt)
}
