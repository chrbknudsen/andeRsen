library(xml2)
library(httr)

hent_eventyrtekst <- function(url) {
  tryCatch({
    # Tjek om filen findes
    res <- httr::GET(url)
    if (res$status_code != 200) {
      warning(glue::glue("Fejl {res$status_code} ved hentning af {url}"))
      return(tibble(paragraphs = NA_character_))
    }
    
    # Læs XML direkte
    doc <- read_xml(content(res, as = "text", encoding = "UTF-8"))
    
    # Namespace
    ns <- c(x = "http://www.tei-c.org/ns/1.0")
    
    # Find <p>-tags
    paragraphs <- xml_find_all(doc, ".//x:p", ns)
    
    # Træk tekst og saml
    text <- xml_text(paragraphs)
    tibble("paragraphs" =  xml2::xml_text(paragraphs))    
  },
  error = function(e) {
    warning(glue::glue("Fejl ved behandling af {url}: {e$message}"))
    return(tibble(paragraphs = NA_character_))  })
}
