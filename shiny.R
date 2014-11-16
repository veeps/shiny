setwd("~/git/shiny")
library(shiny)
library(maps)
library(mapproj)
library(ggplot2)
source("ShinyTutorial/helpers.R")
counties <- readRDS("ShinyTutorial/data/counties.rds")
percent_map(counties$white, "darkgreen", "%white")

head(counties)
?percent_map


head(diamonds)
?checkboxGroupInput
?renderPlot
?sprintf

lm <- lm(price ~ cut, data = diamonds)
?renderTable

class(lm)
?lm
summary(lm)
(lm)

done
summary(lm(price ~ cut, data = diamonds))
ggplot(diamonds, aes(x="price", y = "cut")) + geom_point() + geom_smooth(method="lm") 


plot(build.formula("price", c("cut", "color")), data= diamonds)


