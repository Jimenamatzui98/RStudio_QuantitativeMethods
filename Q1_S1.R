###########
###EX1  04032025

rm(list=ls()) #for clear environment
a <- 4
b <- 5
c <- a*b

ls()
rm(list=ls())

#importing a dataset
install.packages("foreign") #once we install it, it is installed forever
library(foreign)

setwd("/Users/jimenagomezmatzui/Documents/Jimena/1_MasterLeipzig/SoSe25/QuantitativeMethods/DataSet") #set working directory

ds <- read.spss("ISSP_Env_reduced_akt_QuantMeth.sav", to.data.frame = T) #importing data set

View(ds) #to see the data frame

colnames(ds) #see the names of the columns


head(ds, 5) #prints the first rows of your dataset (first 5)

head(ds$country) 

sum(is.na(ds$country)) #count the na's

table(ds$country) #counts how many times a variable appears in the dataset, in this case "country"

ds$country <- droplevels(ds$country) #drop the data with value=0

prop.table(table(ds$country)) #proportion of each variable

