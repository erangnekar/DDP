#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Similarities to a Sample of Statistics Students in Delaware"),
  
  # Three Dropdown menus to select hair color, eye color, and sex
  sidebarLayout(
    sidebarPanel(
      radioButtons("Hair",
                   "Select Your Hair Color:",
                  c("Black", "Blond", "Brown", "Red")),
      radioButtons("Eye", "Select Your Eye Color:",
                  c("Blue", "Brown", "Green", "Hazel")),
      radioButtons("Sex", "Select Your Sex:",
                  c("Female", "Male"))
      
 
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       textOutput("result")
    )
  )
))
