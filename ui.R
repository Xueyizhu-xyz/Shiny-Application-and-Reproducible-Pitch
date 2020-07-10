library(shiny)

# load dataset:
data("ToothGrowth")

shinyUI(fluidPage(
    titlePanel("The Effect of Vitamin C on Tooth Growth in Guinea Pigs"),
    sidebarLayout(
        sidebarPanel(
            selectInput("Supplement",
                        "Supplement",
                        choices = unique(ToothGrowth$supp))
        ),
        mainPanel(
            plotOutput("Plot")
        )
    )
))
