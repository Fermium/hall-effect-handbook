library(ggplot2)
library(here)
library(gridExtra)
library(ggpubr) #guarda se funziona questa

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
xlab(paste("Temperature ( degree C )" ))+ylab("Vhall (V)")+
ggtitle("Temperature VS Vhall")+
theme(plot.title = element_text(hjust = 0.5))

#temperatura vs vr
tempVSVres.plot<-ggplot()+
geom_line(data=data,aes(temp,Vr),col="blue")+
xlab(paste("Temperature ( degree C)" ))+ylab("Vres (V)")+
ggtitle("Temperature VS Vres")+
theme(plot.title = element_text(hjust = 0.5))

tempVSVhall.plot
tempVSVres.plot

#lisciamento curve
tempVSVhall.smooth<-with(data,smooth.spline(temp,-Vh))
tempVSVres.smooth<-with(data,smooth.spline(temp,Vr))

tempVSVhall.smooth.plot<-ggplot()+
  geom_line(data=with(tempVSVhall.smooth,data.frame(x,y)),aes(x,y),col="blue")+
  xlab(paste( "Temperature (degree C)" ))+ylab("Vhall (V)")+
  ggtitle("Temperature VS Vhall smooth")+
  theme(plot.title = element_text(hjust = 0.5))

tempVSVhall.smooth.plot

tempVSVres.smooth.plot<-ggplot()+
  geom_line(data=with(tempVSVres.smooth,data.frame(x,y)),aes(x,y),col="blue")+
  xlab(paste("Temperature (degree C )" ))+ylab("Vres (V)")+
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

