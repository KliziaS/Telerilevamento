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

# RGB plotting

# stacksent [[1]] = b2 = blue
# stacksent [[2]] = b3 = green
# stacksent [[3]] = b4 = red
# stacksent [[4]] = b8 = nir

# im.plotRGB()
im.plotRGB(stacksent, r=3, g=2, b=1)
# or
im.plotRGB(stacksent, 3, 2, 1)

im.plotRGB(stacksent, r=4, g=2, b=1)
im.plotRGB(stacksent, 4, 2, 1)


# Exercise: make a plot with the natural colour and the false colour images one beside the other
par (mfrow=c(1,2))
im.plotRGB(stacksent, 3, 2, 1)
im.plotRGB(stacksent, 4, 2, 1)

dev.off()
im.plotRGB(stacksent, 4, 3, 2)

par(mfrow=c(1,3))
im.plotRGB(stacksent, 3, 2, 1)
im.plotRGB(stacksent, 4, 2, 1)
# nir on red
im.plotRGB(stacksent, 4, 3, 2)


# nir on green
im.plotRGB(stacksent, 3, 4, 2)

# nir on blue
im.plotRGB(stacksent, 3, 2, 4)


# Final multiframe
# Exercise: put the four images altogether
par(mfrow=c(2,2))
im.plotRGB(stacksent, 3, 2, 1) # natural color
im.plotRGB(stacksent, 4, 2, 1) # nir on red
im.plotRGB(stacksent, 3, 4, 2) # nir on green
im.plotRGB(stacksent, 3, 2, 4) # nir on blue

# Correlation of information
pairs (stacksent)
b2


