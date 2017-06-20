#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shinyDND)
navbarPage("Application",
           tabPanel("Direction",
                    h1("Matching Game of distribution & application"),
                    hr(),
                    hr(),
                    h3("Welcome to matching game. Instruction will be written later"),
                    hr(),
                    hr(),
                    hr(),
                    fluidRow(
                      column (5,
                              textOutput("text")
                        
                      ),
                      column(4,
                             actionButton("go","Go!")
                      ),
                      column(5,
                             textOutput("text3")
                        
                      )
                    )
                    #actionButton("go","Go!")
           ),
           
           tabPanel("Level 1",
                    conditionalPanel(
                      condition="input.go > 0",
                      fluidRow(
                        column(6,
                               h2("Level 1")
                        ),
                        column(4,
                               textOutput("timer2")),
                        column(2,
                               htmlOutput("timer1"),
                               tags$head(tags$style("#time1{
                                                    font-size: 20px
                                                    }"))
                        )
                               ),
                      fluidRow(
                        column(3,
                               h3("A"),
                               hr(),
                               hr(),
                               h4("Age at death from \nnatural causes in Germany ")),
                        column(3,
                               h3("B"),
                               hr(),
                               hr(),
                               h4("Weights of people at \na third grade father-daughter \ndance")),
                        column(3,
                               h3("C"),
                               hr(),
                               hr(),
                               h4(" Incomes of households in \nBaltimore, Maryland ")),
                        column(3,
                               h3("D"),
                               hr(),
                               hr(),
                               h4(" Difference between heights \nof two randomly selected \nwomen"))
                      ),
                      fluidRow(
                        column(3,
                               div(dragUI("div1","A", style = "background-color:orange", 
                                          class = "dragelement"), style = "margin-left:-70%")
                        ),
                        column(3,
                               div(dragUI("div2","B", style = "background-color:orange", 
                                          class = "dragelement"), style = "margin-left:-40%")
                        ),   
                        column(3,
                               div(dragUI("div3","C", style = "background-color:orange", 
                                          class = "dragelement"), style = "margin-left:40%")
                        ),    
                        column(3,
                               div(dragUI("div4","D", style = "background-color:orange", 
                                          class = "dragelement"), style = "margin-left:70%")
                        )
                      ),
                      fluidRow(
                        column(3,
                               hr(),
                               dropUI("di1", row_n = 1, col_n = 1,style = "background-color:lightgrey")),
                        column(3,
                               hr(),
                               dropUI("di2", row_n = 1, col_n = 1,style = "background-color:lightgrey")),
                        column(3,
                               hr(),
                               dropUI("di3", row_n = 1, col_n = 1,style = "background-color:lightgrey")),
                        column(3,
                               hr(),
                               dropUI("di4", row_n = 1, col_n = 1,style = "background-color:lightgrey"))
                        
                      ),
                      fluidRow(
                        column(3,
                                plotOutput("Histplot1")
                               ),
                               column(3,
                                      plotOutput("Histplot2")
                               ),
                               column(3,
                                      plotOutput("Histplot3")
                               ),
                               column(3,
                                      plotOutput("Histplot4"))
                        ),
                      fluidRow(
                        column(3,
                               wellPanel(
                                 htmlOutput('out1', style = "margin-left:50%"),
                                 tags$head(tags$style("#out1{
                                                      font-size: 20px;
                                                      font-style: italic}")))),
                        column(3,
                               wellPanel(
                                 htmlOutput('out2', style = "margin-left:50%"),
                                 tags$head(tags$style("#out2{
                                                      font-size: 20px;
                                                      font-style: italic}")))),
                        column(3,
                               wellPanel(
                                 htmlOutput('out3', style = "margin-left:50%"),
                                 tags$head(tags$style("#out3{
                                                      font-size: 20px;
                                                      font-style: italic}")))),
                        column(3,
                               wellPanel(
                                 htmlOutput('out4', style = "margin-left:50%"),
                                 tags$head(tags$style("#out4{
                                                      font-size: 20px;
                                                      font-style: italic}"))))
                                 ),
                      fluidRow(
                        column(8,
                               sidebarPanel(actionButton("h", "Submit Answer")),
                               mainPanel("Answer:", verbatimTextOutput("answer1"))),
                        column(4,
                               mainPanel("Points:", verbatimTextOutput("points1")))
                      )
                                 )),
           tabPanel("Level 2",
                    conditionalPanel(
                      condition="input.go > 0",
                      fluidRow(
                        column(6,
                               h2("Level 2")
                        ),
                        column(4,
                               textOutput("timer3")),
                        column(2,
                               textOutput("timer4")
                        )
                      ),
                      fluidRow(
                        column(3,
                               h3("A"),
                               hr(),
                               hr(),
                               h4("Distance to next mile marker \non turnpike for all the cars \nthat break down this year ")),
                        column(3,
                               h3("B"),
                               hr(),
                               hr(),
                               h4("Grades on an easy test")),
                        column(3,
                               h3("C"),
                               hr(),
                               hr(),
                               h4("# of cigarettes smoked \nyesterday by random student")),
                        column(3,
                               h3("D"),
                               hr(),
                               hr(),
                               h4(" Height of heels on shoes \nof all of the students at \na high school prom"))
                      ),
                      fluidRow(
                        column(3,
                               div(dragUI("div5","A", style = "background-color:orange", 
                                          class = "dragelement"), style = "margin-left:-70%")
                        ),
                        column(3,
                               div(dragUI("div6","B", style = "background-color:orange", 
                                          class = "dragelement"), style = "margin-left:-40%")
                        ),   
                        column(3,
                               div(dragUI("div7","C", style = "background-color:orange", 
                                          class = "dragelement"), style = "margin-left:40%")
                        ),    
                        column(3,
                               div(dragUI("div8","D", style = "background-color:orange", 
                                          class = "dragelement"), style = "margin-left:70%")
                        )
                      ),
                      fluidRow(
                        column(3,
                               hr(),
                               dropUI("di5", row_n = 1, col_n = 1,style = "background-color:lightgrey")),
                        column(3,
                               hr(),
                               dropUI("di6", row_n = 1, col_n = 1,style = "background-color:lightgrey")),
                        column(3,
                               hr(),
                               dropUI("di7", row_n = 1, col_n = 1,style = "background-color:lightgrey")),
                        column(3,
                               hr(),
                               dropUI("di8", row_n = 1, col_n = 1,style = "background-color:lightgrey"))
                        
                      ),
                      fluidRow(
                        column(3,
                               plotOutput("Histplot5")
                        ),
                        column(3,
                               plotOutput("Histplot6")
                        ),
                        column(3,
                               plotOutput("Histplot7")
                        ),
                        column(3,
                               plotOutput("Histplot8"))
                      ),
                      fluidRow(
                        column(3,
                               wellPanel(
                                 htmlOutput('out5', style = "margin-left:50%"))),
                        column(3,
                               wellPanel(
                                 htmlOutput('out6', style = "margin-left:50%"))),
                        column(3,
                               wellPanel(
                                 htmlOutput('out7', style = "margin-left:50%"))),
                        column(3,
                               wellPanel(
                                 htmlOutput('out8', style = "margin-left:50%")))
                      ),
                      fluidRow(
                        column(8,
                               sidebarPanel(actionButton("hh", "Submit Answer")),
                               mainPanel("Answer:", verbatimTextOutput("answer2"))),
                        column(4,
                               mainPanel("Points:", verbatimTextOutput("points2")))
                      )
                    )),
           tabPanel("Level 3",
                    conditionalPanel(
                      condition="input.go > 0",
                      fluidRow(
                        column(6,
                               h2("Level 3")
                        ),
                        column(4,
                               textOutput("timer5")),
                        column(2,
                               textOutput("timer6")
                        )
                      ),
                      
                      fluidRow(
                        column(3,
                               h3("A"),
                               hr(),
                               hr(),
                               h4("Amount of salt per liter \nfrom random bodies of \nwater at least 1000 acres \nin size ")),
                        column(3,
                               h3("B"),
                               hr(),
                               hr(),
                               h4("length of fish returned \nto lake by recreational fisherman \nnot allowed to keep fish \nunder 6 inches")),
                        column(3,
                               h3("C"),
                               hr(),
                               hr(),
                               h4(" # of Tweets today by \nrandomly chosen Twitter account ")),
                        column(3,
                               h3("D"),
                               hr(),
                               hr(),
                               h4("Number of seconds until \nyour digital clock advances \nto the next minute when \nyou wake up"))
                      ),
                      fluidRow(
                        column(3,
                               div(dragUI("div9","A", style = "background-color:orange", 
                                          class = "dragelement"), style = "margin-left:-70%")
                        ),
                        column(3,
                               div(dragUI("div10","B", style = "background-color:orange", 
                                          class = "dragelement"), style = "margin-left:-40%")
                        ),   
                        column(3,
                               div(dragUI("div11","C", style = "background-color:orange", 
                                          class = "dragelement"), style = "margin-left:40%")
                        ),    
                        column(3,
                               div(dragUI("div12","D", style = "background-color:orange", 
                                          class = "dragelement"), style = "margin-left:70%")
                        )
                      ),
                      fluidRow(
                        column(3,
                               hr(),
                               dropUI("di9", row_n = 1, col_n = 1,style = "background-color:lightgrey")),
                        column(3,
                               hr(),
                               dropUI("di10", row_n = 1, col_n = 1,style = "background-color:lightgrey")),
                        column(3,
                               hr(),
                               dropUI("di11", row_n = 1, col_n = 1,style = "background-color:lightgrey")),
                        column(3,
                               hr(),
                               dropUI("di12", row_n = 1, col_n = 1,style = "background-color:lightgrey"))
                        
                      ),
                      fluidRow(
                        column(3,
                               plotOutput("Histplot9")
                        ),
                        column(3,
                               plotOutput("Histplot10")
                        ),
                        column(3,
                               plotOutput("Histplot11")
                        ),
                        column(3,
                               plotOutput("Histplot12"))
                      ),
                      fluidRow(
                        column(3,
                               wellPanel(
                                 htmlOutput('out9', style = "margin-left:50%"))),
                        column(3,
                               wellPanel(
                                 htmlOutput('out10', style = "margin-left:50%"))),
                        column(3,
                               wellPanel(
                                 htmlOutput('out11', style = "margin-left:50%"))),
                        column(3,
                               wellPanel(
                                 htmlOutput('out12', style = "margin-left:50%")))
                      ),
                      fluidRow(
                        column(8,
                               sidebarPanel(actionButton("hhh", "Submit Answer")),
                               mainPanel("Answer:", verbatimTextOutput("answer3"))),
                        column(4,
                               mainPanel("Points:", verbatimTextOutput("points3")))
                      )
                    )),
           tabPanel("Level 4",
                    conditionalPanel(
                      condition="input.go > 0",
                      fluidRow(
                        column(6,
                               h2("Level 4")
                        ),
                        column(4,
                               textOutput("timer7")),
                        column(2,
                               textOutput("timer8")
                        )
                      ),
                      
                      fluidRow(
                        column(3,
                               h3("A"),
                               hr(),
                               hr(),
                               h4("Miles driven this year \nby Uber drivers ")),
                        column(3,
                               h3("B"),
                               hr(),
                               hr(),
                               h4("Weights of cartons of \nlarge eggs at a grocery store ")),
                        column(3,
                               h3("C"),
                               hr(),
                               hr(),
                               h4("Next year??s total snowfall \nfrom randomly selected town \nin either Alaska or Georgia")),
                        column(3,
                               h3("D"),
                               hr(),
                               hr(),
                               h4("Age of randomly chosen car \non the road"))
                      ),
                      fluidRow(
                        column(3,
                               div(dragUI("div13","A", style = "background-color:orange", 
                                          class = "dragelement"), style = "margin-left:-70%")
                        ),
                        column(3,
                               div(dragUI("div14","B", style = "background-color:orange", 
                                          class = "dragelement"), style = "margin-left:-40%")
                        ),   
                        column(3,
                               div(dragUI("div15","C", style = "background-color:orange", 
                                          class = "dragelement"), style = "margin-left:40%")
                        ),    
                        column(3,
                               div(dragUI("div16","D", style = "background-color:orange", 
                                          class = "dragelement"), style = "margin-left:70%")
                        )
                      ),
                      fluidRow(
                        column(3,
                               hr(),
                               dropUI("di13", row_n = 1, col_n = 1,style = "background-color:lightgrey")),
                        column(3,
                               hr(),
                               dropUI("di14", row_n = 1, col_n = 1,style = "background-color:lightgrey")),
                        column(3,
                               hr(),
                               dropUI("di15", row_n = 1, col_n = 1,style = "background-color:lightgrey")),
                        column(3,
                               hr(),
                               dropUI("di16", row_n = 1, col_n = 1,style = "background-color:lightgrey"))
                        
                      ),
                      fluidRow(
                        column(3,
                               plotOutput("Histplot13")
                        ),
                        column(3,
                               plotOutput("Histplot14")
                        ),
                        column(3,
                               plotOutput("Histplot15")
                        ),
                        column(3,
                               plotOutput("Histplot16"))
                      ),
                      fluidRow(
                        column(3,
                               wellPanel(
                                 htmlOutput('out13', style = "margin-left:50%"))),
                        column(3,
                               wellPanel(
                                 htmlOutput('out14', style = "margin-left:50%"))),
                        column(3,
                               wellPanel(
                                 htmlOutput('out15', style = "margin-left:50%"))),
                        column(3,
                               wellPanel(
                                 htmlOutput('out16', style = "margin-left:50%")))
                      ),
                      fluidRow(
                        column(8,
                               sidebarPanel(actionButton("hhhh", "Submit Answer")),
                               mainPanel("Answer:", verbatimTextOutput("answer4"))),
                        column(4,
                               mainPanel("Points:", verbatimTextOutput("points4")))
                      )
                    )),
           tabPanel("Level 5",
                    conditionalPanel(
                      condition="input.go > 0",
                      fluidRow(
                        column(6,
                               h2("Level 5")
                        ),
                        column(4,
                               textOutput("timer9")),
                        column(2,
                               textOutput("timer10")
                        )
                      ),
                      
                      fluidRow(
                        column(3,
                               h3("A"),
                               hr(),
                               hr(),
                               h4("bills ($) paid at a restaurant \nthat serves breakfast and \ndinner but not lunch ")),
                        column(3,
                               h3("B"),
                               hr(),
                               hr(),
                               h4("Packages of pretzels handed \nout for the planes leaving \nJFK airport tomorrow")),
                        column(3,
                               h3("C"),
                               hr(),
                               hr(),
                               h4(" Hours spent watching television \ntoday for students in Pennsylvania")),
                        column(3,
                               h3("D"),
                               hr(),
                               hr(),
                               h4("Apgar score of random newborn \n(Apgar = 0 to 10 rating on health \nwith 10 = perfect health) "))
                      ),
                      fluidRow(
                        column(3,
                               div(dragUI("div17","A", style = "background-color:orange", 
                                          class = "dragelement"), style = "margin-left:-70%")
                        ),
                        column(3,
                               div(dragUI("div18","B", style = "background-color:orange", 
                                          class = "dragelement"), style = "margin-left:-40%")
                        ),   
                        column(3,
                               div(dragUI("div19","C", style = "background-color:orange", 
                                          class = "dragelement"), style = "margin-left:40%")
                        ),    
                        column(3,
                               div(dragUI("div20","D", style = "background-color:orange", 
                                          class = "dragelement"), style = "margin-left:70%")
                        )
                      ),
                      fluidRow(
                        column(3,
                               hr(),
                               dropUI("di17", row_n = 1, col_n = 1,style = "background-color:lightgrey")),
                        column(3,
                               hr(),
                               dropUI("di18", row_n = 1, col_n = 1,style = "background-color:lightgrey")),
                        column(3,
                               hr(),
                               dropUI("di19", row_n = 1, col_n = 1,style = "background-color:lightgrey")),
                        column(3,
                               hr(),
                               dropUI("di20", row_n = 1, col_n = 1,style = "background-color:lightgrey"))
                        
                      ),
                      fluidRow(
                        column(3,
                               plotOutput("Histplot17")
                        ),
                        column(3,
                               plotOutput("Histplot18")
                        ),
                        column(3,
                               plotOutput("Histplot19")
                        ),
                        column(3,
                               plotOutput("Histplot20"))
                      ),
                      fluidRow(
                        column(3,
                               wellPanel(
                                 htmlOutput('out17', style = "margin-left:50%"))),
                        column(3,
                               wellPanel(
                                 htmlOutput('out18', style = "margin-left:50%"))),
                        column(3,
                               wellPanel(
                                 htmlOutput('out19', style = "margin-left:50%"))),
                        column(3,
                               wellPanel(
                                 htmlOutput('out20', style = "margin-left:50%")))
                      ),
                      fluidRow(
                        column(8,
                               sidebarPanel(actionButton("hhhhh", "Submit Answer")),
                               mainPanel("Answer:", verbatimTextOutput("answer5"))),
                        column(4,
                               fluidPage(
                                 mainPanel("Points:", verbatimTextOutput("points5")),
                                 actionButton("hhhhhh", "Stop")
                               ))
                      ),
                      fluidRow(
                        column(3,
                               textOutput("qq")
                        ),
                        column(6,
                               textOutput("hello"),
                               tags$head(tags$style("#hello{color: red;
                                                    font-size: 50px;
                                                    font-style: italic}"))),
                        column(3,
                               textOutput("qqq"))
                               )
                      
                        ))
                        )

