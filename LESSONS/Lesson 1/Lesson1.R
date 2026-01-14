# FIRST LESSON

# Loading libraries

library(sf)
library(tidyverse) 

# ------------------------------------
# 1. CREATING ARTIFICIAL DATA WITH SF
# -------------------------------------

# Creating multipoint

multipoint_matrix <- rbind(c(3.2, 4), c(3, 4.6), c(3.8, 4.4),
                            c(3.5, 3.8), c(3.4, 3.6), c(3.9, 4.5)) # list of points 
multipoint <- st_multipoint(multipoint_matrix) # multipoint object

# Creating linestring

linestring_matrix <- rbind(c(0, 3), c(0, 4), c(1, 5), c(2, 5))
linestring <- st_linestring(linestring_matrix) # linestring object

# Creating polygon

polygon_list <- list(rbind(c(0, 0), c(1, 0), c(3, 2), c(2, 4), c(1, 4), c(0, 0)))
polygon <- st_polygon(polygon_list) # polygon object

# Plotting

ggplot() +
  geom_sf(data = multipoint) +
  geom_sf(data = linestring) +
  geom_sf(data = polygon)