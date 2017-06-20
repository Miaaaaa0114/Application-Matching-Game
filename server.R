#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

function(input, output, session) {
  output$Histplot1 <- renderPlot({
    # N <- 10000
    # x <- rnbinom(N, 10, .5)
    curve(dbeta(x,4,4),xlim=c(0,1), col='red', lwd =3)
  })
  output$Histplot2 <- renderPlot({
    # N <- 1000
    # x <- rnbinom(N, 1000, .5)
    # hist(x, 
    #      xlim=c(min(x),max(x)), probability=T, nclass=max(x)-min(x)+1, 
    #      col='lightblue', border = 'lightblue', xlab=' ', ylab=' ', axes=F
    # )
    # lines(density(x,bw=10), col='red', lwd=3)
    curve(dbeta(x,8,4),xlim=c(0,1), col='red', lwd =3)
  })
  output$Histplot3 <- renderPlot({
    curve(dbeta(x,4,8),xlim=c(0,1), col='red', lwd =3, bw = 10)
    # hist(rbeta(10000,5,2),
    #      col='lightblue', xlab=' ', ylab=' ', axes=F)
 #   lines(density(rbeta(10000,5,2),bw=1), col='red', lwd=3)
  })
  output$Histplot4 <- renderPlot({
    # N <- 10
    # x <- rnbinom(N, 1000, .5)
    # hist(x, 
    #      xlim=c(0,1), probability=T, nclass=max(x)-min(x)+1, 
    #      col='lightblue', border = 'lightblue', xlab=' ', ylab=' ', axes=F
    # )
    # lines(density(x,bw=10), col='red', lwd=3)
    mu1 <- log(1)   
    mu2 <- log(100)
    sig1 <- log(3)
    sig2 <- log(3)
    cpct <- 0.4   
    n <- 10000
    bimodalDistFunc <- function (n,cpct, mu1, mu2, sig1, sig2) {
      y0 <- rlnorm(n,mean=mu1, sd = sig1)
      y1 <- rlnorm(n,mean=mu2, sd = sig2)
      
      flag <- rbinom(n,size=1,prob=cpct)
      y <- y0*(1 - flag) + y1*flag 
    }
    
    bimodalData <- bimodalDistFunc(n=10000,cpct,mu1,mu2, sig1,sig2)
    abline(hist(log(bimodalData), col = 'red', border = 'red'))
    #lines(density(x,bw=5), col='red', lwd=3)
    # curve(dbeta(x,8,4),xlim=c(0,1), col='red', lwd =3)
  }) 
  output$Histplot5 <- renderPlot({
    # N <- 10000
    # x <- rnbinom(N, 10, .5)
    curve(dbeta(x,4,4),xlim=c(0,1), col='red', lwd =3)
  })
  output$Histplot6 <- renderPlot({
    # N <- 1000
    # x <- rnbinom(N, 1000, .5)
    # hist(x, 
    #      xlim=c(0,1), probability=T, nclass=max(x)-min(x)+1, 
    #      col='lightblue', border = 'lightblue', xlab=' ', ylab=' ', axes=F
    # )
    # lines(density(x,bw=10), col='red', lwd=3)
    curve(dbeta(x,8,4),xlim=c(0,1), col='red', lwd =3)
  })
  output$Histplot7 <- renderPlot({
    curve(dbeta(x,4,8),xlim=c(0,1), col='red', lwd =3, bw = 10)
    # hist(rbeta(10000,5,2),
    #      col='lightblue', xlab=' ', ylab=' ', axes=F)
    #   lines(density(rbeta(10000,5,2),bw=1), col='red', lwd=3)
  })
  output$Histplot8 <- renderPlot({
    # N <- 10
    # x <- rnbinom(N, 1000, .5)
    # hist(x, 
    #      xlim=c(0,1), probability=T, nclass=max(x)-min(x)+1, 
    #      col='lightblue', border = 'lightblue', xlab=' ', ylab=' ', axes=F
    # )
    # lines(density(x,bw=10), col='red', lwd=3)
    mu1 <- log(1)   
    mu2 <- log(100)
    sig1 <- log(3)
    sig2 <- log(3)
    cpct <- 0.4   
    n <- 10000
    bimodalDistFunc <- function (n,cpct, mu1, mu2, sig1, sig2) {
      y0 <- rlnorm(n,mean=mu1, sd = sig1)
      y1 <- rlnorm(n,mean=mu2, sd = sig2)
      
      flag <- rbinom(n,size=1,prob=cpct)
      y <- y0*(1 - flag) + y1*flag 
    }
    
    bimodalData <- bimodalDistFunc(n=10000,cpct,mu1,mu2, sig1,sig2)
    hist(log(bimodalData), col = 'red', border = 'red')
    #lines(density(x,bw=5), col='red', lwd=3)
    # curve(dbeta(x,8,4),xlim=c(0,1), col='red', lwd =3)
  }) 
  output$Histplot12 <- renderPlot({
    # N <- 10000
    # x <- rnbinom(N, 10, .5)
    curve(dbeta(x,4,4),xlim=c(0,1), col='red', lwd =3)
  })
  output$Histplot11 <- renderPlot({
    # N <- 1000
    # x <- rnbinom(N, 1000, .5)
    # hist(x, 
    #      xlim=c(min(x),max(x)), probability=T, nclass=max(x)-min(x)+1, 
    #      col='lightblue', border = 'lightblue', xlab=' ', ylab=' ', axes=F
    # )
    # lines(density(x,bw=10), col='red', lwd=3)
    curve(dbeta(x,8,4),xlim=c(0,1), col='red', lwd =3)
  })
  output$Histplot10 <- renderPlot({
    curve(dbeta(x,4,8),xlim=c(0,1), col='red', lwd =3, bw = 10)
    # hist(rbeta(10000,5,2),
    #      col='lightblue', xlab=' ', ylab=' ', axes=F)
    #   lines(density(rbeta(10000,5,2),bw=1), col='red', lwd=3)
  })
  output$Histplot9 <- renderPlot({
    # N <- 10
    # x <- rnbinom(N, 1000, .5)
    # hist(x, 
    #      xlim=c(min(x),max(x)), probability=T, nclass=max(x)-min(x)+1, 
    #      col='lightblue', border = 'lightblue', xlab=' ', ylab=' ', axes=F
    # )
    # lines(density(x,bw=10), col='red', lwd=3)
    mu1 <- log(1)   
    mu2 <- log(100)
    sig1 <- log(3)
    sig2 <- log(3)
    cpct <- 0.4   
    n <- 10000
    bimodalDistFunc <- function (n,cpct, mu1, mu2, sig1, sig2) {
      y0 <- rlnorm(n,mean=mu1, sd = sig1)
      y1 <- rlnorm(n,mean=mu2, sd = sig2)
      
      flag <- rbinom(n,size=1,prob=cpct)
      y <- y0*(1 - flag) + y1*flag 
    }
    
    bimodalData <- bimodalDistFunc(n=10000,cpct,mu1,mu2, sig1,sig2)
    hist(log(bimodalData), col = 'red', border = 'red')
    #lines(density(x,bw=5), col='red', lwd=3)
    # curve(dbeta(x,8,4),xlim=c(min(x),max(x)), col='red', lwd =3)
  }) 
  output$Histplot16 <- renderPlot({
    # N <- 10000
    # x <- rnbinom(N, 10, .5)
    curve(dbeta(x,4,4),xlim=c(0,1), col='red', lwd =3)
  })
  output$Histplot15 <- renderPlot({
    # N <- 1000
    # x <- rnbinom(N, 1000, .5)
    # hist(x, 
    #      xlim=c(min(x),max(x)), probability=T, nclass=max(x)-min(x)+1, 
    #      col='lightblue', border = 'lightblue', xlab=' ', ylab=' ', axes=F
    # )
    # lines(density(x,bw=10), col='red', lwd=3)
    curve(dbeta(x,8,4),xlim=c(0,1), col='red', lwd =3)
  })
  output$Histplot14 <- renderPlot({
    curve(dbeta(x,4,8),xlim=c(0,1), col='red', lwd =3, bw = 10)
    # hist(rbeta(10000,5,2),
    #      col='lightblue', xlab=' ', ylab=' ', axes=F)
    #   lines(density(rbeta(10000,5,2),bw=1), col='red', lwd=3)
  })
  output$Histplot13 <- renderPlot({
    # N <- 10
    # x <- rnbinom(N, 1000, .5)
    # hist(x, 
    #      xlim=c(min(x),max(x)), probability=T, nclass=max(x)-min(x)+1, 
    #      col='lightblue', border = 'lightblue', xlab=' ', ylab=' ', axes=F
    # )
    # lines(density(x,bw=10), col='red', lwd=3)
    mu1 <- log(1)   
    mu2 <- log(100)
    sig1 <- log(3)
    sig2 <- log(3)
    cpct <- 0.4   
    n <- 10000
    bimodalDistFunc <- function (n,cpct, mu1, mu2, sig1, sig2) {
      y0 <- rlnorm(n,mean=mu1, sd = sig1)
      y1 <- rlnorm(n,mean=mu2, sd = sig2)
      
      flag <- rbinom(n,size=1,prob=cpct)
      y <- y0*(1 - flag) + y1*flag 
    }
    
    bimodalData <- bimodalDistFunc(n=10000,cpct,mu1,mu2, sig1,sig2)
    hist(log(bimodalData), col = 'red', border = 'red')
    #lines(density(x,bw=5), col='red', lwd=3)
    # curve(dbeta(x,8,4),xlim=c(min(x),max(x)), col='red', lwd =3)
  })   
  output$Histplot20 <- renderPlot({
    # N <- 10000
    # x <- rnbinom(N, 10, .5)
    curve(dbeta(x,4,4),xlim=c(0,1), col='red', lwd =3)
  })
  output$Histplot19 <- renderPlot({
    # N <- 1000
    # x <- rnbinom(N, 1000, .5)
    # hist(x, 
    #      xlim=c(min(x),max(x)), probability=T, nclass=max(x)-min(x)+1, 
    #      col='lightblue', border = 'lightblue', xlab=' ', ylab=' ', axes=F
    # )
    # lines(density(x,bw=10), col='red', lwd=3)
    curve(dbeta(x,8,4),xlim=c(0,1), col='red', lwd =3)
  })
  output$Histplot18 <- renderPlot({
    curve(dbeta(x,4,8),xlim=c(0,1), col='red', lwd =3, bw = 10)
    # hist(rbeta(10000,5,2),
    #      col='lightblue', xlab=' ', ylab=' ', axes=F)
    #   lines(density(rbeta(10000,5,2),bw=1), col='red', lwd=3)
  })
  output$Histplot17 <- renderPlot({
    # N <- 10
    # x <- rnbinom(N, 1000, .5)
    # hist(x, 
    #      xlim=c(min(x),max(x)), probability=T, nclass=max(x)-min(x)+1, 
    #      col='lightblue', border = 'lightblue', xlab=' ', ylab=' ', axes=F
    # )
    # lines(density(x,bw=10), col='red', lwd=3)
    mu1 <- log(1)   
    mu2 <- log(100)
    sig1 <- log(3)
    sig2 <- log(3)
    cpct <- 0.4   
    n <- 10000
    bimodalDistFunc <- function (n,cpct, mu1, mu2, sig1, sig2) {
      y0 <- rlnorm(n,mean=mu1, sd = sig1)
      y1 <- rlnorm(n,mean=mu2, sd = sig2)
      
      flag <- rbinom(n,size=1,prob=cpct)
      y <- y0*(1 - flag) + y1*flag 
    }
    
    bimodalData <- bimodalDistFunc(n=10000,cpct,mu1,mu2, sig1,sig2)
    hist(log(bimodalData), col = 'red', border = 'red')
    #lines(density(x,bw=5), col='red', lwd=3)
    # curve(dbeta(x,8,4),xlim=c(0,1), col='red', lwd =3)
  }) 
# 
#   observe({
#     if (input$h == 1){
#       observeEvent(input$di1,{
#         if (input$di1 == "D"){
#           output$out1 = renderText(
#             paste("<span style= \" color: black\"> Correct! </span>"))
#           
#         }
#         else{
#           output$out1 = renderText(
#             paste("<span style= \" color: red\"> False </span>"))
#         }
#       })
#       observeEvent(input$di2,{
#         if (input$di2 == "B"){
#           output$out2 = renderText(
#             paste("<span style= \" color: black\"> Correct! </span>"))
#         }
#         else{
#           output$out2 = renderText(
#             paste("<span style= \" color: red\"> False </span>"))
#         }
#       })
#       observeEvent(input$di3,{
#         if (input$di3 == "A"){
#           output$out3 = renderText(
#             paste("<span style= \" color: black\"> Correct! </span>"))
#         }
#         else{
#           output$out3 = renderText(
#             paste("<span style= \" color: red\"> False </span>"))
#         }
#       })   
#       observeEvent(input$di4,{
#         if (input$di4 == "C"){
#           output$out4 = renderText(
#             paste("<span style= \" color: black\"> Correct! </span>"))
#         }
#         else{
#           output$out4 = renderText(
#             paste("<span style= \" color: red\"> False </span>"))
#         }
#       })
#       output$answer1 = renderText(
#         paste("The correct answers of Level 1: D B A C"))
#     }
#   })
#   observe({
#     if (input$h == "1"){
#       output$points1 <- renderPrint({
#         score1 = c()
#         score2 = c()
#         score3 = c()
#         score4 = c()
#         if (input$di1 == "D"){
#           score1 = c(score1,5)
#         }
#         else{
#           score1 = c(score1,0)
#         }
#         if (input$di2 == "B"){
#           score2 = c(score2, 5)}
#         else{
#           score2 = c(score2, 0)}
#         if (input$di3 == "A"){
#           score3 = c(score3, 5)}
#         else{
#           score3 = c(score3, 0)}
#         
#         if (input$di4 == "C"){
#           score4 = c(score4, 5)}
#         else{
#           score4 = c(score4, 0)}
#         
#         
#         cat("Your socre is:","\n",sum(c(score1,score2,score3,score4)), "/ 20 in level 1")
#       })
#     }}
#   )
#   observe({
#     if (input$hh == 1){
#       observeEvent(input$di5,{
#         if (input$di5 == "D"){
#           output$out5 = renderText(
#             paste("<span style= \" color: black\"> Correct! </span>"))
#           
#         }
#         else{
#           output$out5 = renderText(
#             paste("<span style= \" color: red\"> False </span>"))
#         }
#       })
#       observeEvent(input$di6,{
#         if (input$di6 == "C"){
#           output$out6 = renderText(
#             paste("<span style= \" color: black\"> Correct! </span>"))
#         }
#         else{
#           output$out6 = renderText(
#             paste("<span style= \" color: red\"> False </span>"))
#         }
#       })
#       observeEvent(input$di7,{
#         if (input$di7 == "A"){
#           output$out7 = renderText(
#             paste("<span style= \" color: black\"> Correct! </span>"))
#         }
#         else{
#           output$out7 = renderText(
#             paste("<span style= \" color: red\"> False </span>"))
#         }
#       })
#       observeEvent(input$di8,{
#         if (input$di8 == "B"){
#           output$out8 = renderText(
#             paste("<span style= \" color: black\"> Correct! </span>"))
#         }
#         else{
#           output$out8 = renderText(
#             paste("<span style= \" color: red\"> False </span>"))
#         }
#       })
#       output$answer2 = renderText(
#         paste("The correct answers of Level 2: D C A B"))
#     }
#   })
#   observe({
#     if (input$hh == "1"){
#       output$points2 <- renderPrint({
#         score5 = c()
#         score6 = c()
#         score7 = c()
#         score8 = c()
#         if (input$di5 == "D"){
#           score5 = c(score5,5)
#         }
#         else{
#           score5 = c(score5,0)
#         }
#         if (input$di6 == "C"){
#           score6 = c(score6, 5)}
#         else{
#           score6 = c(score6, 0)}
#         if (input$di7 == "A"){
#           score7 = c(score7, 5)}
#         else{
#           score7 = c(score7, 0)}
#         
#         if (input$di8 == "B"){
#           score8 = c(score8, 5)}
#         else{
#           score8 = c(score8, 0)}
#         
#         
#         cat("Your socre is:","\n",sum(c(score5,score6,score7,score8)), "/ 20 in level 2")
#       })
#     }}
#   )
#   
#   observe({
#     if (input$hhh == 1){
#       observeEvent(input$di9,{
#         if (input$di9 == "A"){
#           output$out9 = renderText(
#             paste("<span style= \" color: black\"> Correct! </span>"))
#           
#         }
#         else{
#           output$out9 = renderText(
#             paste("<span style= \" color: red\"> False </span>"))
#         }
#       })
#       observeEvent(input$di10,{
#         if (input$di10 == "B"){
#           output$out10 = renderText(
#             paste("<span style= \" color: black\"> Correct! </span>"))
#         }
#         else{
#           output$out10 = renderText(
#             paste("<span style= \" color: red\"> False </span>"))
#         }
#       })
#       observeEvent(input$di11,{
#         if (input$di11 == "C"){
#           output$out11 = renderText(
#             paste("<span style= \" color: black\"> Correct! </span>"))
#         }
#         else{
#           output$out11 = renderText(
#             paste("<span style= \" color: red\"> False </span>"))
#         }
#       })
#       observeEvent(input$di12,{
#         if (input$di12 == "D"){
#           output$out12 = renderText(
#             paste("<span style= \" color: black\"> Correct! </span>"))
#         }
#         else{
#           output$out12 = renderText(
#             paste("<span style= \" color: red\"> False </span>"))
#         }
#       })
#       output$answer3 = renderText(
#         paste("The correct answers of Level 3: A B C D"))
#     }
#   })
#   observe({
#     if (input$hhh == "1"){
#       output$points3 <- renderPrint({
#         score9 = c()
#         score10 = c()
#         score11 = c()
#         score12 = c()
#         if (input$di9 == "A"){
#           score9 = c(score9,5)
#         }
#         else{
#           score9 = c(score9,0)
#         }
#         if (input$di10 == "B"){
#           score10 = c(score10, 5)}
#         else{
#           score10= c(score10, 0)}
#         if (input$di11 == "C"){
#           score11 = c(score11, 5)}
#         else{
#           score11 = c(score11, 0)}
#         
#         if (input$di12 == "D"){
#           score12 = c(score12, 5)}
#         else{
#           score12 = c(score12, 0)}
#         
#         
#         cat("Your socre is:","\n",sum(c(score9,score10,score11,score12)), "/ 20 in level 3")
#       })
#     }}
#   )
#   
#   observe({
#     if (input$hhhh == 1){
#       observeEvent(input$di13,{
#         if (input$di13 == "C"){
#           output$out13 = renderText(
#             paste("<span style= \" color: black\"> Correct! </span>"))
#           
#         }
#         else{
#           output$out13 = renderText(
#             paste("<span style= \" color: red\"> False </span>"))
#         }
#       })
#       observeEvent(input$di14,{
#         if (input$di14 == "D"){
#           output$out14 = renderText(
#             paste("<span style= \" color: black\"> Correct! </span>"))
#         }
#         else{
#           output$out14 = renderText(
#             paste("<span style= \" color: red\"> False </span>"))
#         }
#       })
#       observeEvent(input$di15,{
#         if (input$di15 == "B"){
#           output$out15 = renderText(
#             paste("<span style= \" color: black\"> Correct! </span>"))
#         }
#         else{
#           output$out15 = renderText(
#             paste("<span style= \" color: red\"> False </span>"))
#         }
#       })
#       observeEvent(input$di16,{
#         if (input$di16 == "A"){
#           output$out16 = renderText(
#             paste("<span style= \" color: black\"> Correct! </span>"))
#         }
#         else{
#           output$out16 = renderText(
#             paste("<span style= \" color: red\"> False </span>"))
#         }
#       })
#       output$answer4 = renderText(
#         paste("The correct answers of Level 4: C D B A"))
#     }
#   })
#   observe({
#     if (input$hhhh == "1"){
#       output$points4 <- renderPrint({
#         score13 = c()
#         score14 = c()
#         score15 = c()
#         score16 = c()
#         if (input$di13 == "C"){
#           score13 = c(score13,5)
#         }
#         else{
#           score13 = c(score13,0)
#         }
#         if (input$di14 == "D"){
#           score14 = c(score14, 5)}
#         else{
#           score14 = c(score14, 0)}
#         if (input$di15 == "B"){
#           score15 = c(score15, 5)}
#         else{
#           score15 = c(score15, 0)}
#         
#         if (input$di16 == "A"){
#           score16 = c(score16, 5)}
#         else{
#           score16 = c(score16, 0)}
#         
#         
#         cat("Your socre is:","\n",sum(c(score13,score14,score15,score16)), "/ 20 in level 4")
#       })
#     }}
#   )
#   observe({
#     if (input$hhhhh == 1){
#       observeEvent(input$di17,{
#         if (input$di17 == "B"){
#           output$out17 = renderText(
#             paste("<span style= \" color: black\"> Correct! </span>"))
#           
#         }
#         else{
#           output$out17 = renderText(
#             paste("<span style= \" color: red\"> False </span>"))
#         }
#       })
#       observeEvent(input$di18,{
#         if (input$di18 == "A"){
#           output$out18 = renderText(
#             paste("<span style= \" color: black\"> Correct! </span>"))
#         }
#         else{
#           output$out18 = renderText(
#             paste("<span style= \" color: red\"> False </span>"))
#         }
#       })
#       observeEvent(input$di19,{
#         if (input$di19 == "D"){
#           output$out19 = renderText(
#             paste("<span style= \" color: black\"> Correct! </span>"))
#         }
#         else{
#           output$out19 = renderText(
#             paste("<span style= \" color: red\"> False </span>"))
#         }
#       })
#       observeEvent(input$di20,{
#         if (input$di20 == "C"){
#           output$out20 = renderText(
#             paste("<span style= \" color: black\"> Correct! </span>"))
#         }
#         else{
#           output$out20 = renderText(
#             paste("<span style= \" color: red\"> False </span>"))
#         }
#       })
#       output$answer5 = renderText(
#         paste("The correct answers of Level 5: B A D C"))
#     }
#   })
#   observe({
#     if (input$hhhhh == "1"){
#       output$points5 <- renderPrint({
#         score17 = c()
#         score18 = c()
#         score19 = c()
#         score20 = c()
#         if (input$di17 == "B"){
#           score17 = c(score17,5)
#         }
#         else{
#           score17 = c(score17,0)
#         }
#         if (input$di18 == "A"){
#           score18 = c(score18, 5)}
#         else{
#           score18 = c(score18, 0)}
#         if (input$di19 == "D"){
#           score19 = c(score19, 5)}
#         else{
#           score19 = c(score19, 0)}
#         
#         if (input$di20 == "C"){
#           score20 = c(score20, 5)}
#         else{
#           score20 = c(score20, 0)}
#         
#         
#         cat("Your socre is:","\n",sum(c(score17,score18,score19,score20)), "/ 20 in level 5")
#         
#       })
#     }
#   }
#   )
#   my<-reactiveValues(inc=0, timer=reactiveTimer(1000), started=FALSE)
#   
#   observeEvent(input$go, {my$started<-TRUE})
#   observeEvent(input$hhhhhh, {my$timer<-reactiveTimer(Inf)})
#   
#   observe({
#     my$timer()
#     if(isolate(my$started))
#       my$inc<-isolate(my$inc)+1
#   })
#   
#   output$timer1 <- renderPrint({
#     cat("you have used:", my$inc, "secs")})
#   output$timer4 <- renderPrint({
#     cat("you have used:", my$inc, "secs")})
#   output$timer6 <- renderPrint({
#     cat("you have used:", my$inc, "secs")})
#   output$timer8 <- renderPrint({
#     cat("you have used:", my$inc, "secs")})
#   output$timer10 <- renderPrint({
#     cat("you have used:", my$inc, "secs")})
#   observe({
#     if (input$hhhhhh == "1"){
#       output$hello <- renderPrint({
#         score1 = c()
#         score2 = c()
#         score3 = c()
#         score4 = c()
#         if (input$di1 == "D"){
#           score1 = c(score1,5)
#         }
#         else{
#           score1 = c(score1,0)
#         }
#         if (input$di2 == "B"){
#           score2 = c(score2, 5)}
#         else{
#           score2 = c(score2, 0)}
#         if (input$di3 == "A"){
#           score3 = c(score3, 5)}
#         else{
#           score3 = c(score3, 0)}
#         
#         if (input$di4 == "C"){
#           score4 = c(score4, 5)}
#         else{
#           score4 = c(score4, 0)}
#         score5 = c()
#         score6 = c()
#         score7 = c()
#         score8 = c()
#         if (input$di5 == "D"){
#           score5 = c(score5,5)
#         }
#         else{
#           score5 = c(score5,0)
#         }
#         if (input$di6 == "C"){
#           score6 = c(score6, 5)}
#         else{
#           score6 = c(score6, 0)}
#         if (input$di7 == "A"){
#           score7 = c(score7, 5)}
#         else{
#           score7 = c(score7, 0)}
#         
#         if (input$di8 == "B"){
#           score8 = c(score8, 5)}
#         else{
#           score8 = c(score8, 0)}
#         score9 = c()
#         score10 = c()
#         score11 = c()
#         score12 = c()
#         if (input$di9 == "A"){
#           score9 = c(score9,5)
#         }
#         else{
#           score9 = c(score9,0)
#         }
#         if (input$di10 == "B"){
#           score10 = c(score10, 5)}
#         else{
#           score10= c(score10, 0)}
#         if (input$di11 == "C"){
#           score11 = c(score11, 5)}
#         else{
#           score11 = c(score11, 0)}
#         
#         if (input$di12 == "D"){
#           score12 = c(score12, 5)}
#         else{
#           score12 = c(score12, 0)}
#         score13 = c()
#         score14 = c()
#         score15 = c()
#         score16 = c()
#         if (input$di13 == "C"){
#           score13 = c(score13,5)
#         }
#         else{
#           score13 = c(score13,0)
#         }
#         if (input$di14 == "D"){
#           score14 = c(score14, 5)}
#         else{
#           score14 = c(score14, 0)}
#         if (input$di15 == "B"){
#           score15 = c(score15, 5)}
#         else{
#           score15 = c(score15, 0)}
#         
#         if (input$di16 == "A"){
#           score16 = c(score16, 5)}
#         else{
#           score16 = c(score16, 0)}
#         score17 = c()
#         score18 = c()
#         score19 = c()
#         score20 = c()
#         if (input$di17 == "B"){
#           score17 = c(score17,5)
#         }
#         else{
#           score17 = c(score17,0)
#         }
#         if (input$di18 == "A"){
#           score18 = c(score18, 5)}
#         else{
#           score18 = c(score18, 0)}
#         if (input$di19 == "D"){
#           score19 = c(score19, 5)}
#         else{
#           score19 = c(score19, 0)}
#         
#         if (input$di20 == "C"){
#           score20 = c(score20, 5)}
#         else{
#           score20 = c(score20, 0)}
#         
#         
#         cat("You have used:",my$inc, "secs", 
#             "                 Your total points are:", sum(c(score1,score2,score3,score5,score6,score7,score8,score9,score10,score11,score12,score4, score13,score14,score15,score16,score17,score18,score19,score20)))
#       })
#     }
#   })
}
