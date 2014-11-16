library(shiny)
library(useful)
library(stringr)
library(ggplot2)

shinyServer(function (input,output){
  output$glm <- renderPlot({plot(build.formula("price", unlist(input$variable)), data= diamonds)
})

})
# ?build.formula
# 
# lm(build.formula("price", unlist(input$variable)), data = diamonds)
# 
# ?str_split

# ?lm

# shinyServer(function (input,output){
#   output$glm <- renderText({paste(summary(lm(price ~ cut, data = diamonds)))
#   })
#   
# })