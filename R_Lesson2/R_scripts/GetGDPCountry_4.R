# This script computes the GDP for a country using the gapminder data

# clear all variables
rm(list=ls())

# location of the data
filename <- "../Data/gapminder.txt"

# read the data file
gapminder <- read.table(filename, header = TRUE)

# extract gdpPercap from the gapminder data, using a specific country
getAverageGdpPerCapita <- function(country) {
  selectedCountryData <- gapminder[gapminder$country == country, "gdpPercap"]
  mean(selectedCountryData)
}

# Process large vector of South American Countries
southAmericanCountries <- c('Argentina', 'Bolivia', 'Brazil', 'Chile', 'Colombia', 'Ecuador', 'Paraguay', 'Peru', 'Uruguay', 'Venezuela') 

# use sapply to invoke getAverageGdpPerCapita() on all elments of the southAmerican Countries

averagedGdpSouthAmericanCountries <- sapply(southAmericanCountries, getAverageGdpPerCapita)

# sort average GDP by ascending order
averageGdpSouthAmericanCountries <- averagedGdpSouthAmericanCountries[order(averagedGdpSouthAmericanCountries)]

# Plot the data in a bar plot
barplot(averageGdpSouthAmericanCountries,las=2)
