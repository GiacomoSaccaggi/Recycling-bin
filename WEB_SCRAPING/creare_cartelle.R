Plastica<-c("Plastica", "bottiglie di plastica", "sacchetti di plastica", "tappi di plastica", "giochi di plastica", "utensili di plastica", "pacchi di plastica", "posate di plastica","bicchieri di plastica", "vaschette di plastica", "tubetti dentifricio", "pellicola cucina", "sedie di plastica", "secchi di plastica", "vaschette plastica", "contenitore uova di plastica") 
Carta<-c("Carta", "carta giornali", "fogli di carta", "contenitore uova di carta", "tovaglioli di carta", "pacchi di cartone", "cartone pizza", "posate di carta", "bicchieri di carta", "libri di carta", "quaderni di carta", "sacchetti di carta", "tovaglie di carta", "scatole di cartone", "riviste di carta","carta appallottolata") 
Tetra_Pak<-c("Tetra Pak latte", "Tetra Pak succhi", "contenitori in tetra pak", "tetra pak succo brico ")
Polistirolo<-c("contenitori in polistirolo", "polistirolo", "vaschette polistirolo") 
Vetro<-c("Vetro", "Bottiglie di vetro", "tazzine di vetro", "vetro rotto", "vetro bottiglie vino", "vetro bottiglie birra", "vetro bottiglie alcolici", "vetro bottiglie bevante", "caraffe di vetro", "calici di vetro", "vasi di vetro", "bicchieri di vetro", "bicchieri di vetro rotti", "lastre di vetro", "contenitori di vetro") 
Indifferenziato<-c("ceramica", "carta sporca e oleata", "cd", "dvd", "videocassette", "musicasette", "accendini", "pannolini", "assorbenti", "mozziconi di sigarette", "lampadine", "cristallo", "specchi", "vasi ceramica", "filtri dell'aspirapolvere") 
Legno<-c("legno", "legname", "giochi di legno", "utensili di legno", "assi di legno", "posate di legno", "ciotole di legno", "mestoli di legno", "sedie di legno", "tavoli di legno", "piatti di legno", "scaffali di legno", "mobili di legno", "tagliere di legno", "tappi di sugero") 
Metalli<-c("ferro", "metallo", "pentole", "mestoli di ferro", "lastre metallo", "chiavi di ferro", "utensili di ferro", "ferro battuto", "padelle", "posate di metallo", "forchette di metallo", "coltelli di metallo", "cucchiai di metallo", "caffettiere", "Lucchetti di ferro") 
Umido<-c("scarti cibo", "umido cibo", "organico cibo", "scarti pesce", "scarti carne", "fondi di caffe", "frutta secca", "avanzi cibo", "filtri te e tisane", "pane", "fiori e foglie", "alimenti avariati", "scarti di cucina", "avanzi pasta", "avanzi di riso") 
Latta_e_alluminio<-c("lattine per bevande", "fogli di alluminio","lattine di cocacola", "lattine di pepsi", "lattine redbull", "lattine di sprite", "lattine di 7up", "lattine di fanta", "lattine di birra", "lattine di pelati", "lattine di cereali", "lattine di legumi", "alluminio per cucina", "teglie di alluminio", "lattine")


scar<-c(Plastica,Carta,Tetra_Pak,Polistirolo,Vetro,Indifferenziato,Legno,Metalli,Umido,Latta_e_alluminio)


for(i in 1:length(scar)){
  cat(paste0("mkdir \"C:/Users/gieck/Desktop/CARTELLA TESI/WEB_SCRAPING/dati/", gsub(" ","_",scar[i]), "\n"))
}
