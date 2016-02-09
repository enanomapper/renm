substanceInfo <- function(uri=NA) {
  if (missing(uri)) stop("You must specify the API service to use.");

  handle = new_handle()
  handle_setheaders(handle, "User-Agent" = "r/renm")
  handle_setheaders(handle, "Accept" = "application/json")

  url = paste(uri, "/study", sep="")
  res <- curl::curl_fetch_memory(url, handle)
  txt <- rawToChar(res$content)
  data = fromJSON(txt, simplifyVector=F)$study[[1]]

}
