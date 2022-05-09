require(shiny)
require(visNetwork)
require(readr)
library(igraph)

# read in node and edge data
nodes <- read_csv("nodes_visnetwork.csv")
edges <- read_csv("edges_visnetwork.csv")

ui <- fluidPage(
  titlePanel("Biology courses and concepts network map"),
    visNetworkOutput("network", width = "1000px", height = "800px")
)

server <- shinyServer(function(input, output) {
  output$network <- renderVisNetwork({
    
    
    visNetwork(nodes, edges) %>% 
      # darkblue square with shadow for group "concept"
      visGroups(groupname = "Concept", color = "#66C2A5", shape = "square", 
                shadow = list(enabled = TRUE)) %>% 
      visOptions(highlightNearest = TRUE, nodesIdSelection = list(enabled = TRUE, 
                main = "Select node type", style = 'width: 150px; height: 26px;
   background: lightgrey;
   color: black;
   border:none;
   outline:none;')) %>%
      # red triangle for group "skill"
      visGroups(groupname = "Skill", color = "#8DA0CB", shape = "triangle") %>%
      visGroups(groupname = "Course", color = "#FC8D62", shape = "circle") %>%
      visLegend(width = 0.08, position = "left") %>%
      visIgraphLayout(type = "square", layout = "layout_nicely")
  })
})


shinyApp(ui=ui, server=server)