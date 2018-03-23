library(ggplot2)
library(here)
library(gridExtra)
library(ggpubr) #guarda se funziona questa
#mi sa che questo non va
# library(showtext)
# # If you have this font installed 
# #font.add("gara", "gara.ttf") 
# # Or you can install a similar one from Google Font 
# font_add_google("Roboto", "Roboto") 
# #https://rpubs.com/Koundy/71792 plot carini
# theme_Publication <- function(base_size=14, base_family="helvetica") {
#   library(grid)
#   library(ggthemes)
#   (theme_foundation(base_size=base_size, base_family=base_family)
#     + theme(plot.title = element_text(face = "bold",
#                                       size = rel(1.2), hjust = 0.5),
#             text = element_text(),
#             panel.background = element_rect(colour = NA),
#             plot.background = element_rect(colour = NA),
#             panel.border = element_rect(colour = NA),
#             axis.title = element_text(face = "bold",size = rel(1)),
#             axis.title.y = element_text(angle=90,vjust =2),
#             axis.title.x = element_text(vjust = -0.2),
#             axis.text = element_text(), 
#             axis.line = element_line(colour="black"),
#             axis.ticks = element_line(),
#             panel.grid.major = element_line(colour="#f0f0f0"),
#             panel.grid.minor = element_blank(),
#             legend.key = element_rect(colour = NA),
#             legend.position = "bottom",
#             legend.direction = "horizontal",
#             legend.key.size= unit(0.2, "cm"),
#             legend.margin = margin(0, "cm"),
#             legend.title = element_text(face="italic"),
#             plot.margin=unit(c(10,5,5,5),"mm"),
#             strip.background=element_rect(colour="#f0f0f0",fill="#f0f0f0"),
#             strip.text = element_text(face="bold")
#     ))
#   
# }
# 
# scale_fill_Publication <- function(...){
#   library(scales)
#   discrete_scale("fill","Publication",manual_pal(values = c("#386cb0","#fdb462","#7fc97f","#ef3b2c","#662506","#a6cee3","#fb9a99","#984ea3","#ffff33")), ...)
# }
# 
# scale_colour_Publication <- function(...){
#   library(scales)
#   discrete_scale("colour","Publication",manual_pal(values = c("#386cb0","#fdb462","#7fc97f","#ef3b2c","#662506","#a6cee3","#fb9a99","#984ea3","#ffff33")), ...)
# }
# 
# 
# old <- theme_set(theme_Publication(base_family='Roboto'))
# theme_set(old)
#experiment data

data = read.csv(here('analysis','data','ltk-hall-ge current', 'experiment_1.csv'),header = T)

data<-data[-(1:200),]#rimossi i primi 200 valori per pulizia dei dati
data$time<-(data$time-data$time[1])/1000

Vhvstime.plot<-ggplot()+
               geom_line(data=data,aes(time,-Vh),col="blue")+
               xlab("time (s)")+ylab("Vhall (V)")+
               ggtitle(expression("Vhall vs Time"))+
               theme(plot.title = element_text(hjust = 0.5))

Rvstime.plot<-ggplot()+
              geom_line(data=data,aes(time,R),col="green")+
              xlab("time (s)")+ylab(expression(paste("R (",Omega,")")))+
              ggtitle("R vs Time")+
             theme(plot.title = element_text(hjust = 0.5))

Tvstime.plot<-ggplot()+  
              geom_line(data=data,aes(time,temp),col="red")+
              xlab("time (s)")+ylab(expression(paste("Temperature (",degree,K,")")))+
              ggtitle("Temperature vs Time")+
              theme(plot.title = element_text(hjust = 0.5))
    

grid.arrange(Vhvstime.plot,Rvstime.plot,Tvstime.plot,nrow=3)


#temperatura vs vh
tempVSVhall.plot<-ggplot()+
geom_line(data=data,aes(temp,-Vh),col="blue")+
xlab(paste("Temperature (",degree,C,")"))+ylab("Vhall (V)")+
ggtitle("Temperature VS Vhall")+
theme(plot.title = element_text(hjust = 0.5))

#temperatura vs vr
tempVSVres.plot<-ggplot()+
geom_line(data=data,aes(temp,Vr),col="blue")+
xlab(paste("Temperature (",degree,C,")"))+ylab("Vres (V)")+
ggtitle("Temperature VS Vres")+
theme(plot.title = element_text(hjust = 0.5))

tempVSVhall.plot
tempVSVres.plot

#lisciamento curve
tempVSVhall.smooth<-with(data,smooth.spline(temp,-Vh))
tempVSVres.smooth<-with(data,smooth.spline(temp,Vr))

tempVSVhall.smooth.plot<-ggplot()+
  geom_line(data=with(tempVSVhall.smooth,data.frame(x,y)),aes(x,y),col="blue")+
  xlab(paste("Temperature (",degree,C,")"))+ylab("Vhall (V)")+
  ggtitle("Temperature VS Vhall smooth")+
  theme(plot.title = element_text(hjust = 0.5))

tempVSVhall.smooth.plot

tempVSVres.smooth.plot<-ggplot()+
  geom_line(data=with(tempVSVres.smooth,data.frame(x,y)),aes(x,y),col="blue")+
  xlab(paste("Temperature (",degree,C,")"))+ylab("Vres (V)")+
  ggtitle("Temperature VS Vres smooth")+
  theme(plot.title = element_text(hjust = 0.5))

tempVSVres.smooth.plot


K<-8.617e-5

energy<-1/(2*K*data$temp)

logR<-log(data$Vr)

#logR vs energy
logRVSenergy.plot<-ggplot()+
geom_line(data=data.frame(x=energy,y=logR),aes(x,y),col="blue")+
xlab(expression(frac(1,2*k*T)))+ylab(expression(ln(R)))+
ggtitle("ln(R) vs Energy")+
theme(plot.title = element_text(hjust = 0.5))

logRVSenergy.plot

#calcolo coefficiente angolare, il valore 16 come cutoff per l'energia è scelto arbitrariamente secondo i valori del grafico
x<-energy[energy<15]
y<-logR[energy<15]
model.lm<-lm(y~x)
model.lm.intercept<-model.lm$coefficients[1]
model.lm.slope<-model.lm$coefficients[2]
energyVsVres.plot<-ggplot()+
  geom_line(aes(energy,logR))+
  geom_abline(intercept=model.lm.intercept,slope=model.lm.slope,colour="red")+
  xlab(expression(frac(1,2*k*T)))+ylab(expression(ln(R)))+
  ggtitle(expression(paste("ln(R) vs ", frac(1,2*k*T))))+
  theme(plot.title = element_text(hjust = 0.5))

energyVsVres.plot


#lisciamento curva
energyVsVres.smooth <- smooth.spline(energy,logR)
x2<-energyVsVres.smooth$x[energyVsVres.smooth$x<15]
y2<-energyVsVres.smooth$y[energyVsVres.smooth$x<15]
model.lm2<-lm(y2~x2)
model.lm2.intercept<-model.lm$coefficients[1]
model.lm2.slope<-model.lm$coefficients[2]
energyVsVres.smooth.plot<-ggplot()+
                          geom_line(data=with(energyVsVres.smooth,data.frame(x,y)),aes(x,y))+
                          geom_abline(intercept=model.lm2.intercept,slope=model.lm2.slope,colour="red")+
                          geom_abline(intercept=model.lm2.intercept,slope=model.lm2.slope,colour="red")+
                          geom_abline(intercept=model.lm2.intercept,slope=model.lm2.slope,colour="red")+
                          xlab("Energy")+ylab("logR")+
                          ggtitle("Energy VS logR")+
                          theme(plot.title = element_text(hjust = 0.5))

energyVsVres.smooth.plot



#energy gap
tt<-seq(0,450,1)
eg<-0.742-(4.8*tt^2*10^(-4))/(tt+235)
ttt<-tt[201:length(tt)]
egg<-eg[201:length(eg)]
model<-lm(egg~ttt)
egvst.plot<-ggplot()+
            geom_line(aes(tt,eg))+
            geom_abline(intercept=model$coefficients[1],slope=model$coefficients[2],colour="red")+ylim(0,0.75)+
            xlab(expression(paste("Temperature (",degree,K,")")))+ylab("Energy Gap (eV)")+
            ggtitle("Energy Gap VS Temperature")+
            theme(plot.title = element_text(hjust = 0.5))
egvst.plot
