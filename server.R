library(quantmod)
library(dygraphs)
library(DT)

shinyServer(function(input, output) {
  
  dataInput <- reactive({
    
    prices <- getOptionChain(input$symb, auto.assign = FALSE)
    prices <- prices$calls
    
  })
  
  ### uncomment this section to see a static OHLC chart via quantmod
  ##   output$plot <- renderPlot({
  
  ##       prices <- dataInput()
  
  ## chartSeries(prices)
  
  ##       })
  ## })
  
  
  ### uncomment this to see an interactive plot via dygraphs
  output$plot <- DT::renderDataTable({
    
    prices <- dataInput()
datatable(prices)
    
  })
})