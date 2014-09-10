library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  titlePanel("Census Vis"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Create demographic maps with Census data"),
      selectInput("var",
                  label="Choose a variable to display",
                  choices=c("Percent White" = "white", "Percent Black" = "black", "Percent Hispanic" = "hispanic", "Percent Asian" = "asian"),
                  selected = "Percent White"),
      sliderInput("range",
                  label = "Range of interest:",
                  min = 0, max = 100, value = c(0,100))

    ),
    mainPanel(
      plotOutput("map"))

    )
  )
)
