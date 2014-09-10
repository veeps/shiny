library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  output$images <- renderText({sprintf("image%s.gif", input$gifs)})
  output$pics <- renderImage({
  filename <- normalizePath( file.path( './www', paste( sprintf("image%s.gif", input$gifs))))
  list(src= filename)
  }, deleteFile = FALSE)
# output$images <- renderImage({
#   filename <-  normalizePath(file.path('./www',
#                                        paste(input$gifs)))
# })
})