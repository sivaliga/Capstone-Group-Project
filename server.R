library(shiny)
#library(plotrix)
#library(googleVis)
#library(shinydashboard)
#library(dplyr)
#library(leaflet)
#library(DT)
#library(tidyr)


shinyServer(function(input,output){

    output$leaders <- renderImage({
      filename <- normalizePath(file.path('C:/Users/spillai25/Documents/www',
                                        paste(input$leaders, '.png', sep = '')))
      list(src=filename)}, deleteFile = FALSE) 
    
    output$chart <- renderImage({
      filename <- normalizePath(file.path('C:/Users/spillai25/Documents/www',
                               paste(input$chart, '.png', sep = '')))
      list(src=filename)}, deleteFile = FALSE) 
    
    
    output$category <- renderTable({
      category <- switch (input$category,
                          state = state,
                          ethnic = ethnic,
                          age = age)})

    output$disability <- renderTable({
      disability <- switch (input$disability,
                            fizikal = fizikal, 
                            mental = mental,
                            learning = learning,
                            hearing = hearing,
                            visual = visual,
                            speech = speech,
                            others = others)
                        
        
    })
    
    output$children <- renderTable({
      stateFilter <- subset(children, children$STATE == input$children)
    })
      output$adult <- renderTable({
        stateFilter <- subset(adult, adult$STATE == input$adult)
      
    })
      

})






#          chartInput <- reactive({
#        switch (input$chart,
#                      "barchart" = barchart,
#                      "piechart" = piechart)
#        
#      })
#    
#      output$view <- renderGvis({
#        gvisPieChart(chartInput(),
#                     option=list(title=paste('Data:', input$region_sales)))
#        
#     })
#      
#    output$chart <- renderGvis(
#      chart <- gvisPieChart(region_sales, options = list(title = "Sales per region", width = 1000, height = 500))
#   )
#      head(age))
      


#    output$bar <- renderPlot(
#      bar2 <- tapply(ethnic$Test, list(ethnic$Registered.PWDs)),
#      barplot(bar2, beside = input$sidebar)
#    )

#    output$PwdbyState <- renderTable(
#      head(PwdbyState))
#    output$age <- renderTable(
#      head(age))
#    output$ethnic <- renderTable(
#      head(ethnic))


# add dataset # age <- read.csv(file.choose(), header=T)
