# load the library
library(calendR)

# make the calendar
calendR(year = 2021,
        special.days = c(1,4,9,13:16,26,27, # all my important days to remember days, travel, and anniversaries
                         # feb
                         39,43,55,
                         #march
                         72,76,79,87,
                         #april
                         94,96,
                         #may
                         132,137,
                         #june
                         170,
                         #july
                         184,
                         #august
                         220,231,
                         #sept
                         253,270,
                         #oct
                         289,290,297,
                         #nov
                         315,322,
                         #dec
                         336,339,352,360,365),
        special.col = "yellow",
        start = "S",
        orientation = "portrait",
        title = "2021",
        title.size = 48, title.col = "blue",
        subtitle = "You can accomplish whatever you want!",
        subtitle.size = 24,
        subtitle.col = "orange",
        font.family = "sans",
        font.style = "bold",
        day.size = 4,
        days.col = "black",
        papersize = "A4",
        margin = 0.75)
