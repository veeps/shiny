library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  titlePanel("Shine On"),
  
  sidebarLayout(
    sidebarPanel("sidebar panel"),
    mainPanel(
      img(src="ambiguity_twitter.gif")
    )
  )
))
