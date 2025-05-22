library(tidyverse)
#import csv file
setwd("/Users/sammi/Documents/GitHub/ghp_r13853017")

#create dataframe
df=read.csv("dengue_assignment.csv")
head(df)

#Cases by year
Cases_by_year <-
df %>%
  group_by(year) %>%
  summarise(TotalCases = sum(case_number))
#Cases only in 2014
Cases_2014<-
  Cases_by_year %>%
  filter(year==2014)
Cases_2014
#The number of cases in 2014 was 15747
