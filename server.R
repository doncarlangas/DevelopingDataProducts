library(shiny)
data(mtcars)

shinyServer(
  function(input, output) {
    fit <- lm(qsec ~ hp + wt, data=mtcars)
    output$predict <- renderPrint({predict(fit,newdata = data.frame(hp = input$hp, wt = input$wt/1000))})
  }
)