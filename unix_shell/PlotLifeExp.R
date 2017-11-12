##This is  PlotLifeExp.R script

#read data into R
myDataFull<-read.table("Data/gapminder.txt", header = TRUE)

#myDataFull is a dataframe - check

#select information about Canada
Canada<-myDataFull[myDataFull$country=="Canada",]

#Canada is a new dataframe

#plot lifeExp 
plot(Canada$year, Canada$lifeExp, col="blue", type="l")