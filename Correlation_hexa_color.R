my_data <- read.csv(file.choose())

head(my_data)
d <- my_data[,c(-1)]
d

cor(d)
mat <-cor(d)


# Creating custom color palette
my_cols <- colorRampPalette(c("orange", "#FFFFFF", "green"))(200)

library(corrplot)

corrplot(
  mat,
  method = "color",       # "color", "circle", "square", "number", "pie", "shade", "ellipse"
  type = "full",          # "full", "upper", "lower"
  col = my_cols,          # custom palette applied here
  
  # ---- TEXT LABEL OPTIONS ----
  tl.col = "black",        # text label color
  tl.srt = 45,             # rotate text labels
  # tl.cex = 1,            # text size (default = 1)
  # tl.pos = "lt",         # label position: "lt", "n", "d"
  # tl.offset = 0.5,       # adjust label spacing
  
  # ---- NUMBER DISPLAY OPTIONS ----
  addCoef.col = "black",   # add correlation values on cells
  number.cex = 0.8,        # size of numbers
  # number.digits = 2,     # digits to round correlations
  # number.font = 2,       # bold numbers
  # number.pos = "center", # number position
  
  # ---- MATRIX ORDERING & CLUSTERING ----
  order = "hclust",        # "hclust", "AOE", "FPC", "alphabet"
  # addrect = 3,           # draw rectangles around clusters
  # rect.col = "blue",     # color of cluster rectangles
  # rect.lwd = 2,          # line width of rectangles
  
  # ---- INSIGNIFICANT CORRELATION OPTIONS ----
  # p.mat = mat,           # matrix of p-values
  # sig.level = 0.05,      # significance threshold
  # insig = "pch",         # mark insignificant cells with symbols
  # pch = 4,               # symbol for insignificance (×)
  # pch.col = "grey50",    # symbol color
  
  mar = c(0,0,0,0)
)
