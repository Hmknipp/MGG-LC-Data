library(shiny)
library(plotly)
library(DT)

navbarPage("GG MGG Explorer", id="nav",       
           tabPanel("Interactive map",
                    div(class="outer",
                        fluidRow(
                          column(8,
                                 plotlyOutput("map"),
                                 # Color labels go here
                                
                          column(4,
                                 checkboxInput("gg", "Gaia's Guide", TRUE),
                                 checkboxInput("mgg", "Bob Damron's Address Book", TRUE),
                                 checkboxInput("noncontiguous", "Include non-contiguous states", FALSE),
                                 selectInput("cityvalue", "Select Value", choices = unique(mgg.gg.data$geocode.value))
                          )
                        ),
                        DTOutput('dtable')
                    ),
           )
)