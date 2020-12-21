# My faithful soldiers----
library(ggplot2)

# Create dataframe----
fc_data<- data.frame(x=1:100,y=1:100)
dim(fc_data)

# Create empty frame without geom----

ggplot(fc_data,
       aes(x=x,y=y))+
  theme_linedraw()

# Let us name it in an object----
a<-ggplot(fc_data,
          aes(x=x,y=y))+
  theme_linedraw()
a # base created
# Let us add features to this----
a+geom_rect(xmin=36,ymin=90,xmax=64,ymax=97,
            color="black",
            fill="white",
            size=0.25)+
  annotate('text',x=50, y=93,
           label="Mediator",
           size=2.5)+
  geom_rect(xmin=10,ymin=62,xmax=30,ymax=69,
            color="black",
            fill="white",
            size=0.25)+
  annotate('text',x=20, y=65.5,
           label="X",
           size=2.5)+
  geom_rect(xmin=67,ymin=62,xmax=92,ymax=69,
            color="black",
            fill="white",
            size=0.25)+
  annotate('text',x=80, y=65.5,
           label="Y",
           size=2.5)+
  # this is for moderator, skip until line 48 and go to geom_segment if you want a simple mediation model
  geom_rect(xmin=5,ymin=85,xmax=15,ymax=93,
            color="black",
            fill="white",
            size=0.25)+
  annotate('text',x=10, y=89,
           label="Moderator",
           size=2.5)+
  geom_segment( x=20, xend=36, y=69, yend=93, 
                size=0.25, linejoin = "mitre", lineend = "butt",
                arrow = arrow(length = unit(2, "mm"), type= "closed")) +
  geom_segment(x=30, xend=67, y=65, yend=65, 
               size=0.25, linejoin = "mitre", lineend = "butt",
               arrow = arrow(length = unit(2, "mm"), type= "closed")) +
  geom_segment(x=64, xend=80, y=94, yend=69, 
               size=0.25, linejoin = "mitre", lineend = "butt",
               arrow = arrow(length = unit(2, "mm"), type= "closed")) +
  geom_segment(x=15, xend=30, y=89, yend=84, 
               size=0.25, linejoin = "mitre", lineend = "butt",
               arrow = arrow(length = unit(2, "mm"), type= "closed")) +
  geom_segment(x=15, xend=50, y=89, yend=65, 
               size=0.25, linejoin = "mitre", lineend = "butt",
               arrow = arrow(length = unit(2, "mm"), type= "closed")) +
  theme_void() # makes it cleaner

ggsave("model8_moderatedmediation_template.jpg",
       plot = last_plot())

# credits: https://rstudio-pubs-static.s3.amazonaws.com/461686_e1fba6bd54864c18a292ac4fc90028ec.html