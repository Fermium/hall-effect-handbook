% Hall effect apparatus
% Torzo Giacomo. Revision by Davide Bortolami
% April 2016

<!-- ################################
to compile this document you need pandoc with the pandoc-eqnos filter
http://pandoc.org
https://github.com/tomduck/pandoc-eqnos

Original paper by Giacomo Torzo of LABTREK
Revision and new technical documentation by Davide Bortolami of Fermium LABS

http://labtrek.it
https://fermiumlabs.com

################################ -->
<!-- ![](Media/image1.jpeg) -->

### Introduction


Edwin Herbert Hall discovered the “Hall effect” in 1879 while working on his doctoral thesis in Physics investigating the influence of magnets on the resistance of a coil excited by a current. Hall discovered that a magnetic field would skew equipotential lines in a current-carrying conductor. This effect is observed as a voltage (Hall voltage) perpendicular to the direction of the current in the conductor.

The magnitude of this discovery is even more impressive considering how little was known about electricity in his time. The electron, for instance, was not identified until more than 10 years later.

The “Hall effect” remained a laboratory curiosity until the latter half of the XX century because the materials available, such as metals, would only produce small Hall voltages. With the advent of semiconductor technology and the development of various III-V compounds, it became possible to produce Hall voltages many orders of magnitude greater, allowing the production of Hall sensors, mostly made of indium antimonide (InSb), indium arsenide (InAs) and gallium arsenide (GaAs).

###A macroscopic approach to Ohm’s laws

The usual *macroscopic* approach to electrical conduction is based on the following experimental observations on metallic conductors:

1) The application of a steady voltage difference $V$ to a metallic wire produces a steady electric current $I$ proportional to $V$. This holds true at least for small values of $I$ when the temperature of the wire does not increase appreciably.

    This allows the definition of the *electric resistance* as follows, according to the first Ohm's law:
 $$R=\frac{ V }{ I }$$ {#eq:ohmLaw1}



2) For high currents the wire temperature increases and the power $W=VI$ supplied by the generator to the moving charges, instead of accelerating more and more the circulating charge, is converted into heat (Joule effect).

    It could appear that the moving charges are subjected to some kind of force, like a body falling in a viscous medium, so that they reach a steady motion and give up part of their kinetic energy to the “body” of the wire (i.e. to the crystal lattice).

3) The resistance $R$ increases with increasing temperature.

4) Using wires of different length $l$ and sections $S$ the second Ohm's law determines the resistance:

    $$ R= \frac{ \rho l}{S} $$ {#eq:ohmLaw2}

    Where the constant $\rho$ (the *electrical resistivity*) has a characteristic value for any material and increases with temperature.

The inverse quantity, the *electrical conductivity* $\sigma$, can be expressed using the two Ohm's laws as:

$$\sigma = \frac{1}{ \rho }=\frac{J}{E}$$ {#eq:conductivity}

Where $J$ is the current density and $E$ the electric field intensity. This is the starting relation needed to pass to a *microscopic* picture, that will allow a better understanding of the phenomena.


###A semiclassical microscopic model

The simplest microscopic model one can use is the “free electron gas" model of metals, in which the valence electrons are supposed to be practically free from their original atoms, and thus to move in the crystal lattice formed by the metal ions. In the absence of an applied electric field, the electron velocities are randomly distributed, with zero mean value and a *root mean square* value $v_{m}$ that may be evaluated from the equation:

$$\frac{1}{2}mv_{m}^2=\frac{3}{2}kT$$ {#eq:electronVrms}

where $k$ is the Boltzmann constant, $m$ the electron mass and $T$ the absolute temperature: at room temperature $v_{m}$ turns out to be of the order of $10^5 m/s$.

Only when an electric field is externally applied the electron motion acquires an ordered component with a *mean value* $v_d$ (the *drift velocity*) which turns out to be very small with respect to $v_{m}$ as we will show later.

The drift velocity, i.e. this ordered component of the motion due to the electric field and to the the scattering of the electrons with the lattice, is simply proportional to the electric field intensity. The constant ratio between $v_d$ and $E$ (both in modulus) is called the *drift mobility* $\mu$.

During a time $t$ of free motion between two collisions, the electrons increase their speed of the quantity:
$$ a t = \frac{qE}{m}t $$ {#eq:electronsDelta} <!-- ??? dovrebbe essere in funzione del tempo -->

Where $q$ is electron charge. The kinetic energy of the electrons also increases, but it can be assumed that with each collision they loose additional energy. The transfer of such energy to the lattice ions explains the Joule effect.

In figure 1 it can be noticed[^feynman] that <!--FIX-->, after the application of the electric field, the average speed of the electrons is not zero but instead:
$$v_d=a\tau=q\tau\frac{E}{m}$$ {#eq:electronsAvgSpd}

[^feynman]: See for instance *The Feynman lectures on Physics* vol.I 43-1,3  Addison-Wesley 1963.

Where $\tau$ is the mean free time between collisions[^meanFreeTimeBetweenCollisions], so that the drift mobility $\mu$ has the microscopic expression :

[^meanFreeTimeBetweenCollisions]: This time $\tau$ does not depend on the electric field because the average speed increment due to the applied electric field (*vd*) is very small with respect to the r.m.s. speed *vm* due to thermal motion .

$$ \mu = \frac{v_d}{E} = \frac{q\tau}{m} $$ {#eq:driftmobility}
Using these concepts of drift speed and mobility the current density $J$ can be written as:

$$ J = qn v_d $$ {#eq:currentDensity}

Where $n$ is the free electron concentration and relation ({@eq:conductivity}) and ({@eq:driftmobility}) allow us to give a *microscopic definition* of the electrical conductivity:

$$ \sigma = q n \mu $$ {#eq:electricalConductivity}

Relation ({@eq:electricalConductivity}) tells us that all the physics of electrical conduction is described by the two parameters $n$ and $\mu$.

In the electron gas model $n$ should be, for a monovalent metal:
$$n=\frac{N_Am}{\delta} $$ {#eq:nmonovalentmetal}

Where $N_A$ is Avogadro's number, $m$ is the atomic mass and $\delta$ the density. As an example $n=8.5*10^28m^{-3}$ for copper. <!--maybe add a reference to a cute table somehwere-->
Of course $n$ should not depend on the temperature.

A rough order of magnitude for the electron mobility may be derived using ({@eq:driftmobility}). A reasonable value for $\tau$ is: $\tau\approx\lambda/v_{m}$, where $\lambda$ is the electron mean free path, of the order of the interatomic distance in the metal (i.e. a few $\mathring{A}$) so that, at room temperature, $\tau$ is of the order of $10^{-15}s$.

Using the values of the elementary charge $e = 1.6*10^{-19 }C$ and of the electron mass $910^{-28} g$, the electron mobility $\mu=\frac{e\tau}{m}$ should be of the order of some $\frac{cm^2}{Vs}$.

Even for very large electric fields (up to $10^2 \frac{V}{cm}$) the drift velocity $v_d=\mu E$ is thus much smaller than $v_{m}$.

Drift mobility should decrease with increasing temperature[^drifmobilityAndTemperature] because of the increased thermal vibrations of the lattice ions. This effect can be studied by measuring the dependence of the electrical conductivity on temperature, but only if the free carrier concentration is the same at all temperatures.

[^drifmobilityAndTemperature]: Drift mobility in semiconductors decreases with the absolute temperature $T$ as $T^{-\alpha }$, where $1.5<a<3.0$ depending on the prevailing type of interactions of the free carriers (with phonons, lattice defects, or impurities).

In order to check experimentally the microscopic model we must measure not only the electrical resistance (which gives the product of $n$ and $\mu$) but also the free charge density $n$: this can be obtained by performing a measurement of the Hall effect.

###The Hall effect

The Hall effect is essentially due to the Lorentz force $\vec { F }$ acting on each electric charge $q$ moving with velocity $v$ in a magnetic field $B$.
$$\vec { F } =q\vec { V } \wedge \vec { B }$$ {#eq:lorentzForce}

Let us consider a conducting bar (figure 1) immersed into a uniform magnetic field $B$ directed along the $z$ axis, with an electric current $I_x$ flowing along the $x$ axis.

![Hall effect geometry. the Lorentz force $F_L$ on moving charges, both positive and negative, acts in the direction shown by the arrow (independently from the charge sign).](Media/hall-effect-geometry.jpeg)

In metals the electric current is only due to electrons. In semiconductors the charge carriers may be either electrons or holes.

In a pure semiconductor the electron density $n$ and the hole density $p$ is identical, in doped semiconductor we have $n\gg p$ (in N-doped material) or $p\gg n$ (in P-doped material). In doped semiconductors only one type of charge carriers is therefore important.

Let us consider first a metal or a N-doped semiconductor sample, where the relevant charge carriers are electrons.

In the electric field $E_x$ the electrons gain a drift velocity $v_d=–\mu E_x$ and they are subject to the Lorentz force $F_L=qv_dB$, pointing towards the negative $y$. While drifting in the $x$ direction they tend to crowd at the sample surface orthogonal to the $y$ axis and placed towards the reader in figure 1.

This charge density increase at the sample lateral surface produces a difference of potential along the $y$ axis and therefore an electric field $E_H$. The value of the *Hall field* $E_H$ at equilibrium will correspond to an electric force $qE_H$ equal and opposite to the Lorentz force, i.e. $E_H=v_d B$. This relation tells us that the Hall field is proportional both to the current density (through $v_d$) and to the magnetic field. It is therefore convenient to define the Hall coefficient as:

$$ R_H=\frac{E_H}{J_x B_z}$$ {#eq:hallCoefficient}

Recalling the relations $J_x=-env_d$ (or $J_x=+epv_d$) we get :

$$ R_{ H }=V_{ d }\frac { B }{ J_{ x }B } =\frac { -1 }{ en } $$ {#eq:R_Hmn}
or otherwise, for P-doped conductors:
  $$ R_{ H }=\frac { +1 }{ ep }  $$ {#eq:R_Hp}

Depending on the type of conductor, either metal ({@eq:R_Hmn}) , N-doped ({@eq:R_Hmn}) or P-doped ({@eq:R_Hp}).

Measuring $R_H$ we can determine the concentration $n$ of majority carriers and their sign (if we know the direction of the vectors $\vec { B } ,\vec { J } ,\vec { E_{ h } }$ ).

We can obtain relation ({@eq:R_Hmn}) by assuming identical drift velocity for all charge carriers. This is an approximate relation, found in the literature: <!--FIX, source?-->

$R_H = \frac{r}{nq}$ {#eq:foundInLiterature}

Where $r$ is a parameter that accounts for the statistical velocity distribution of the charge carriers, as well as the different scattering mechanisms: $r\approx 1.2$ for mainly phonon scattering (lattice vibrations) and $r\approx 1.9$ for mainly impurity scattering. <!--FIX, mainly? sounds strange-->

The Hall coefficient in semiconductors is many order of magnitude larger than the one in metals, due to the smaller charge density. This makes easier to measure Hall voltages in semiconductors, where a bias current $I_x$ of a few $mA$ may conveniently generate a Hall voltage $V_H$ of in the order of a few $mV$.

To measure $R_H$ we must know $V_H$, $I_x$, $B$ and the sample thickness $t$:

$$R_{ H }=\frac { E_{ h } }{ B{ J }_{ x } } =\frac { V_{ H } }{ s } =\frac { B{ I }_{ x } }{ ts } =\frac { V_{ h }t }{ B{ I }_{ x } } $$   {#eq:R_h}

It is worth noting that the the Lorentz force direction does not depend on the charge sign.

The general expression for $R_H$, valid (see Appendix 1) <!-- FIX --> when *both electrons and holes* are present with densities $n$ and $p$ and mobility $\mu_e$ and $\mu_h$ is:

$$R_{ H }=r\frac { p\mu ^{ 2 }_{ h }-n\mu ^{ 2 }_{ e } }{ e(p\mu _{ h }-n\mu _{ e })^{ 2 } } $$ {#eq:R_hGeneralExpression}

Which corresponds to the relations   and ({@eq:R_Hmn}) and ({@eq:R_Hp}) for $p\gg n$ or $n\gg p$

When two types of charge carriers are present the electrical conductivity becomes:

$$\sigma =e(p \mu_h + n \mu_e)$$ {#eq:electricalConductivity2Carriers}

The product $R_H \sigma$, is named Hall mobility $\mu_H$ (note the capital index "$H$" that distinguish it from hole mobility $\mu_h$).

For a doped semiconductor the Hall mobility $\mu_H$ approximates the *majority carriers* drift mobility $\mu_{h,e}$:

$$\mu _{ H }=R_{ H }\sigma =r\frac { p \mu^2_h - n \mu^2_e }{p \mu_h + n \mu_e  } \approx r \mu_{h,e} $$ {#eq:muApproximateDriftMobility}

From relation ({@eq:R_hGeneralExpression}) we see that by increasing the temperature in a *P-doped sample*, generating many intrinsic[^4] carriers (i.e. electron-hole pairs), the Hall coefficient $R_H$ (which is positive at room temperature in the extrinsic region) tends to decrease, and it may even change sign. This is explained by the mobility ratio  $b=\mu_e/\mu_h>1$. *Note that this does not happen with a* N*-doped sample*.

[^4]: *Intrinsic* term labels properties related to pure semiconductors or to doped semiconductors at hight temperature, where the thermally generated carriers density is much larger than the (*extrinsic*) carrier density due to the dopant.

From relation ({@eq:R_hGeneralExpression}) at the temperature where $R_H=0$ (“*inversion point*”) we get $nb^2=p$, with $p=N_a+N$ <!-- if it is avogadro number it should be N_A? --> and $n=N$ (where $N_a$ is the dopant density and $N$ is the thermally-generated charge density in the intrinsic zone).
Therefore $Nb^2= N_a+N$, or $N_a/N=b^2-1$.

The intrinsic conductivity *measured* at the inversion point is:

$$ \sigma_{oi} = e(n \mu_e + p \mu_h ) = e[N( \mu_e + \mu_h)+ N_a \mu_h ] = e \mu_h [N(b+1)+N_a]$$ {#eq:intrinsicConductivityInvPoint}


In the extrinsic region of a P-doped sample, where the charge carrier density is constant $n=N_a$, the conductivity is proportional to the carrier mobility $\mu_h$: i.e. $\sigma_e(T) = eN_a \mu_h(T)$

The experimentally measured temperature dependence of the mobility is a power-law $\mu(T)=const( T^\alpha)$, where the exponent $\alpha$ (in the range $1.5<\alpha<3.0$) depends on the type of prevailing interaction of the charge carriers with phonons, lattice defects or impurities).

Therefore we may *extrapolate the extrinsic conductivity at the inversion point* $\sigma_{ei}$, and from the ratio ${\sigma_{oi}}/{\sigma_{ei}}$ we get the $b$ value:

$$ \frac{\sigma_{oi}}{\sigma_{ei}} =e\mu_h \frac{N(b+1) + N_a}{e N_a \mu_h}= \frac{b}{b-1}$$ {#eq:extrinsicConductivityInvPoint}

Which can as well be written as:

$$b=\frac{R_e}{R_e-R_o}$$ {#eq:extrinsicConductivityInvPoint2}

Where $R_o$ is the measured sample resistance at the inversion point and $R_e$ is the resistance extrapolated from the extrinsic region (low temperature) to the value it would have at the inversion temperature.

The dopant concentration is related to the value of the *Hall constant at the inversion point* $R_{Ho}$ (in the extrinsic region only the hole concentration is significant) by the equations ({@eq:R_Hmn}) and ({@eq:R_Hp}), i.e. :
$$ N_a \approx p \approx \frac{1}{e R_{Ho}}$$ {#eq:HallConstantInvPointRelation}

#References

* J.C. Slater *Quantum Theory of matter*, mcGraw-Hill (1951).
* C.L.Chin e C.R.Westgate, *The Hall Effect and Its Applications*, Plenum Press, NY, 1979
* J.R.Hook , H.E.Hall *Solid State Physics*, John Wiley &Sons 1991.
* A. C melissinos *Experiments in modern Physics*, Academic Press, 1993.
* *New Semiconductor materials. Characteristics and Properties* (Electronic archive)
[*http://www.ioffe.rssi.ru/SVA/NSm/introduction.html.*](http://www.ioffe.rssi.ru/SVA/NSm/introduction.html)
* *The Semiconductor informations WebSite* (properties of Germanium)
[*http://www.semiconductors.co.uk/propiviv5431.htm.*](http://www.semiconductors.co.uk/propiviv5431.htm)
