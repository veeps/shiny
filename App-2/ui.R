library(shiny)

shinyUI(fluidPage(
  sidebarPanel(
    checkboxGroupInput("variable", "Variable:", 
                       c("Cut" = "cut", "Color" = "color", "Depth" = "depth", "Clarity" = "clarity"),
                       selected = NULL)
    ),
  mainPanel(
    plotOutput("glm") 
  ))
)

