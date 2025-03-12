glossar = function(pattern){
  require(tidyverse); require(knitr)
  readxl::read_excel("glossar.xlsx") |>
    filter(str_detect(Funktion, pattern)) |>
    arrange(tolower(Funktion)) |>
    knitr::kable(format = "simple")
}
