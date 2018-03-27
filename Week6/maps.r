setwd('C:/Users/guanz/Desktop/JIW2/Week6')
data1 <- read.csv('Output/numericalenrollment-enhanced.csv')

# from https://stackoverflow.com/questions/29381652/plotting-us-heat-map-with-text
# and https://trinkerrstuff.wordpress.com/2013/07/05/ (cont on next line)
# ggplot2-chloropleth-of-supreme-court-decisions-an-tutorial/

# First, we need the ggplot2 library:
library(ggplot2)
lapply(qcv(ggplot2, maps, ggthemes), require, character.only = T)

# view data (preprocessed to have the lowercase state key value)
head(data1)

# Create state data on a map
states_map <- map_data("state")
head(states_map)


plot_column <- function(column_name) {
  png(paste("R-Images/plot",column_name,".png",sep=""))
  print(ggplot(data1, aes(map_id = state)) +
    geom_map(aes_string(fill = data1[[column_name]]), 
             map = states_map, color ="black") +
    expand_limits(x = states_map$long, y = states_map$lat) +
    theme(legend.position = "bottom",
          axis.ticks = element_blank(), 
          axis.title = element_blank(), 
          axis.text =  element_blank(),
          plot.title = element_text(hjust = 0.5)) +
    scale_fill_gradient(low="white", high="coral3") +
    guides(fill = guide_colorbar(barwidth = 10, barheight = .5)) + 
    ggtitle(paste(column_name,sep="")))
  dev.off()
}

for (num in seq(from = 3, to = 21, by = 1)) {
  name =  colnames(data1[num])
  print(name)
  plot_column(name)
}