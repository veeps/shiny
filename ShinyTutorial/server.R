library(shiny)
library(maps)
library(mapproj)

source("helpers.R")
counties <- readRDS("data/counties.rds")

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
output$map <- renderPlot({
  
  data <- counties[ , input$var]
#   data <- switch(input$var,
#                  "Percent White" = counties$white,
#                  "Percent Black" = counties$black,
#                  "Percent Hispanic" = counties$hispanic,
#                  "Percent Asian" = counties$asian,
#                  )
  percent_map(var = data, color = "darkgreen", legend.title = input$var, max = input$range[2], min = input$range[1])
})
})

?switch

