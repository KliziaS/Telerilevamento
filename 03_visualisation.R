# Satellite data visualisation in R by imageRy

library(terra)
library(imageRy)

# List of data avialable in imageRy
im.list()

#importing data
mato <- im.import ("matogrosso_ast_2006209_lrg.jpg")

# plotting the data
plot(mato)im.list

# Importing data 

b2 <- im.import("sentinel.dolomites.b2.tif")

Plotting the data
changing color

colorRampPalette
colorRampPalette (c("black", "gray", "light gray"))(3)

clg <-colorRampPalette (c("black", "gray", "light gray"))(3)
plot(b2, col=clg)


clg <-colorRampPalette (c("black", "gray", "light gray"))(100)
plot(b2, col=clg)

changing range colors R packaging colors
clcyan <-colorRampPalette (c("magenta", "cyan4", "cyan"))(100)
plot(b2, col=clcyan)

i can choose every color
clcyan <-colorRampPalette (c("yellow", "green", "cyan"))(100)
plot(b2, col=clcyan)

clcyan <-colorRampPalette (c("magenta", "cyan4", "cyan", "chartreuse"))(100)
plot(b2, col=clcyan)



# importing the additional bands
first i add b3
sentinel.dolomites.b3.tif

b3 <- im.import("sentinel.dolomites.b3.tif")
plot(b3, col=clcyan)

then i add b4
sentinel.dolomites.b4.tif

b4 <- im.import("sentinel.dolomites.b4.tif")
plot(b4, col=clcyan)

at least i add b8
sentinel.dolomites.b8.tif

b8 <- im.import("sentinel.dolomites.b8.tif")
plot(b8, col=clcyan)

# multiframe
par()
par(mf)
par(mfrow=2,2)
par(mfrow=c(2,2))

plot(b2, col=clcyan)
plot(b3, col=clcyan)
plot(b4, col=clcyan)
plot(b8, col=clcyan)

# exercise
# plot the four band one anter the other in a singol row

par(mfrow=c(4,1))
me lo da in verticale
riprovo

par(mfrow=c(1,4))
plot(b2, col=clcyan)
plot(b3, col=clcyan)
plot(b4, col=clcyan)
plot(b8, col=clcyan)
sbagliato mi dice errore in plot.new() : figure margins too large
problem solved

# Let's make a satellite image

stacksent <- c(b2,b3,b4,b8)
plot(stacksent, col=clcyan)

stacksent [[4]]
plot(stacksent [[4]], col=clcyan)

dev.off()
plot(stacksent [[4]], col=clcyan)






