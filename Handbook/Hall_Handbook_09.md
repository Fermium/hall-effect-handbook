### Suggested procedure 

The display on the controller box shows the sample temperature in Celsius (calculated from the measured thermocouple signal), the measured bias current $I_b$ (mA), the sample resistance (calculated from the measured voltage drop across the sample) and the selected values of the $V_H$ and $V_R$ channels.

 To obtain accurate measurements the best procedure is the following:

1. Connect the sample cables to the HUB and the HUB to the controller with the two ethernet cables (note: connect the controller port A with HUB port A ,and B with B), connect all the controller outputs (BNC ports) to your data-logger sensor inputs,  and choose an acquisition run with approximately $0.1Hz$ rate (i.e. 1 sample every 10 seconds) and duration at least 6000 seconds.
2. Choose a width for gap between the permanent magnets and measure the magnetic field B in the middle, using a gauss-meter. Place the sample far from the magnetic field and trim the balance-potentiometer to minimize the $V_H$ signal. Lock the potentiometer knob.
3. Place the sample in the middle of the gap. Choose a proper value for the current $I_b$ within the 7-25 mA allowed range, and select the proper gains for $V_H$ and $V_R$ channels. Note : the resistance at higher temperature may exceed the value at room temperature of a factor 2, and  also the VH signal increase with temperature. Therefore at room temperature your data-logger should read typically $V_{out \, H} <0.4V$ and $V_{out \, R}<2.5V$. 
4. Check that the $V_H$ value changes sign when rotating the sample of 180° around vertical axis. Choose the orientation that gives positive $V_H$.
5.  Prepare all the data conversion you think useful. For example : from $V_{out \, R}$ and the known $I_b$ and $G_R$ gain values obtain R(ohm), from $V_{out \, H}$ and $G_H$ gain values obtain $V_H$ (in $mV$), from $V_{out \, T}$ obtain the K-thermocouple efm E(mV) $[E=0.5 \cdot 1000 \cdot \frac{ (V_{out \, T}-2.5-0.00125)}{122.4}]$, from the calculated $E(mV)$ obtain the Celsius temperature $t$ using the fitting polynomial,...
6. Fill about half of the dewar with liquid nitrogen and wait until the liquid surface is quiet.
7. Prepare at least one graph with temperature vs time, and one with output signals vs time in your data-logger. Insert the cold finger into the dewar (the PTFE dewar-cover should seat stable onto the dewar mouth, and the PTFE heater cover should be set with the hole hosting the pin protruding from the dewar-cover) as shown in figure {@fig:ScrewDevice}. Adjust the sample in the mid of the magnet-gap and start the data acquisition.
8. When the plot temperature vs time shows a slope close to zero, stop the data acquisition and save your data.
9. Empty the dewar (e.g. transfering the residual liquid nitrogen into another dewar), reposition the sample in the middle of the magnets-gap and start a new data acquisition for increasing temperature.
10. When the temperature vs. time slope start approaching zero, switch-ON the heater (Press the control knob 3 times, until the arrow reaches the OFF and turn the knob). 

To obtain precise measurements, at least one hour is required for the whole temperature sweep. Note: it is not suggested to keep liquid nitrogen inside the dewar while heating-up the sample: the temperature would rise more slowly and more humidity would condense onto the outer surface of the aluminum probe envelope. It is also useful to blow-off the frost in order to prevent water entering the probe envelope (this might affect the thermocouple signal).
