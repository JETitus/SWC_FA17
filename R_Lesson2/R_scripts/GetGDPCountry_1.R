# This script computes the GDP for a country using the gapminder data

# clear all variables
rm(list=ls())

# location of the data
filename <- "../Data/gapminder.txt"

# read the data file
gapminder <- read.table(filename, header = TRUE)

# extract gdpPercap from the gapminder data, using a specific country
getAverageGdpPerCapita <- function(country,gapminder) {
  selectedCountryData <- gapminder[gapminder$country == country, "gdpPercap"]
  mean(selectedCountryData)
}

gdpUSA <- getAverageGdpPerCapita("United_States",gapminder)
gdpCanada <- getAverageGdpPerCapita("Canada",gapminder)
gdpMexico <- getAverageGdpPerCapita("Mexico",gapminder)

print(paste('GDP of USA is', gdpUSA))

print(paste('GDP of Canada is', gdpCanada))

print(paste('GDP of Mexico is', gdpMexico))