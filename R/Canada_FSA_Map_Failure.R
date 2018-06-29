
library(tidyverse)
library(scales)
library(ggthemes)
library(hrbrthemes)
library(sf) 
library(glue)
library(ggrepel)


canada.map <- sf::read_sf("gfsa000b11a_e/gfsa000b11a_e.shp")
sum(rapply(st_geometry(canada.map), nrow))

# http://www12.statcan.gc.ca/census-recensement/2011/ref/dict/table-tableau/table-tableau-8-eng.cfm
## BC is 59
canada.bc <- canada.map %>% filter(PRUID== "59")

canada.bc %>% ggplot() + geom_sf(aes(fill=CFSAUID))

###  Hmm.... I can't figure this out.... It's really slow to draw....  
###  and I can't really show anything on plots pane...   