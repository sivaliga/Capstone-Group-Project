library(shiny)
#library(plotrix)
#library(googleVis)
#library(shinydashboard)
#library(dplyr)
#library(leaflet)
#library(DT)
#library(tidyr)

shinyUI(navbarPage("Registered PWDs in Malaysia",
   
    navbarMenu("WELCOME PAGE",
            tabPanel("OUR LEADER QUOTES",
                sidebarLayout(
                    sidebarPanel(
                      fluidRow(column(width=12,         
                                      radioButtons("leaders", "LEADER'S QUOTES",
                                                   c("Almarhum Tunku Abdul Rahman Putra Al-Haj" = "tunku"), selected = "tunku")))
                      
                    ),
                    mainPanel(
                      imageOutput("leaders")
                    ) 
                ))),
                                      
    navbarMenu("Overview",
 
             tabPanel("Charts",
                      sidebarLayout(
                        sidebarPanel(
                          fluidRow(column(width=12,
                                          radioButtons("chart", "Overall view on Registered Persons With Disabilities in Malaysia",
                                                       c("GGPlot Chart" = "barchart", "Pie Chart" = "piechart"),"" ))) 
                        ),
                        mainPanel(
                          imageOutput("chart")
                        ) 
                      )
                      
            ),
            tabPanel("PWD Categorization",
                     sidebarLayout(
                       sidebarPanel(
                         fluidRow(column(width=12,
                                         radioButtons("category", "Types of PWD's categorization :", 
                                                      c("Registration of PWD's by State" = "state",
                                                        "Registration of PWD's by Category of Ethnic Groups" = "ethnic",
                                                        "Registration of PWD's by Category of Age Groups" = "age"), selected = NULL )))
                       ),
                       mainPanel(
                         tableOutput("category")
                       )
                     )
                      
                     ),
            
            tabPanel("Types of Disablities",
                     sidebarLayout(
                       sidebarPanel(
                         selectInput("disability","TYPE OF DISABILITIES AND REGISTERED PWDs BASED ON STATES & ETHNICS ", 
                                     choices = c("PHYSICAL" = "fizikal", "SPEECH" = "speech","MENTAL" = "mental","HEARING" = "hearing","VISUALLY IMPARED" = "visual",
                                                 "LEARNING DISABILITY" = "learning","OTHERS" = "others"))),
                       
                       mainPanel(
                         tableOutput("disability")
                       ) 
                       )
            )
 ),
    
    navbarMenu("Welfare",
               tabPanel("Childrens (Kanak-Kanak)",
                        sidebarLayout(
                          sidebarPanel(
                            selectInput("children","TYPE OF WELFARE for CHILDRENS BY GOVERNMENT BASED ON STATE", 
                                        choices = children$STATE)),
                             
                          mainPanel(
                            tableOutput("children")))),
                        
                tabPanel("Adult (Dewasa)",
                                 sidebarLayout(
                                   sidebarPanel(
                                     selectInput("adult","TYPE OF WELFARE for ADULTS BY GOVERNMENT BASED ON STATE", 
                                                 choices = adult$STATE)),
                                   
                                   mainPanel(
                                     tableOutput("adult")))
            
               
    )
),
tabPanel("Documentation",
           mainPanel(tabPanel("User Guide",
                                    tags$iframe(style ="height:600px; width:840px; scrolling=yes",
                                    src="UserGuide.pdf"))
)
)
))
               
#    navbarMenu("Documentation")
#               mainPanel(
#                 tabsetPanel(
#                  tabPanel("User Guide",
#                        tags$iframe(style ="height:400px; width:100%; scrolling=yes"),
#                        src="User Guide.pdf")))
#                           
#     plot(pie)
#     htmlOutput("view")
#        tabsetPanel(type= "tab", 
#          tabPanel("The records are based on 2016 statistic", tableOutput("empty")),
#          tabPanel("Registration of PWD's by State", tableOutput("PwdbyState")),
#          tabPanel("Registration of PWD's by Category of Ethnic Groups", tableOutput("ethnic")),
#          tabPanel("Registration of PWD's by Category of Age Groups",tableOutput("age"))
# plotOutput("bar")
# "YAB Tun Dr Mahathir Mohamad" = "Tun", "Lee Kuan Yew" = "lky"

  
