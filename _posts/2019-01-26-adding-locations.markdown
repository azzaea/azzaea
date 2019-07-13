---
layout: post
title: Adding maps in Jekyll 
description: A tutorial documenting how I added the interactive map in my places page
date: 2019-03-29 16:56:00-0400 
comments: true
tags: [tutorial, jekyll, R, leaflet]
categories: Tutorials
---

One nice aspect of using a static site generator is the flexibility in adding content of any type rather easily. My intention with the [places](/places) page is to show places I visited/lived in, with some annotations on when/why or even a nice photo. 

My go-to programming language is [R](https://www.r-project.org/), which has a nice set of built-in functions and libraries for manipulating data and producing plots. 

For ease of use, I'm reading data off a tsv table containing a list of places, dates, ocassion, and a link relevant to the event. Then, I'm converting these locations into longitude and latitude for the marker points to appear in the map. Finally, I'm adding some short description of each map point (kind of building context for each point). 

While this [stackoverflow](https://stackoverflow.com/questions/35386124/embedding-a-r-leaflet-map-on-a-jekyll-site-hosted-on-github) thread contains some handy tips on automating the process, I couldn't faithfully follow through. Instead, the manual approach below works very efficiently for me (and maybe for you too!).

Here is my R code for generating the map:

``` R
# Loading necessary libraries

library(tidyverse)      # Nice functions for reading and plotting tabular data
library(ggmap)          # Package with functions for geocoding locations
library(leaflet)        # Package for creating and handling interactive maps
library(htmlwidgets)    # Package for embedding and creating html widgets


# Reading the data from the tsv table, and geocoding:

data <- read_delim('MyPlacesMap.tsv', delim='|') %>%
  mutate_geocode(city, source='dsk') %>% as_tibble()

# Generating the map

m <- data %>% 
  mutate(link = paste0('<a href="', url, '">', context, '</a>')) %>% 
  mutate(comment = paste(sep = "<br/>", paste0("<b>Event: </b>", event),
                           paste0("<b>Date: </b>", date))) %>%
  mutate(comment = paste(sep = "<br/>", comment, 
                           paste0("<b>Link: </b>", link))) %>%
  mutate(photo = paste0('<img src="', image, '">')) %>%
  leaflet() %>% addTiles() %>% 
  addMarkers(~lon, ~lat, popup = ~comment, 
              clusterOptions = markerClusterOptions()) 


# Saving the widget

saveWidget(widget = m, file="MyPlacesMap.html", selfcontained = FALSE)

```

This creates the file `MyPlacesMap.html` in the current R working directory, along with a directory containing the needed javascript and css styles. The html file will be the map itself.

Since I need the map to appear within the layout of my site (as opposed to filling the entire browser window), I simply add the following html frame to where I like the map to appear:

```
<iframe src="MyPlacesMap.html" height="700" width="850" style="border:none;"></iframe>
```

Which gives me the map below:
<iframe src="../../places/MyPlacesMap.html" height="700" width="850" style="border:none;"></iframe>

