# Spectral Indices

library(terra)
library(imageRy)
pag qualsiasi cntrl MAIUSC C

# list for files
im.list()

# import the data
# https://visibleearth.nasa.gov/images/35891/deforestation-in-mato-grosso-brazil/35892l
"matogrosso_l5_1992219_lrg.jpg"

# im.import
im.import("matogrosso_l5_1992219_lrg.jpg")
# importing the 1992 image
m1992 <- im.import("matogrosso_l5_1992219_lrg.jpg")

# bands
# band 1 = NIR 
# band 2 = red 
# band 3 = green

# Plotting the data
im.plotRGB(m1992, r=1, g=2, b=3)

# nir on green  (C component)
im.plotRGB(m1992, 2, 1, 3)

# nir on top of the blue (B component)
im.plotRGB(m1992, 2, 3, 1)

# importing the 2006 image
im.import("matogrosso_ast_2006209_lrg.jpg")
m2006 <- im.import("matogrosso_ast_2006209_lrg.jpg")

# multiframe
par(mfrow=c(1,2))
im.plotRGB(m1992, r=1, g=2, b=3)
im.plotRGB(m2006, r=1, g=2, b=3)

dev.off()

# nir ontop of green
im.plotRGB(m2006, 2, 1, 3)

# nir ontop of blue
im.plotRGB(m2006, 2, 3, 1)

# multiframe as megapar
par(mfrow=c(2,3))
im.plotRGB(m1992, 1, 2, 3) # 1992 nir on red
im.plotRGB(m1992, 2, 1, 3) # 1992 nir on green
im.plotRGB(m1992, 2, 3, 1) # 1992 nir on blue
im.plotRGB(m2006, 1, 2, 3) # 2006 nir on red
im.plotRGB(m2006, 2, 1, 3) # 2006 nir on green
im.plotRGB(m2006, 2, 3, 1) # 2006 nir on blue



