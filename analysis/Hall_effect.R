 #Imports and basic settings
library(here)
library(tidyverse)
library(ggplot2)
setwd(here())
par(mfrow=c(1,1))

#Thermocouple Polynomial Fit

therm.K<-read.csv("./Therm_K fit.csv",sep=",")
colnames(therm.K)<-c("T","Ek","CalcT4","Error4","CalcT5","Err5")
attach(therm.K)
TEkPlot<-ggplot(data=therm.K,aes(x=Ek,y=T))+
         geom_line()+
         ggtitle('Thermocopule value vs Temperature')+
         theme(plot.title = element_text(hjust = 0.5))
TEkPlot
# Linear model fitting 
model<-lm(T ~ Ek+I(Ek^2)+I(Ek^3)+I(Ek^4)+I(Ek^5))#Coefficients calculated as function of Ek
coefficients<-model$coefficients
names(coefficients)<-c("b0","b1","b2","b3","b4")
E<-function(Vout){
  (1/2)*(Vout-2.5-1.25e-3)/122.4
}

fit<-function(E,b){
  b[1]+b[2]*E+b[3]*E^2+b[4]*E^3+b[5]*E^4+b[6]*E^5
}

FitVsReal<-TEkPlot+geom_line(data=data.frame(x=Ek,y=model$fitted.values),aes(x=x,y=y,colour='Fit'),linetype=5)+scale_colour_manual(name='Legend',values=c("Real"="black","Fit"="grey"))
FitVsReal
detach()
hall.data<-read.csv("./HallFermium2.csv",sep=",")
colnames(hall.data)<-c("t","Vtermoc","Vhall","Vres")
attach(hall.data)
Vres.fix<-c(Vres[1:2399]/2.5,Vres[-(1:2399)])
temperatures<-predict(model,newdata=data.frame(Ek=E(Vtermoc)*1000))
par(mfrow=c(1,2))
plot(temperatures,Vhall,type="l")
plot(temperatures,Vres.fix,type="l")
tempVSVhall<-ksmooth(temperatures,Vhall/20,"normal",bandwidth =20)
tempVSVres<-ksmooth(temperatures,Vres.fix,"normal",bandwidth =20)
tempVSVhall.plot<-ggplot()+geom_line(aes(tempVSVhall$x,tempVSVhall$y),col="blue")+xlab("Temperature (°C)")+ylab("Vhall (V)")+ggtitle("Temperature VS Vhall")
tempVSVres.plot<-ggplot()+geom_line(aes(tempVSVres$x,tempVSVres$y),col="red")+xlab("Temperature (°C)")+ylab("Vres (V)")+ggtitle("Temperature VS Vres")
require(gridExtra)
grid.arrange(tempVSVhall.plot,tempVSVres.plot,ncol=2)
tempVSVres.Kelvin<-tempVSVres
tempVSVres.Kelvin$x=tempVSVres.Kelvin$x+273.15
tempVSVhall.Kelvin<-tempVSVhall
tempVSVhall.Kelvin$x=tempVSVhall.Kelvin$x+273.15
tempVSVhall.Kelvin.plot<-ggplot()+geom_line(aes(tempVSVhall.Kelvin$x,tempVSVhall.Kelvin$y),col="blue")+xlab("Temperature (?K)")+ylab("Vhall (V)")+ggtitle("Temperature VS Vhall")+theme(plot.title = element_text(hjust = 0.5))

tempVSVres.Kelvin.plot<-ggplot()+geom_line(aes(tempVSVres.Kelvin$x,tempVSVres.Kelvin$y),col="red")+xlab("Temperature (?K)")+ylab("Vres (V)")+ggtitle("Temperature VS Vres")+theme(plot.title = element_text(hjust = 0.5))

require(gridExtra)
grid.arrange(tempVSVhall.Kelvin.plot,tempVSVres.Kelvin.plot,ncol=2) 

K<-8.617e-5
energy<-1/(2*K*tempVSVres.Kelvin$x)
log.Vres<-log(tempVSVres.Kelvin$y)
logR<-log(tempVSVres.Kelvin$y/0.01)
model.x<-energy[2660:length(log.Vres)]
model.y<-logR[2660:length(log.Vres)]
model.lm<-lm(model.y~model.x)
model.lm.intercept<-model.lm$coefficients[1]
model.lm.slope<-model.lm$coefficients[2]
energyVsVres.plot<-ggplot()+geom_line(aes(energy,logR))+geom_abline(intercept=model.lm.intercept,slope=model.lm.slope,colour="red")
energyVsVres.plot

