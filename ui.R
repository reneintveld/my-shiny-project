library(shiny)
shinyUI(fluidPage(
    titlePanel("Plot a scatter plot of any 2 variables of the trees database"),
    sidebarLayout(
        sidebarPanel(
            checkboxInput("show_Girth", "Show/Hide Girth variable", value = TRUE),
            checkboxInput("show_Height", "Show/Hide Height variable", value = TRUE),
            checkboxInput("show_Volume", "Show/Hide Volume variable", value = TRUE),
            
            sliderInput("sliderX", "Pick Minimum and Maximum X Values",
                        0, 100, value = c(0, 100)),
            sliderInput("sliderY", "Pick Minimum and Maximum Y Values",
                        0, 100, value = c(0, 100))

        ),
        mainPanel(
            plotOutput("plot1"), h6("For supporting documentation of this app see https://github.com/reneintveld/my-shiny-project")
        )
    )
))