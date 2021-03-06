library(shiny)
library(shinythemes)

shinyUI(fluidPage(theme = shinytheme("cerulean"),
                  
                  
                  titlePanel("Iskalnik po vseh vojnah od leta 1800"),
                  
                  mainPanel(
                    tabsetPanel(
                      tabPanel("Iskanje po sodelujocih",
                               
                               sidebarPanel(
                                 uiOutput("izbor.sodelujoci")
                               ),
                               mainPanel(DT::dataTableOutput("sodel"), width=12)
                      
                      
                      
                      
                    ),
                      tabPanel("Iskanje po vojnah",
                               
                               sidebarPanel(
                                           sliderInput("min_max",
                                             "Stevilo zrtev:",
                                             min = 0,
                                             max = 17000000,
                                             value = c(0,17000000),
                                             step = 1,
                                             post = "",
                                             sep = ".")
                               ),
                               mainPanel(DT::dataTableOutput("voj"), width=12)
                               
                      )
                      ))
                      
                      
                      
                  )
                  
)



