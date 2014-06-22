#library(shiny)
# shinyServer(
#   function(input, output) {
    output$newBar <- renderPlot({
      amount <- rep(0, 50)
      amount[1] <- input$init_invest
      for (i in 1:49)  {
        amount[i+1] <- amount[i] * (1 + input$income_rate /100) - input$annual_spend * (1 + input$inflation_rate /100)
        
        if (amount[i+1] < 0)  { amount[i+1] = 0 }       
      }
      names <- (1:50)
      barplot(amount, names.arg=names, col="wheat", main="Amount of Savings and Investments at Start of Year")
      
      
    })
#   }
# )
