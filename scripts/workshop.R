## Use this file to follow along with the live coding exercises.
## The csv file containing the data is in the 'data/' directory.
## If you want to save plots you created, place them in the 'figures/' directory.
## You can create additional R files in the 'scripts/' directory.
library("ggplot2")

library(tidyverse)
install.packages("tidyverse")
# Load the data provided; using read_csv from tidyverse
# ctrl-enter to run
interviews_plotting <- read_csv("data_output/interviews_plotting.csv")
#following formulation creates object plot1, which can then be added to
plot1 <- ggplot(data=interviews_plotting,
       aes(x=no_membrs,y=number_items)) 
# plus needs to be on same line, indicates more is coming
plot1 +
  geom_jitter(alpha=0.5, width = 0.1, aes(colour=village))
ggsave("fig_output/items_membrs.png", plot1, width=15, height =10, dpi=300)
#dpi 300 is appropriate for printed publication, 72 good enough for screen
