library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("A Fair Shot Signatures"),
  
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot"),
      dataTableOutput('signTable')
    )
  )
)