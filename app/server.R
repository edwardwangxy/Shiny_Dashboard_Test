shinyServer(
  function(input, output) {
    output$plot1 <- renderPlot({
      if(input$xvar == "Day"){
        temp_date = c(1:153)
        temp_data_day = data.frame(temp_date, airquality[input$yvar])
        clean_data_day = temp_data_day[complete.cases(temp_data_day),]
        colnames(clean_data_day) <- c("day","data")
        plot(clean_data_day,xlab="Day",ylab=input$yvar)
        lines(clean_data_day)
      }else{
        month_factor <- as.factor(airquality$Month)
        temp_data_month = data.frame(month_factor, airquality[input$yvar])
        clean_data_month = temp_data_month[complete.cases(temp_data_month),]
        colnames(clean_data_month) <- c("month","data")
        sum_data_month <- ddply(clean_data_month, .(month), summarize, mean=mean(data))
        plot(sum_data_month,xlab="Month",ylab=input$yvar)
        lines(sum_data_month)
      }
    })
  
    output$plot2 <- renderPlot({
      subtract_table <- dplyr::filter(airquality, Month==input$singlemonth)
      
    })
    
  })