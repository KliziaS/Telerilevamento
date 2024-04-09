# quantifying land cover variability (change)

# install.packages
install.packages("ggplot2")
library(ggplot2)

library(terra)
library(imageRy)

# Listing images
im.list()
# Importing data
# im.import
m1992 <- im.import ("matogrosso_l5_1992219_lrg.jpg")

richiamo quella del sole
sun <- im.import("Solar_Orbiter_s_first_views_of_the_Sun_pillars.jpg")
# im.classify()

sunc <- im.classify(sun, num_clusters=3)

# Mato grosso images
m1992 <- im.import ("matogrosso_l5_1992219_lrg.jpg")
m2006 <- im.import("matogrosso_ast_2006209_lrg.jpg" )   

# Classifying images
m1992c <- im.classify(m1992, num_clusters=2)
# Class 1 = forest
# Class 2 = human

m2006c <- im.classify(m2006, num_clusters=2)
# Class 1 = forest
# Class 2 = human

plot(m1992c)
plot(m2006c)

# Calculating frequencies
f1992 <- freq(m1992c)
f2006 <- freq(m2006c)

f1992
f1992 <- freq(m1992c)
tot 1992 <- freq(m1992c)

propr1992 = f1992/tot1992
perc1992 = propr1992 * 100

# Percentages: forset = 83%, humans = 17%

# 2006
f2006
f2006 <- freq(m2006c)
tot 2006 <- freq(m2006c)

propr2006 = f2006/tot2006
perc2006 = propr2006 * 100

# Percentages:forset = 45%, human= 55%

#-------
#calcolo
#dataframe funzione che crea un dataframe
# prima colonna corrisponde a [forest, human] -> che soni testo

class <- c("forest", "human")
y1992 <- c(83, 17)
y2006 <- c(45,55)

tabout <- data.frame(class, y1992, y2006)
tabout

View(tabout)
# ggplot2 graphs

ggplot(tabout, aes(x=class, y=y1992, color=class) 
       
ggplot(tabout, aes(x=class, y=y1992, color=class)) + geom_bar(stat="identity", fill="white") 
ggplot(tabout, aes(x=class, y=y2006, color=class)) + geom_bar(stat="identity", fill="white") 



# Install packages
install.packages("patchwork")
# lo richiamo con library
library(patchwork)

p1 <- ggplot(tabout, aes(x=class, y=y1992, color=class)) + geom_bar(stat="identity", fill="white") 
p2 <- ggplot(tabout, aes(x=class, y=y2006, color=class)) + geom_bar(stat="identity", fill="white") 
p1 + p2


# cORRECTING for axis range       
p1 <- ggplot(tabout, aes(x=class, y=y1992, color=class)) + geom_bar(stat="identity", fill="white") + ylim(c(0,100))
p2 <- ggplot(tabout, aes(x=class, y=y2006, color=class)) + geom_bar(stat="identity", fill="white") + ylim(c(0,100))
p1 + p2     




       
