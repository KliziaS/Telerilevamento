@ Measuring variability from satellite imagery

library(imageRy)
library(terra)
# intsall package
ora ho le libreride, devo caricare il dato
im.list()
seleziono sentinel, si tratta di sentinel 2, nel programma copernicus vedo che e stato lanciato nel 2015. la sua risoluzione a terra è di 10metri
"sentinel.png" 
sent <- im.import("sentinel.png") #img 1

plotRGB
im.plotRGB(sent, 1, 2, 3)
# imng 2

# nir = band 1
# red = band 2
# green = band 3

lo rifaccio c
im.plotRGB(sent, 2, 1, 3)
# img 3

posso usare un metodo : moving window in cui uso una certa finestra di calcolo e la passo su tutti i dati estraendo  tipo cross correlation

ho i vari pixel dell'img e passo la prima finestra 3x3 pixel sopra. in qst finestra calcolo la deviaz standard a partire dai 9 pixel che le sono all'interno, media, calcolo scarti quadratici, media e associo il valore al pixel centrale.
poi sposto la finestra di un pixel, lo muovo. rifaccio il calcolo ecc e poi calcolo la dev standard e la associo al pixel centrale.
poi lo sposto di un altro laterlamente
da capo ma anche verticalmente

devo definire quale è la dimensione di questa finestra mobile
ora lo facc
la deviaz standard si calcola su una variabile, es l'eta
quindi una img satellit si puo calcolare su una sola banda non su tutte
quindi bisogna scegliere la banda

prox volta metodo x fare qst scelta in modo oggettivo
ora devo scegliere soggettivamente la banda sulla quale fare qst calcolo

# variability
nir <- sent[[1]]
plot(nir)
 # questa diventa la bassa infrarosso che uitilizzo x fare tutti i miei calcoli
#img4

colorRampPalette(c("red", "orange", "yellow")) (100)
cl <- colorRampPalette(c("red", "orange", "yellow")) (100)
plot(nir, col=cl)
# ho definito la banda sulla quale calcolare dla dev standard
ora non resta che farlo

focal values: tira fuori delle statistiche (i cosidd valori focali) all'interno di un gruppo di valori
funzione: focal

matrice: matrix function
  diff tra array (vettore serie di elem uno accanto all'altro) e matrice che ha vslori orizz e vertic, valori in 2D
come si definisce la matrice? primadit definire il num di pixel da 1 a 9
poi si def come questa matrice è composta

focal x definire la finestra e la funzione,q uindi in find ei conti fa il calcolo

focal(nir, matrix(1/9, 3, 3), fun=sd) 

dare un nome a quest oggetto
# attend non chiam l'oggetto sd, è un oggetto una mappa non una funz statistica
sd3 <- focal(nir, matrix(1/9, 3, 3), fun=sd)
plot(sd3)
# img 5

cambio palette in quella dei daltonici
tre malattie di daltonismo
# install package
install.packages("viridis")
library(viridis)


se faccio un plot
                  l'acqua viene semore nera perche in querlla banda l'acu assorbe tutto,a che l'infrarosso e diventa nera

ancora la funzione 
colorRampPalette()
viridisc <- colorRampPalette(viridis(7))(100)
viridisc <- colorRampPalette(plasma(7))(256)
plot(sd3, col=viridisc)
# img



# exercise: calculate the sd mw of 7 pixels
sd7 <- focal(nir, matrix(1/49, 7, 7), fun=sd)
plot(sd7, col=viridisc)
# img blu

13^2=169
sd13 <- focal(nir, matrix(1/169, 13, 13), fun=sd)
plot(sd13, col=viridisc)

sdstack <- c(sd3, sd7, sd13)
plot(sdstack, col=viridisc)

quale è la migliore? nessuna
dipende dallos copo
es voglio vedere la media della viomadda allora dovrei suare una piuù ampia
solitmanete in tutti i tipi di analisi che vengono fatti spazialm x individuare la variabilita o le caratt a liv statistico si usano

okular Resolution Problems for
risoluzione piu grossolana: le forme diventano tutte uguali
non ce una finestra migliore dell altra, dipende solo dallo scopo e dalla scala


altro metodo: analisi multivariabile
spiegare la variabilità, la varianza (si dice nel linguaggio modellistico)
giochino statistico: passo un nuovo asse nel range + ampio e lo chiamo componente principale
stressi dati ma ho passato un nuovo sistema di assi, il rpimo spiega la maggior parte, il secondo una piccola
al pisto di scegliere il nir prendo queso asse, perdero il 10% dell'informazionema non fa niente

# x vedere correlazione fra le avrie bande
pairs(sent) 
passo da una img da n bande che +o- hanno le stesse info 50 e 50%
ad un nuovo asse che invece possiede un range molto piu ampio 90% e 10%

                  prox lezione rapporto tra salvator dali e analisi multivariab
                  sviluppo di dit multidimensionali tra dali e baracioff
                  # multivariate analysis
                  invece di scegliere il nir scelgo la componente
                  prendo un sacco di dati multivaraib e li compatto in queso
                  metodo: analisi dei componentit principali (PC)





