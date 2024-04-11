# time series analysis

library(imageRy)
library(terra)

vedo su imageRy e faccio una lista x prendere dati utili
im.list()
sono dati gia elaborati
li chiamo
 importing data
li riporto con la soita funzione. metto il primo e l-ultimo
im.import("EN_01.png")
im.import("EN_13.png")

EN01 <-im.import("EN_01.png")
EN13 <-im.import("EN_13.png")

le metto una accanto all altra
faccio un par
par(mfrow=c(1,2))
im.plotRGB.auto(EN01)
im.plotRGB.auto(EN13)

li metto una sopra l-altro
par(mfrow=c(2,1))
im.plotRGB.auto(EN01)
im.plotRGB.auto(EN13)

il bianco nei test di labroatorio e' la base
ho riportato l-img rgb con tutte e tre le bande
se ho 3 livelli per entrambe le immagini posso fare le differenze tra le bande, l-importane [ che sia sempre la stessa banda


# using the first element (band) of images
differenza
difEN = EN01[[1]] - EN13[[1]]
cl <- colorRampPalette(c("red", "white", "blue")) (100)
ma cambio, metto il blu come minimo e plotto la differenz tra le due img utilizz questa color palette
# palette
cl <- colorRampPalette(c("blue", "white", "red")) (100)
plot(difEN, col=cl)

plotto
difEN = EN01[[1]] - EN13[[1]]
cl <- colorRampPalette(c("blue", "white", "red")) (100)
plot(difEN, col=cl)

con dev off uccido il grafico precedente
in tutte le parti rosse c e stato cambiamento piu alto
con questo sistema posso quantificare 
con i valori aprtivo da img a 8bit, range da 0 a 255
diff 1-255 ho 2alla2 no 256 valori
 e' una quantificazione 

posso farlo sugli altri cambio commit arriva mail


Ice melt in Greenland
lavoro con un proxy
nella scienza modellistica il proxy e una variabile misurabile
il programma Copernicus nelle 4 macroaree di studio in energy Budget c-e ildataset EuroLST
EuroLST variabile che riguarda il suolo non l-aria
es ofioliti rocce nere xk di origine vulcanica
in eurolst c-[ un grande dataset
              vedo la lista fatta in R prima
ci sono i dati, che e un trend              
geonbar fa istogrammi
geonline fa delle linee. non la faccio ora xk faccio solo differenza

### New example: temperature in Greenland
              riguarda la temp al suolo della groenlandia
g2000 <- im.import("greenland.2000.tif")
              copio quella di prima e aggiungo black
clg <- colorRampPalette(c("black", "blue", "white", "red")) (100)
plot(g2000, col=clg)
nero cioe a me rosa e la parte piu fredda
              il colore viene fuori perche e una mappa di temperature
l islanda esce caldissima perche ci sono vulcani, dorsale oceanica              
solitamente sono img a 16 bit ma si arriva solo fino a 15mila xk le img di copernicur hanno ristretto i bit
xk invece di tere i gradi di temp precisi si approssima all intero, xk cosi l img pesa motlo di meno

non sono dati reali, solo per lo scorage dei dati

              
g2000 <- im.import("greenland.2000.tif")
clg <- colorRampPalette(c("black", "blue", "white", "red")) (100)
plot(g2000, col=clg)             

importo altre img
              2005, 2010, 2015
"greenland.2005.tif"                                
greenland.2010.tif"                                
"greenland.2015.tif"               
 prima solo il plot del 2000

g2005 <- im.import("greenland.2005.tif")
g2010 <- im.import("greenland.2010.tif")
g2015 <- im.import("greenland.2015.tif")

multiframe con due righe, par
e plotto la 2000 e la 2015
par(mfrow=c(1,2))
plot(g2000, col=clg)
plot(g2015, col=clg)


poi faccio il par con tutte e 4
par(mfrow=c(1,2))
plot(g2000, col=clg)
plot(g2005, col=clg)
plot(g2010, col=clg)
plot(g2015, col=clg)

invece di fare par mfrow ecc, specialmente quando ho singoli layer, li posso mettere tutti insieme poi fare lo stack
4 bande le trasformo in bande di una img

# stacking the data
stackg <- c(g2000, g2005, g2010, g2015)
plot(stackg, col=clg)
ogni banda e la temp di un area diversa

poi faccio la differenza
tra il primo e il quarto dei layer
# Exercise: make the differencxe between the first and the final elemnts of the stack
difg <- stackg[[1]] - stackg[[4]]
# difg <- g2000 - g2015
plot(difg, col=cl)

tutta la zona blu vuol dire che la temperatura e aumentata
how to invert color palette ggplot
riprendo cl e la inverto
la chiamo cl green, ci metto red e blue
cl <- colorRampPalette(c( "red", "white", "blue")) (100)


ammetto di prendere tre livelli rgb, per ognuno dei quali ci metto uno dei lvll dello stack
quello del 2000 lo metto sul red, del 2005 sul green, del 2015 sul blu
ad ogni componente dell rgb associo
se la map diventa rossa i valori di temperatura sono piu alti nel 2000
se verde i valori sono piu alti nel 2005
se blu i valori piu alti di temperatura nel 2015

im.plotRGB(greenland, 1,2,4)

quindi x ognuna delle componenti
esce fra il blu e il verde quindi fra 2005 e 2015

per mantenere i valori del cambiamento mantenendo i valori continui, e una semplice differenza tra le immagini
x fare questa sottrazione  e necessario che le immagini abbiano la stessa estensione, ecco xk non  ho fatto con matogrosso




