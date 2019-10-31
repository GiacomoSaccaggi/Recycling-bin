
library(xml2)
library(rvest)
library(stringr, warn.conflicts = F)
###########################à funzione #############################

webscraing_img <-function(img){
  txt<-"img"
  nome<-"img"
  for(i in 1:length(img)){
    # 1
    try({page<-read_html(paste0("https://www.google.com/search?source=&q=" ,gsub(" ","+",img[i]),"+jpg&source=lnms&tbm=isch"))
    for (t in 1:length(html_nodes(page,xpath = '//img'))) {
      txt<-c(txt,xml_attrs(html_nodes(page, xpath = "//img")[[t]])[["src"]])
      nome<-c(nome,gsub(" ", "_",img[i]))
    }})
    # 2
    try({page<-read_html(paste0("https://www.bing.com/images/search?q=" ,gsub(" ","+",img[i]),"+jpg&FORM=HDRSC2"))
    for (t in 1:length(html_nodes(page,xpath = '//img'))) {
      txt<-c(txt,xml_attrs(html_nodes(page, xpath = "//img")[[t]])[["src"]])
      nome<-c(nome,gsub(" ", "_",img[i]))
    }})
    # 3
    try({page<-read_html(paste0("https://pixabay.com/it/images/search/" ,gsub(" ","%20",img[i])))
    for (t in 1:length(html_nodes(page,xpath = '//img'))) {
      txt<-c(txt,xml_attrs(html_nodes(page, xpath = "//img")[[t]])[["src"]])
      nome<-c(nome,gsub(" ", "_",img[i]))
    }})
    # 1a
    try({page<-read_html(paste0("https://www.google.com/search?source=&q=" ,gsub(" ","+",img[i]),"+jpg&source=lnms&tbm=isch&tbs=isz:l"))
    for (t in 1:length(html_nodes(page,xpath = '//img'))) {
      txt<-c(txt,xml_attrs(html_nodes(page, xpath = "//img")[[t]])[["src"]])
      nome<-c(nome,gsub(" ", "_",img[i]))
    }})
    # 1b
    try({page<-read_html(paste0("https://www.google.com/search?source=&q=" ,gsub(" ","+",img[i]),"+jpg&source=lnms&tbm=isch&tbs=isz:m"))
    for (t in 1:length(html_nodes(page,xpath = '//img'))) {
      txt<-c(txt,xml_attrs(html_nodes(page, xpath = "//img")[[t]])[["src"]])
      nome<-c(nome,gsub(" ", "_",img[i]))
    }})
    # 1c
    try({page<-read_html(paste0("https://www.google.com/search?source=&q=" ,gsub(" ","+",img[i]),"+jpg&source=lnms&tbm=isch&tbs=isz:s"))
    for (t in 1:length(html_nodes(page,xpath = '//img'))) {
      txt<-c(txt,xml_attrs(html_nodes(page, xpath = "//img")[[t]])[["src"]])
      nome<-c(nome,gsub(" ", "_",img[i]))
    }})
    # 1.1
    try({page<-read_html(paste0("https://www.google.com/search?source=&q=" ,gsub(" ","+",img[i]),"+jpg&tbas=0&tbm=isch&tbs=ic:specific,isc:white"))
    for (t in 1:length(html_nodes(page,xpath = '//img'))) {
      txt<-c(txt,xml_attrs(html_nodes(page, xpath = "//img")[[t]])[["src"]])
      nome<-c(nome,gsub(" ", "_",img[i]))
    }})
    # 1.2
    try({page<-read_html(paste0("https://www.google.com/search?source=&q=" ,gsub(" ","+",img[i]),"+jpg&tbas=0&tbm=isch&tbs=ic:specific,isc:teal"))
    for (t in 1:length(html_nodes(page,xpath = '//img'))) {
      txt<-c(txt,xml_attrs(html_nodes(page, xpath = "//img")[[t]])[["src"]])
      nome<-c(nome,gsub(" ", "_",img[i]))
    }})
    # 1.3
    try({page<-read_html(paste0("https://www.google.com/search?source=&q=" ,gsub(" ","+",img[i]),"+jpg&tbas=0&tbm=isch&tbs=ic:specific,isc:black"))
    for (t in 1:length(html_nodes(page,xpath = '//img'))) {
      txt<-c(txt,xml_attrs(html_nodes(page, xpath = "//img")[[t]])[["src"]])
      nome<-c(nome,gsub(" ", "_",img[i]))
    }})
    # 1.4
    try({page<-read_html(paste0("https://www.google.com/search?source=&q=" ,gsub(" ","+",img[i]),"+jpg&tbas=0&tbm=isch&tbs=ic:specific,isc:green"))
    for (t in 1:length(html_nodes(page,xpath = '//img'))) {
      txt<-c(txt,xml_attrs(html_nodes(page, xpath = "//img")[[t]])[["src"]])
      nome<-c(nome,gsub(" ", "_",img[i]))
    }})
    # 1.5
    try({page<-read_html(paste0("https://www.google.com/search?source=&q=" ,gsub(" ","+",img[i]),"+jpg&tbas=0&tbm=isch&tbs=ic:specific,isc:red"))
    for (t in 1:length(html_nodes(page,xpath = '//img'))) {
      txt<-c(txt,xml_attrs(html_nodes(page, xpath = "//img")[[t]])[["src"]])
      nome<-c(nome,gsub(" ", "_",img[i]))
    }})
    
    # 1.6
    try({page<-read_html(paste0("https://www.google.com/search?source=&q=" ,gsub(" ","+",img[i]),"+jpg&tbas=0&tbm=isch&tbs=ic:specific,isc:blue"))
    for (t in 1:length(html_nodes(page,xpath = '//img'))) {
      txt<-c(txt,xml_attrs(html_nodes(page, xpath = "//img")[[t]])[["src"]])
      nome<-c(nome,gsub(" ", "_",img[i]))
    }})
    
    # 1.7
    try({page<-read_html(paste0("https://www.google.com/search?source=&q=" ,gsub(" ","+",img[i]),"+jpg&tbas=0&tbm=isch&tbs=ic:specific,isc:gray"))
    for (t in 1:length(html_nodes(page,xpath = '//img'))) {
      txt<-c(txt,xml_attrs(html_nodes(page, xpath = "//img")[[t]])[["src"]])
      nome<-c(nome,gsub(" ", "_",img[i]))
    }})
    
    # 1.8
    try({page<-read_html(paste0("https://www.google.com/search?source=&q=" ,gsub(" ","+",img[i]),"+jpg&tbas=0&tbm=isch&tbs=ic:specific,isc:yellow"))
    for (t in 1:length(html_nodes(page,xpath = '//img'))) {
      txt<-c(txt,xml_attrs(html_nodes(page, xpath = "//img")[[t]])[["src"]])
      nome<-c(nome,gsub(" ", "_",img[i]))
    }})
    
    # 1.9
    try({page<-read_html(paste0("https://www.google.com/search?source=&q=" ,gsub(" ","+",img[i]),"+jpg&tbas=0&tbm=isch&tbs=ic:specific,isc:pink"))
    for (t in 1:length(html_nodes(page,xpath = '//img'))) {
      txt<-c(txt,xml_attrs(html_nodes(page, xpath = "//img")[[t]])[["src"]])
      nome<-c(nome,gsub(" ", "_",img[i]))
    }})
    
    # 1.10
    try({page<-read_html(paste0("https://www.google.com/search?source=&q=" ,gsub(" ","+",img[i]),"+jpg&tbas=0&tbm=isch&tbs=ic:specific,isc:brown"))
    for (t in 1:length(html_nodes(page,xpath = '//img'))) {
      txt<-c(txt,xml_attrs(html_nodes(page, xpath = "//img")[[t]])[["src"]])
      nome<-c(nome,gsub(" ", "_",img[i]))
    }})
  }
  return(cbind(nome,txt))
}











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

txt<-webscraing_img(scar)

h<-txt

txt<-h[,2]


d<-substr(txt,1,3)=="htt"

immaginidascaricare<-txt[d]
nome<-h[d,1]


for(i in 1:length(immaginidascaricare)){
  download.file(immaginidascaricare[i],destfile=paste0("C:/Users/gieck/Desktop/CARTELLA TESI/WEB_SCRAPING/dati",nome[i],"/",nome[i],i,".jpg"),method='curl')
}





############# PLASTICA #-----------------------

txt<-webscraing_img(Plastica)




d<-substr(txt,1,3)=="htt"

immaginidascaricare<-txt[d]


for(i in 1:length(immaginidascaricare)){
  download.file(immaginidascaricare[i],destfile=paste0("C:/Users/gieck/Desktop/TESI/imm_web_scr/dati/plastica/Pastica",i,".jpg"),method='curl')
}



############# CARTA #-----------------------
img<-c("carta giornali","fogli di carta","pacchi di plastica","cartone pacchi","cartone pizza","carta appallottolata","fazzoletti di carta")
txt<-"img"
# i=1
txt<-webscraing_img(Carta)



d<-substr(txt,1,3)=="htt"

immaginidascaricare<-txt[d]


for(i in 1:length(immaginidascaricare)){
  download.file(immaginidascaricare[i],destfile=paste0("C:/Users/gieck/Desktop/TESI/imm_web_scr/dati/carta/Carta",i,".jpg"),method='curl')
}




############# VETRO #-----------------------
img<-c("vetro","bottiglie di vetro","bicchieri di vetro","tazzine di vetro","vetro bottiglie plastica","vetro rotto","vetro bottiglie vino")
txt<-"img"
# i=1
txt<-webscraing_img(Vetro)



d<-substr(txt,1,3)=="htt"

immaginidascaricare<-txt[d]


for(i in 1:length(immaginidascaricare)){
  download.file(immaginidascaricare[i],destfile=paste0("C:/Users/gieck/Desktop/TESI/imm_web_scr/dati/vetro/Vetro",i,".jpg"),method='curl')
}










############# LEGNO #-----------------------
img<-c("legno","legname","giochi di legno","utensili di legno","assi di legno")
txt<-"img"
# i=1
txt<-webscraing_img(Legno)



d<-substr(txt,1,3)=="htt"

immaginidascaricare<-txt[d]


for(i in 1:length(immaginidascaricare)){
  download.file(immaginidascaricare[i],destfile=paste0("C:/Users/gieck/Desktop/TESI/imm_web_scr/dati/legno/Legno",i,".jpg"),method='curl')
}



















############# FERRO #-----------------------
img<-c("ferro","giochi di ferro","utensili di ferro","metallo","lastre metallo","lastre ferro")
txt<-"img"
# i=1
txt<-webscraing_img(Metalli)



d<-substr(txt,1,3)=="htt"

immaginidascaricare<-txt[d]


for(i in 1:length(immaginidascaricare)){
  download.file(immaginidascaricare[i],destfile=paste0("C:/Users/gieck/Desktop/TESI/imm_web_scr/dati/ferro/Ferro",i,".jpg"),method='curl')
}




############# LATTA #-----------------------
img<-c("lattine di cocacola","lattine di pepsi","lattine di sprite","lattine di 7up","lattine di fanta","lattine di cocacola","lattine di pelati","lattine di cereali","lattine di legumi")
txt<-"img"
# i=1
txt<-webscraing_img(Latta_e_alluminio)



d<-substr(txt,1,3)=="htt"

immaginidascaricare<-txt[d]


for(i in 1:length(immaginidascaricare)){
  download.file(immaginidascaricare[i],destfile=paste0("C:/Users/gieck/Desktop/TESI/imm_web_scr/dati/latta/Lettine",i,".jpg"),method='curl')
}

































############# UMIDO #-----------------------
img<-c("cibo","umido cibo","organico cibo")
txt<-"img"
# i=1
txt<-webscraing_img(Umido)


d<-substr(txt,1,3)=="htt"

immaginidascaricare<-txt[d]


for(i in 1:length(immaginidascaricare)){
  download.file(immaginidascaricare[i],destfile=paste0("C:/Users/gieck/Desktop/TESI/imm_web_scr/dati/umido/Umido",i,".jpg"),method='curl')
}





############# tetrapak #-----------------------
img<-c("bottiglie di tetra pak","latte in tetra pak","succhi in tetra pak")
txt<-"img"
# i=1
txt<-webscraing_img(Tetra_Pak)



d<-substr(txt,1,3)=="htt"

immaginidascaricare<-txt[d]


for(i in 1:length(immaginidascaricare)){
  download.file(immaginidascaricare[i],destfile=paste0("C:/Users/gieck/Desktop/TESI/imm_web_scr/dati/tetrapak/Tetrapak",i,".jpg"),method='curl')
}




############# polistirolo #-----------------------
img<-c("bottiglie di tetra pak","latte in tetra pak","succhi in tetra pak")
txt<-"img"
# i=1
txt<-webscraing_img(Tetra_Pak)



d<-substr(txt,1,3)=="htt"

immaginidascaricare<-txt[d]


for(i in 1:length(immaginidascaricare)){
  download.file(immaginidascaricare[i],destfile=paste0("C:/Users/gieck/Desktop/TESI/imm_web_scr/dati/tetrapak/Tetrapak",i,".jpg"),method='curl')
}












