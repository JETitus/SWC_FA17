countryList <- commandArgs(TRUE)

# location of the data
fileName <- '../Data/gapminder.txt'

# read gapminder data
gapminder <- read.table(fileName, header=TRUE)

getAverageGdpPerCapita <- function(country) {
  # extract gdpPercap from the gapminder data for the specified country.
  
  selectedCountryData <- gapminder[gapminder$country == country, 'gdpPercap']
  
  mean(selectedCountryData)
}

averagedGdp <- sapply(countryList, getAverageGdpPerCapita)
barplot(averagedGdp)

print(averagedGdp)