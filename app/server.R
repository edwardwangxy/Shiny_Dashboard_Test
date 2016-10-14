shinyServer(
  function(input, output) {
    output$plot1 <- renderPlot({
      if(input$xvar == "Day"){
        temp_date = c(1:153)
        if(input$yvar == "Ozone"){
          temp_ozone_table = data.frame(temp_date, airquality$Ozone)
          clean_ozone_table = temp_ozone_table[complete.cases(temp_ozone_table),]
          plot(clean_ozone_table,xlab="Day",ylab=input$yvar)
          lines(clean_ozone_table)
        }else
        if(input$yvar == "Solar.R"){
          temp_solar_table = data.frame(temp_date, airquality$Solar.R)
          clean_solar_table = temp_solar_table[complete.cases(temp_solar_table),]
          plot(clean_solar_table,xlab="Day",ylab=input$yvar)
          lines(clean_solar_table)
        }else{
          temp_date_2 = c(1:153)
          plot(temp_date_2, airquality[,input$yvar],xlab="Day",ylab=input$yvar)
          lines(temp_date_2, airquality[,input$yvar],xlab="Day",ylab=input$yvar)
        }
        
      #lines(dens, col = "blue")
      }else{
        if(input$yvar == "Ozone"){
          temp_ozone_table = data.frame(temp_date, airquality$Ozone)
          clean_ozone_table = temp_ozone_table[complete.cases(temp_ozone_table),]
          plot(clean_ozone_table,xlab="Day",ylab=input$yvar)
          lines(clean_ozone_table)
        }else
          if(input$yvar == "Solar.R"){
            temp_solar_table = data.frame(temp_date, airquality$Solar.R)
            clean_solar_table = temp_solar_table[complete.cases(temp_solar_table),]
            plot(clean_solar_table,xlab="Day",ylab=input$yvar)
            lines(clean_solar_table)
          }else{
            temp_date_2 = c(1:153)
            plot(temp_date_2, airquality[,input$yvar],xlab="Day",ylab=input$yvar)
            lines(temp_date_2, airquality[,input$yvar],xlab="Day",ylab=input$yvar)
          }
      }
    })
  
  })