### Typical results

The sample shown in figure 3 (and used to obtain the data  in the following examples)  has thickness $t=0.5mm$, width $w=10mm$ and lenght $l=15mm$.

A calibration of the magnetic field intensity $B$ vs. gap $d$ between magnets is shown in figure {@fig:BvsGapD}. 

![Measured $B$ values vs gap width $d$](Media/H_vs_d.jpeg){#fig:BvsGapD}
\ 

An example of the measured $V_H$ vs. magnetic field $B$ at room temperature is shown in figure {@fig:HallvsIb}.


![Hall voltage versus magnetic field intensity $B$  .](Media/Vh_vs_B.jpeg){#fig:HallvsIb}
\ 


Figure {@fig:Output_voltages_versus_time} shows an example of the measured values of the 3 output signals vs temperature obtained with a constant bias current $I_B=10mA$ and in a 0.4 $T$ magnetic field, using Vernier-LabPro interface. The graph shows *Potential 1*  $= V_{out \, T}$, *Potential 2* $= V_{out \,H}$, *Potential 3* $= V_{out \, R}$. 



![Output voltages versus time.](Media/Out_vs_time.jpg){#fig:Output_voltages_versus_time}
\ 


Figure 9  shows an example of calculated data obtained using LoggerPro software. 
The Hall voltage $V_{H}$ (in mV) is is obtained from $V_{outH}$ by subtracting the offset 2.5 V and by accounting for the used value of the channel-H gain (here GainH=10). The resistance $R$ is calculated from $V_{outR}$ by  accounting for the used value of the channel-R gain (here GainR=0.5)and the measured value of the bias current $Ib$ .


![Example of calculated data ](Media/example.png){#fig:Example}
\ 


In order to evaluate the Ge energy gap $E_g$, a plot of $ln(R)$ vs. $1/2kT$ was built, after calculating from the Celsius temperature $Tc$ the absolute temperature $T$ ($k$ is the Boltzmann constant $k = 8.617 \cdot 10^{-5}$.

From the slope in the intrinsic region (high temperature region, see Fig. {@fig:EgFit} ) we get the value of the energy gap $E_g$, extrapolated linearly to $T=0^{\circ}\mathrm{K}$, that can be compared to the known value for germanium ($E_g^o=0.78$, see Appendix 3)



![Example of linear best fit in the intrinsic region (high temperature) ](Media/ImageEgFit.jpg){#fig:EgFit}
\ 
