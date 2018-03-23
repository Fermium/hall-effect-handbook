library(here)
library(tidyverse)
library(ggplot2)
library(gridExtra)
library(readr)

setwd(here())

# Import all the tabless
nisttable.b <- read_csv(here("analysis/thermocouples/type_j_manclean.csv"),col_names = FALSE)
nisttable.e <- read_csv(here("analysis/thermocouples/type_j_manclean.csv"),col_names = FALSE)
nisttable.j <- read_csv(here("analysis/thermocouples/type_j_manclean.csv"),col_names = FALSE)
nisttable.k <- read_csv(here("analysis/thermocouples/type_j_manclean.csv"),col_names = FALSE)
nisttable.n <- read_csv(here("analysis/thermocouples/type_j_manclean.csv"),col_names = FALSE)
nisttable.r <- read_csv(here("analysis/thermocouples/type_j_manclean.csv"),col_names = FALSE)
nisttable.s <- read_csv(here("analysis/thermocouples/type_j_manclean.csv"),col_names = FALSE)
nisttable.t <- read_csv(here("analysis/thermocouples/type_j_manclean.csv"),col_names = FALSE)

# convert from V to uV
nisttable.b$X2<-nisttable.b$X2*1000000
nisttable.e$X2<-nisttable.e$X2*1000000
nisttable.j$X2<-nisttable.j$X2*1000000
nisttable.k$X2<-nisttable.k$X2*1000000
nisttable.n$X2<-nisttable.n$X2*1000000
nisttable.r$X2<-nisttable.r$X2*1000000
nisttable.s$X2<-nisttable.s$X2*1000000
nisttable.t$X2<-nisttable.t$X2*1000000

library(plotly)
plot_ly(z = ~volcano)


  