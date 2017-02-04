#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(datasets)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  

    output$result<- renderText({
            
        HEC <- as.data.frame(HairEyeColor)
        freq <- HEC$Freq[HEC$Hair == input$Hair  & HEC$Eye == input$Eye &
                           HEC$Sex == input$Sex]
        pct <- round((freq/sum(HEC$Freq))*100, digits = 1)
        
        paste("You are similar to ", pct, "% of the sample of Statistics students 
                  in Delaware")
    
       
    })
    
  
})
