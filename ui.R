library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("How long does it take for the car to travel 1/4 mile?"),
  sidebarPanel(
    sliderInput('hp', 'Horsepower',value = 200, min = 100, max = 500, step = 10,),
    sliderInput('wt', 'Weight(lb)',value = 3000, min = 1500, max = 4500, step = 100,)
   
  ),
  mainPanel(
    h3('Time in seconds to travel 1/4 mile'),
    verbatimTextOutput("predict"),
    h4('Help'),
    h6('You must introduce your car\'s horsepower and weight(in pounds) and you\'ll get the expected time your car will take to travel 1/4 mile.')
  )
))
