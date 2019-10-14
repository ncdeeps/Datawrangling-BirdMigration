library(tidyverse)
library(dplyr)
pop <- read.csv("P:/wrangling lab/pop.csv")
countries <- read.csv("P:/wrangling lab/WorldCityLocations-master/World_Cities.csv",header = FALSE)
countries <- countries %>% rename(ID=V1,Country = V2,City=V3,Latitude = V4,Longitude = V5,Altitude = V6)
install.packages("dplyr")
#data <-dplyr::bind_rows(pop,countries)
#data <- merge(pop,countries,by="City")


population <- select(pop,Country.or.Area,City,City.type,Source.Year,Value)
data <- merge(population,countries,by="City")
