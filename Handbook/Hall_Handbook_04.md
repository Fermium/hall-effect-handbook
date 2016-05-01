##A semiclassical microscopic model

The simplest microscopic model one can use is the “free electron gas" model of metals, in which the valence electrons are supposed to be practically free from their original atoms, and thus to move in the crystal lattice formed by the metal ions. In the absence of an applied electric field, the electron velocities are randomly distributed, with zero mean value and a *root mean square* value $v_{m}$ that may be evaluated from the equation:

$$\frac{1}{2}mv_{m}^2=\frac{3}{2}kT$$ {#eq:electronVrms}

where $k$ is the Boltzmann constant, $m$ the electron mass and $T$ the absolute temperature: at room temperature $v_{m}$ turns out to be of the order of $10^5 m/s$.

Only when an electric field is externally applied the electron motion acquires an ordered component with a *mean value* $v_d$ (the *drift velocity*) which turns out to be very small with respect to $v_{m}$ as we will show later.

The drift velocity, i.e. this ordered component of the motion due to the electric field and to the the scattering of the electrons with the lattice, is simply proportional to the electric field intensity. The constant ratio between $v_d$ and $E$ (both in modulus) is called the *drift mobility* $\mu$.

During a time $t$ of free motion between two collisions,the electrons subject to the force $qE$ ($q$ is the electron charge) increase their speed of the quantity:
$$ a t = \frac{qE}{m}t $$ {#eq:electronsDelta} 

The kinetic energy of the electrons also increases, but it can be assumed that with each collision they loose additional energy. The transfer of such energy to the lattice ions explains the Joule effect.

It can be noticed[^feynman] that, after the application of the electric field, the average speed of the electrons is not zero but instead:
$$v_d=a\tau=q\tau\frac{E}{m}$$ {#eq:electronsAvgSpd}

[^feynman]: See for instance *The Feynman lectures on Physics* vol.I 43-1,3 Addison-Wesley 1963.

obtained from {#eq:electronsDelta} where $\tau$ is the mean free time between collisions [^meanFreeTimeBetweenCollisions], so that the drift mobility $\mu$ has the microscopic expression :

[^meanFreeTimeBetweenCollisions]: This time $\tau$ does not depend on the electric field because the average speed increment due to the applied electric field $V_d$ is very small with respect to the r.m.s. speed $V_m$ due to thermal motion .

$$ \mu = \frac{v_d}{E} = \frac{q\tau}{m} $$ {#eq:driftmobility}
Using these concepts of drift speed and mobility the current density $J$ can be written as:

$$ J = qn v_d $$ {#eq:currentDensity}

where $n$ is the free electron concentration and relation ({@eq:conductivity}) and ({@eq:driftmobility}) allow us to give a *microscopic definition* of the electrical conductivity:

$$ \sigma = q n \mu $$ {#eq:electricalConductivity}

Relation ({@eq:electricalConductivity}) tells us that all the physics of electrical conduction is described by the two parameters $n$ and $\mu$.

In the electron gas model $n$ should be, for a monovalent metal:
$$n=\frac{N_Am}{\delta} $$ {#eq:nmonovalentmetal}

where $N_A$ is Avogadro's number, $m$ is the atomic mass and $\delta$ the density. As an example $n=8.5 \cdot 10^{28}m^{-3}$ for copper. <!--maybe add a reference to https://en.wikipedia.org/wiki/Number_density-->
Of course here $n$ does not depend on the temperature, while drift mobility  decreases with increasing temperature[^drifmobilityAndTemperature] because of the increased thermal vibrations of the lattice ions. 


[^drifmobilityAndTemperature]: Drift mobility in semiconductors decreases with the absolute temperature $T$ as $T^{-\alpha }$, where $1.5<a<3.0$ depending on the prevailing type of interactions of the free carriers (with phonons, lattice defects, or impurities).


A rough order of magnitude for the electron mobility may be derived using ({@eq:driftmobility}). A reasonable value for $\tau$ is: $\tau\approx\lambda/v_{m}$, where $\lambda$ is the electron mean free path, of the order of the interatomic distance in the metal (i.e. a few $\mathring{A}$) so that, at room temperature, $\tau$ is of the order of $10^{-15}s$.

Using the values of the elementary charge $e = 1.6 \cdot 10^{-19 }C$ and of the electron mass $9 \cdot 10^{-28} g$, the electron mobility $\mu=\frac{e\tau}{m}$ should be of the order of some $\frac{cm^2}{Vs}$.

Even for very large electric fields (up to $10^2 \frac{V}{cm}$) the drift velocity $v_d=\mu E$ is thus much smaller than $v_{m}$.


In order to check experimentally the microscopic model we must measure not only the electrical resistance (which gives the product of $n$ and $\mu$) but also the free charge density $n$: this can be obtained by performing a measurement of the Hall effect.
