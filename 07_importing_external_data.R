# How to import external data in R

library(terra)

altra operazione che si chiama 
cartela doive sto lavorando, dove motti i dati
comando funzione: setwd

setwd("C:\")
+ ù
+ 
+ 
+ 
+ ")"
+ """"))
Errore: costante stringa inattesa in:
"")"
""
setwd("C:/")

rast funtion
#read the data
eclissi <- rast("eclissitR.png") 
# like i.port in imageRy
Messaggio di avvertimento: [rast] unknown extent # non è un problema
eclissi
# rast is a function

# plot the data
plotRGB(eclissi, 1,2,3) #fai screen
plotRGB(eclissi, 2,1,3) #fai screen
plotRGB(eclissi, 3,1,2) #fai screen

im.plotRGB(eclissi, 1,2,3) #fai screen
im.plotRGB(eclissi, 2,1,3) #fai screen
im.plotRGB(eclissi, 3,1,2) #fai screen

# different methods of plotting
par(mfrow=c(1,2))
im.plotRGB(eclissi, 2,1,3)
plotRGB(eclissi, 3,1,3)

la sx è un poio piu luminosa della sx xk uso metodo che si chiama stretch 
immagiuno 
prendo i dati e li stretcho cioe allungo un po il range
con terra manteiene molto colore ma meno differnziazione fra il chiaro e lo scuro
allargare x tutti i valori possibili x arrivare al minimo e al massimo

# band differencing
eclissi [[1]] - eclissi [[2]]
dif = eclissi [[1]] - eclissi [[2]]
plot(dif)
# fai screen img

altro esercizio cerco immagine a piacere
C:\
setwd("C:/")
Lama <- rast("Lama.png") 

im.plotRGB(Lama, 1,2,3)
im.plotRGB(Lama, 2,1,3) 
im.plotRGB(Lama, 3,1,2)

immagini sentinel o landsat cerco i video tutoria download su yt
teoria studiata a copernicus. presentazione locate copernicus
prox lez giovedi non martedi (la stess)

Copernicus era nato su scala europea poi esteso a globale
4 macroaree 1pt vegetazione, 1pt energia, 1pt scue e 1pt criosfera
in COPERNICUS

for EìVEGETATION
LAI Leaf Area Index
FAPAR
FCOVER misura della fotosintesi
VCI Vegetation Condition Index: compoares the current NDVI to the range of values observed in the same period in previous years.
VPI
DMP Dry MAtter Productivity: 
SWI Soil Water Index: 
SSM 

for ENERGY
TOC Top Canopy
SA
LST

for WATER CYCLE tuttew le variabili relazionate all acqua
LSWT
LWQ

for CRIOSPHERE
LIE
SCE
SWE

ora mi registro al sito di copernicus e ragiono con qualche img


