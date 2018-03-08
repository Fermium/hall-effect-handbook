library(here)
library(tidyverse)
library(ggplot2)
library(gridExtra)
setwd(here())
nisttable.b<-read.csv(here("analysis/thermocouples", "type_b_out.csv"),sep=",", header=FALSE)
nisttable.e<-read.csv(here("analysis/thermocouples", "type_e_out.csv"),sep=",", header=FALSE)
nisttable.j<-read.csv(here("analysis/thermocouples", "type_j_out.csv"),sep=",", header=FALSE)
nisttable.k<-read.csv(here("analysis/thermocouples", "type_k_out.csv"),sep=",", header=FALSE)
nisttable.n<-read.csv(here("analysis/thermocouples", "type_n_out.csv"),sep=",", header=FALSE)
nisttable.r<-read.csv(here("analysis/thermocouples", "type_r_out.csv"),sep=",", header=FALSE)
nisttable.s<-read.csv(here("analysis/thermocouples", "type_s_out.csv"),sep=",", header=FALSE)
nisttable.t<-read.csv(here("analysis/thermocouples", "type_t_out.csv"),sep=",", header=FALSE)
nisttable.b$V2<-nisttable.b$V2*1000000
nisttable.e$V2<-nisttable.e$V2*1000000
nisttable.j$V2<-nisttable.j$V2*1000000
nisttable.k$V2<-nisttable.k$V2*1000000
nisttable.n$V2<-nisttable.n$V2*1000000
nisttable.r$V2<-nisttable.r$V2*1000000
nisttable.s$V2<-nisttable.s$V2*1000000
nisttable.t$V2<-nisttable.t$V2*1000000




thermocop.plot<-ggplot()+ 
  geom_line(data=nisttable.b,aes(x=V1,y=c(0,diff(V2)/diff(V1))),colour='red')+
  geom_line(data=nisttable.e,aes(x=V1,y=c(0,diff(V2)/diff(V1))),colour='blue')+
  geom_line(data=nisttable.j,aes(x=V1,y=c(0,diff(V2)/diff(V1))),colour='green')+
  geom_line(data=nisttable.k,aes(x=V1,y=c(0,diff(V2)/diff(V1))),colour='orange')+
  geom_line(data=nisttable.n,aes(x=V1,y=c(0,diff(V2)/diff(V1))),colour='magenta')+
  geom_line(data=nisttable.r,aes(x=V1,y=c(0,diff(V2)/diff(V1))),colour='black')+
  geom_line(data=nisttable.s,aes(x=V1,y=c(0,diff(V2)/diff(V1))),colour='purple')+
  geom_line(data=nisttable.t,aes(x=V1,y=c(0,diff(V2)/diff(V1))),colour='sienna3')+ylim(0,100)
thermocop.plot


