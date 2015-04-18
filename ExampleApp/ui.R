library(shiny)
#ui.R builds an HTML page

shinyUI(pageWithSidebar(
  headerPanel("Normal Curve"),
  sidebarPanel(
    sliderInput("mean", "Mean", min=-1, max=1, value=0, step=0.1),
    sliderInput("stdev", "Standard Deviation", min=0, max=2, value=1, step=0.1))
  ),
  mainPanel(
    plotOutput("normPlot")
    )
  )