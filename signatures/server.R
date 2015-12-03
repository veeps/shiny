library(shiny)
library(reshape)
library(ggplot2)
library(ggvis)


setwd("~/git/a-fair-shot/signatures")
sign <- read.table("signature_count.csv", sep=",", header = TRUE, stringsAsFactors=FALSE)
#melt data
sign.m <- melt(sign, id.vars='Country')


# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  # Expression that generates a histogram. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should re-execute automatically
  #     when inputs change
  #  2) Its output type is a plot
  
  output$distPlot <- renderPlot({
    #plot histogram
    ggplot(sign.m, aes(Country, value)) +   
      geom_bar(aes(fill = variable), position = "dodge", stat="identity") +
      labs(y="Signatures") + theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
      guides(fill=guide_legend(title="Week of"))
    
  })
  
  output$signTable = renderDataTable({
    sign
  })
})