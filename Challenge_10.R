#--------Question1-------#
#make a plot out of my own data
#read my_data.txt (figure out how to do it)

setwd("/Users/jackboyle/Documents/BioComputing/Biocomp-Exercise10")

read.table("my_data.txt",header=TRUE,sep="")
my_data<-read.table("my_data.txt",header=TRUE)

library(ggplot2)

ggplot(data=my_data,aes(y=water_level, x=Date))+
  geom_point()+
  xlab("Years")+
  ylab("Water Level of Walden Pond (meters)")+
  geom_smooth(method=lm)
my_data

#--------Question 2--------#
#Open up data.txt and make two plots
setwd("/Users/jackboyle/Documents/BioComputing/Biocomp-Exercise10")
data<-read.table("data.txt", sep = ",", header = T)
data
dim(data)
#make a bar plot
ggplot(data, aes(x = region, y = observations))  + 
  stat_summary(fun = mean, geom = "bar") 

#make a scatter plot

ggplot(data, aes(x = region, y = observations))+ 
  geom_jitter()

#The bar and scatter plots tell of different stories for the same data. 
#The Bar plot gives the average observation for each region.
#Whereas the scatter plot interprets the mean for the observations in terms of singular points.
#the scatter plot shows us the most and least consistent regions

