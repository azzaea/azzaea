# Loading necessary libraries

library(tidyverse)
library(ggmap)
library(leaflet)
library(htmlwidgets)



# I'm reading data off a tsv table containing a list of places, dates, ocassion .. etc

data <- read_delim('~/github_repos/zo0z.github.io/places/MyPlacesMap.tsv', delim='|') %>%
  mutate_geocode(city, source='dsk') %>% as_tibble()


# Generating the map

m <- data %>% 
  mutate(link = paste0('<a href="', url, '">', context, '</a>')) %>% 
  mutate(comment = paste(sep = "<br/>", paste0("<b>Event: </b>", event), paste0("<b>Date: </b>", date))) %>%
  mutate(comment = paste(sep = "<br/>", comment, paste0("<b>Link: </b>", link))) %>%
  mutate(photo = paste0('<img src="', image, '">')) %>%
  # mutate(comment = paste(sep = "<br/>", comment, photo) ) %>%
  leaflet() %>% addTiles() %>% 
  addMarkers(~lon, ~lat, popup = ~comment, clusterOptions = markerClusterOptions()) 

# Saving the widget
saveWidget(widget = m, file="~/github_repos/zo0z.github.io/places/MyPlacesMap.html", 
           selfcontained = FALSE)
