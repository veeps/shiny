library(shiny)
library(useful)
library(stringr)

shinyServer(function (input,output){
  output$glm <- renderPlot({glm(price ~ input$variable, data = diamonds)
    
  })
  
})

?build.formula

lm(build.formula("price", str_split(input$variable)))

?str_split
