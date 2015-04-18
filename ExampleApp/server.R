library(shiny)

shinyServer(function(input, output){
  outputsliderPlot <- renderPlot({
    if (is.null(input$mean) || is.null(input$stdev)) return ()
    x <- seq(-5,5,0.1)
    plot (c(-5,5), c(0,1). type="n", xlab=NA, ylab=NA, bty='n')
    lines(x, )
  })
})