library(shiny)
library(dygraphs)

shinyUI(fluidPage(
  titlePanel("Stock Option Chain"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Input a ticker and see the Call Option prices."),
      
      textInput("symb", label = h3("Input a Valid Stock Ticker"), value = "GE") 
    ),
    
    ### uncomment for static chart    
    ## mainPanel(plotOutput("plot"))
    
    ### uncomment for dygraphs chart
    mainPanel(DT::dataTableOutput("plot"))
  )
))