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
<!-- ![](media/image1.jpeg) -->

#### Introduction


Edwin Herbert Hall discovered the “Hall effect” in 1879 while working on his doctoral thesis in Physics investigating the influence of magnets on the resistance of a coil excited by a current. Hall discovered that a magnetic field would skew equipotential lines in a current-carrying conductor. This effect is observed as a voltage (Hall voltage) perpendicular to the direction of the current in the conductor.

The magnitude of this discovery is even more impressive considering how little was known about electricity in his time. The electron, for instance, was not identified until more than 10 years later.

The “Hall effect” remained a laboratory curiosity until the latter half of the XX century because the materials available, such as metals, would only produce small Hall voltages. With the advent of semiconductor technology and the development of various III-V compounds, it became possible to produce Hall voltages many orders of magnitude greater, allowing the production of Hall sensors, mostly made of indium antimonide (InSb), indium arsenide (InAs) and gallium arsenide (GaAs).

####A macroscopic approach to Ohm’s laws

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


####A semiclassical microscopic model

The simplest microscopic model one can use is the “free electron gas" model of metals, in which the valence electrons are supposed to be practically free from their original atoms, and thus to move in the crystal lattice formed by the metal ions. In the absence of an applied electric field, the electron velocities are randomly distributed, with zero mean value and a *root mean square* value $v_{m}$ that may be evaluated from the equation:

$$\frac{1}{2}mv_{m}^2=\frac{3}{2}kT$$ {#eq:electronVrms}

where $k$ is the Boltzmann constant, $m$ the electron mass and $T$ the absolute temperature: at room temperature $v_{m}$ turns out to be of the order of $10^5 m/s$.

Only when an electric field is externally applied the electron motion acquires an ordered component with a *mean value* $v_d$ (the *drift velocity*) which turns out to be very small with respect to $v_{m}$ as we will show later.

The drift velocity, i.e. this ordered component of the motion due to the electric field and to the the scattering of the electrons with the lattice, is simply proportional to the electric field intensity. The constant ratio between $v_d$ and $E$ (both in modulus) is called the *drift mobility* $\mu$.

During a time $t$ of free motion between two collisions, the electrons increase their speed of the quantity:
$$ a t = \frac{qE}{m}t $$ {#eq:electronsDelta} <!-- ??? dovrebbe essere in funzione del tempo -->

Where $q$ is electron charge. The kinetic energy of the electrons also increases, but it can be assumed that with each collision they loose additional energy. The transfer of such energy to the lattice ions explains the Joule effect.

In figure 1 <!--FIX-->, after the application of the electric field, the average speed of the electrons is not zero but instead:
$$v_d=a\tau=q\tau\frac{E}{m}$$ {#eq:electronsAvgSpd}
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
