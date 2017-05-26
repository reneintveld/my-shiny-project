library(shiny)
shinyServer(function(input, output) {
    output$plot1 <- renderPlot({
        
        minX <- input$sliderX[1]
        maxX <- input$sliderX[2]
        minY <- input$sliderY[1]
        maxY <- input$sliderY[2]

        dataG <- trees$Girth
        dataH <- trees$Height
        dataV <- trees$Volume
        
        xlab <- ifelse(input$show_Girth, "Girth", "Volume")
        ylab <- ifelse(input$show_Height, "Height", "Volume")
        
        makeX <- ifelse(input$show_Girth, dataX <- dataG, dataX <- dataV)
        makeY <- ifelse(input$show_Height, dataY <- dataH, dataY <- dataV)
        
        
        plot(dataX, dataY, xlab = xlab, ylab = ylab, main = "Graph of the selected variables",
             xlim = c(minX,maxX), ylim = c(minY,maxY))
    })
})