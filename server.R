library(shiny)

# load dataset:
data("ToothGrowth")

shinyServer(function(input, output) {
    output$Plot <- renderPlot({
    boxplot(len ~ dose, data = ToothGrowth, 
            boxwex = 0.25, at = 1:3 - 0.2, 
            subset = supp == input$Supplement, 
            main = "Guinea Pigs' Tooth Growth",
            xlab = "Vitamin C dose mg",
            ylab = "tooth length",
            xlim = c(0.5, 3.5), 
            ylim = c(0, 35))
    })

})
