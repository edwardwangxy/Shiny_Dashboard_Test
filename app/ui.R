library(shinydashboard)
library(shiny)
library(DT)
library(plyr)
library(dplyr)
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
        selectInput('xcol', 'X Variable', names(airquality)[-c(5,6)],
                    selected=names(airquality)[[1]]),
        selectInput('ycol', 'Y Variable', names(airquality)[-c(5,6)],
                    selected=names(airquality)[[2]]),
        # actionButton('select2', 'Select the above variables.'),
        sliderInput("subsample", label = "Size of random samples",
                    min = 10, max = 90, value = 30, step = 10),
        actionButton('resetSelection',
                     label = "Click to reset row selection"
        ), # end of action button
        selectInput('sortvar', 'Sort Data', names(airquality)[-c(5,6)],
                    selected=names(airquality)[[4]]),
        actionButton('act_sort',
                     label = "Click to insertion sort data"
        ) # end of action button

      )
    ),
    dashboardBody(
      # Boxes need to be put in a row (or column)
      fluidRow(
        box(column(6,plotOutput("plot1", width = 450))),
        box(column(6, h1('select rows'),DT::dataTableOutput('x1',width = 450))),
        box(column(6, plotOutput('x2', width = 450))),
        verbatimTextOutput('info')
        #verbatimTextOutput("action")
      )
    )
  ))