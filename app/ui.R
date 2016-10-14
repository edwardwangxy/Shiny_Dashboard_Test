library(shinydashboard)
library(shiny)
library(DT)
shinyUI(
  
  dashboardPage(
    dashboardHeader(title = "Air Quality Dashboard"),
    dashboardSidebar(
      fluidPage(
        title = 'Graph Option',
        selectInput('yvar', 'Pick Data', names(airquality)[-c(5,6)],
                    selected=names(airquality)[[4]]),
        selectInput('xvar', 'Pick Length', names(airquality)[c(5,6)],
                    selected=names(airquality)[[6]]),
        # actionButton('select2', 'Select the above variables.'),
        sliderInput("subsample", label = "Size of random samples",
                    min = 5, max = 50, value = 10, step = 1),
        actionButton('resetSelection',
                     label = "Click to reset row selection"
        ) # end of action button

      )
    ),
    dashboardBody(
      # Boxes need to be put in a row (or column)
      fluidRow(
        box(plotOutput("plot1", height = 300)),
        box(plotOutput("plot2", height = 300)),
        verbatimTextOutput("action")
      )
    )
  ))