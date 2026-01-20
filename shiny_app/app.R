# Test Shiny Application
# This is a simple Shiny app to demonstrate basic functionality

library(shiny)

# Define UI
ui <- fluidPage(
  # Application title
  titlePanel("Test Shiny Application"),
  
  # Sidebar with controls
  sidebarLayout(
    sidebarPanel(
      h3("Controls"),
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30),
      
      selectInput("color",
                  "Select color:",
                  choices = c("Blue" = "blue",
                             "Red" = "red",
                             "Green" = "green",
                             "Purple" = "purple"),
                  selected = "blue"),
      
      hr(),
      p("This is a test Shiny application for the class repository."),
      p("Adjust the slider and dropdown to see the histogram change.")
    ),
    
    # Main panel with output
    mainPanel(
      h3("Histogram of Random Data"),
      plotOutput("distPlot"),
      hr(),
      h4("Summary Statistics"),
      verbatimTextOutput("summary")
    )
  )
)

# Define server logic
server <- function(input, output) {
  
  # Generate random data
  data <- reactive({
    rnorm(500)
  })
  
  # Render histogram
  output$distPlot <- renderPlot({
    x <- data()
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    hist(x, 
         breaks = bins, 
         col = input$color, 
         border = "white",
         main = "Distribution of Random Normal Data",
         xlab = "Value",
         ylab = "Frequency")
  })
  
  # Render summary statistics
  output$summary <- renderPrint({
    summary(data())
  })
}

# Run the application
shinyApp(ui = ui, server = server)
