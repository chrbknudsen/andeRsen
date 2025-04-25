
# Eventyr (basistabel)
eventyr <- data.frame(
  eventyr_id = character(),
  titel_dansk = character(),
  første_udgivelse = as.Date(character()),
  stringsAsFactors = FALSE
)

# ATU (klassifikationer)
atu <- data.frame(
  atu_kode = character(),
  beskrivelse = character(),
  stringsAsFactors = FALSE
)

# Relation mellem eventyr og ATU-koder (mange-til-mange)
atu_klassifikation <- data.frame(
  eventyr_id = character(),
  atu_kode = character(),
  stringsAsFactors = FALSE
)

# Titler på forskellige sprog
titler <- data.frame(
  eventyr_id = character(),
  sprog = character(),
  titel = character(),
  stringsAsFactors = FALSE
)

# Metadata om specifikke udgivelser
udgivelser <- data.frame(
  udgivelse_id = character(),
  sprog = character(),
  dato = as.Date(character()),
  oversætter = character(),
  navn = character(),
  sted = character(),
  stringsAsFactors = FALSE
)

# Eventyrtekst opdelt i afsnit
eventyr_tekst <- data.frame(
  eventyr_id = character(),
  udgivelse_id = character(),
  afsnit_nr = integer(),
  tekst = character(),
  stringsAsFactors = FALSE
)

library(tidyverse)
library(readxl)
library(writexl)

ark <- list("atu" = atu,
            "atu_klassifikation" = atu_klassifikation,
            "eventyr" = eventyr,
            "eventyr_tekst" = eventyr_tekst,
            "titler" = titler,
            "udgivelser" = udgivelser)
# write_xlsx(ark, "data.xlsx")
