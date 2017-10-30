library(shiny) 
shinyUI(
    pageWithSidebar(
        # Application title
        headerPanel("Shiny App Project - BMI Calculator"),
        
        sidebarPanel(
            numericInput('weight', 'Enter your weight in pounds', 120) ,
            numericInput('height', 'Enter your height in inches', 65, min = 50, max = 100, step = 1),
            submitButton('Calculate BMI')
        ), 
        mainPanel(
            p('Body mass index (BMI) is a measure of body fat based on height and weight that applies to adult men and women.'),
            p('BMI can be used to indicate if you are overweight, obese, underweight or normal. A healthy BMI score is between 19 and 25.'),
            p('The World Health Organization (WHO) proposes the following classification for BMI Measure:'),
            tags$div(
                tags$ul(
                    tags$li('Underweight = <18.5'),
                    tags$li('Normal weight = 18.5–24.9'),
                    tags$li('Overweight = 25–29.9'),
                    tags$li('Obesity = BMI of 30 or greater')
                )
            ),
            
            h4('Calculating BMI based on values entered by you:'), 
            p('weight in pounds:'), verbatimTextOutput("inputweightvalue"),
            p('height in inches:'), verbatimTextOutput("inputheightvalue"),
            h4('Your BMI is:'),
            verbatimTextOutput("estimation"),
            p('It means that you are:'),strong(verbatimTextOutput("diagnostic"))
            
            
        )
        
    )   
)