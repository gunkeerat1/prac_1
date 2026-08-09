# Read a file from your computer or a URL
library(readr) 

pixar_films <- read.csv("data/pixar-films.csv")
public_response <- read.csv("data/pixar-films-response.csv")


library(dplyr)
pixar_films |> 
  rows_update(
    tibble(film = "Elemental", release_date = as.Date("2023-06-16")), # data to update & match
    by = "release_date" # specify matching variable
  ) 