# Multivariata analysis


funzione che fa tt i passaggi x compattare il set in poche dimens usero una sola dimanesione
alla fin l'analisi resistuisce tutte le componenti

library(terra)
library(imageRy)
library(viridis)

PC1 il rpimo nuovo asse ha un range molto piu ampio del PC2
al posto di usare b1 e b2 uso il nuovo sistema sostituito da PC1 e PC2.
PC1 contiente gran parte del range del dato

im.list()
# importazione singole bande
# importing data
im.import della banda2
b2 <- im.import("sentinel.dolomites.b2.tif") # blue                    
b3 <- im.import("sentinel.dolomites.b3.tif") # green                   
b4 <- im.import("sentinel.dolomites.b4.tif") # red                   
b8 <- im.import("sentinel.dolomites.b8.tif") #nir

concatenate
sentdo <- c(b2, b3, b4, b8)

# visualize image
# im.plotRGB()
im.plotRGB (sentdo, r=4, g=3, b=2)
# sono partito da b2, b3, b4 che ho imporatato semparatamente.
# poi ho fatto lonstack con tute le bande insieme

im.plotRGB (sentdo, r=3, g=4, b=2)

# ho le 4 bande.
# allora vedo quanto sono collegate tra di loro con una funzione: pairs(sentdo)
pairs(sentdo)
# qst funzione la posso usare prendendo un dataset qualsiasi non solo x img satellitari

causalita
se uso delle variabili attenzione xk non e detto he una sia la causa dell'altra
quando correlo variabili tra loro non x forza c'è una causalità tra le due nonostante sono correlate
non sempre qdue variabili correlate sono anche causalmente correlate.








