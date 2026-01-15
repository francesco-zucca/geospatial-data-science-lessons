# FIRST LESSON

# Loading libraries

library(sf)
library(tidyverse)
library(spData)

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

# --------------------------
# 2. MAP OF WORLD AIRPORTS
# --------------------------

# Importing data

airports <- st_read('/Users/franz/Data_Science_R/Geospatial_Data_Science/Geospatial Data Science Lessons/LESSONS/Lesson 1/ne_10m_airports')
airports

# Importing world data from spData
spworld <- world
world

# Plotting the airport map

ggplot() +
  geom_sf(data = spworld) + # add world map
  geom_sf(data = airports, aes(color = type))