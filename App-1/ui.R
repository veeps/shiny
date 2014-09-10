library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  titlePanel("Shine On"),
  
  sidebarLayout(
    sidebarPanel(
    selectInput("gifs", "GIFs", c("1"="1", "2"="2"),
                             multiple = FALSE, selected = 1)
                 ),
    mainPanel(
      textOutput("images"),
      imageOutput("pics")
    )
  )
))
