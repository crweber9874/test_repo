# Test Shiny Application

This is a simple test Shiny application demonstrating basic interactive features.

## Features

- Interactive histogram with adjustable number of bins
- Color selection for the plot
- Summary statistics display
- Responsive layout

## Running the App

### From R Console

```r
# Make sure shiny is installed
install.packages("shiny")

# Run the app
shiny::runApp("shiny_app")
```

### From RStudio

1. Open the `app.R` file in RStudio
2. Click the "Run App" button in the top right of the editor

## What It Does

The application:
1. Generates 500 random numbers from a normal distribution
2. Creates a histogram with user-specified number of bins
3. Allows users to choose the color of the histogram
4. Displays summary statistics of the data

## Learning Objectives

This app demonstrates:
- Basic Shiny app structure (UI and Server)
- Reactive programming
- User input controls (sliders, dropdowns)
- Output rendering (plots, text)
- Layout with sidebar and main panel

## Customization

Feel free to modify this app to:
- Add more input controls
- Create different types of plots
- Use your own data from the `data/` folder
- Add more sophisticated statistical analyses
