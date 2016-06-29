##The Hall effect

The Hall effect is essentially due to the Lorentz force $\vec { F }$ acting on each electric charge $q$ moving with velocity $v$ in a magnetic field $B$.
$$\vec { F } =q\vec { V } \wedge \vec { B }$$ {#eq:lorentzForce}

Let us consider a conducting bar (figure {@fig:hall-effect-geometry}) immersed into a uniform magnetic field $B$ directed along the $z$ axis, with an electric current $I_x$ flowing along the $x$ axis. The Lorentz force $F_L$ on moving charges, both positive and negative, acts in the direction shown by the arrow (figure {@fig:hall-effect-geometry}) (independently from the charge sign).

![Hall effect geometry](Assets/Figures/hall-effect-geometry.jpeg){#fig:hall-effect-geometry  width=65%}

In metals the electric current is only due to electrons. In semiconductors the charge carriers may be either electrons or holes.

In a pure semiconductor the electron density $n$ and the hole density $p$ is identical, in doped semiconductor we have $n\gg p$ (in N-doped material) or $p\gg n$ (in P-doped material). In doped semiconductors only one type of charge carriers is therefore important.

Let us consider first a metal or a N-doped semiconductor sample, where the relevant charge carriers are electrons.

In the electric field $E_x$ the electrons gain a drift velocity $v_d=–\mu E_x$ and they are subject to the Lorentz force $F_L=qv_dB$, pointing towards the negative $y$. While drifting in the $x$ direction they tend to crowd at the sample surface orthogonal to the $y$ axis and placed towards the reader in figure {@fig:hall-effect-geometry}.

This charge density increase at the sample lateral surface produces a difference of potential along the $y$ axis and therefore an electric field $E_H$. The value of the *Hall field* $E_H$ at equilibrium will correspond to an electric force $qE_H$ equal and opposite to the Lorentz force, i.e. $E_H=v_d B$. This relation tells us that the Hall field is proportional both to the current density (through $v_d$) and to the magnetic field. It is therefore convenient to define the Hall coefficient as:

$$R_H=\frac{E_H}{J_x B_z}$$ {#eq:hallCoefficient}

Recalling the relations $J_x=-env_d$ (or $J_x=+epv_d$) we get :

$$ R_{ H }=V_{ d }\frac { B }{ J_{ x }B } =\frac { -1 }{ en } $$ {#eq:R_Hmn}
or otherwise, for P-doped conductors:
$$ R_{ H }=\frac { +1 }{ ep }$$ {#eq:R_Hp}

Depending on the type of conductor, either metal ({@eq:R_Hmn}) , N-doped ({@eq:R_Hmn}) or P-doped ({@eq:R_Hp}).

Measuring $R_H$ we can determine the concentration $n$ of majority carriers and their sign (if we know the direction of the vectors $\vec { B } ,\vec { J } ,\vec { E_{ h } }$ ).

We can obtain relation ({@eq:R_Hmn}) by assuming identical drift velocity for all charge carriers. This is an approximate relation, found in the literature: <!--FIX, source?-->

$$R_H = \frac{r}{nq}$$ {#eq:foundInLiterature}

where $r$ is a parameter that accounts for the statistical velocity distribution of the charge carriers, as well as the different scattering mechanisms: $r\approx 1.2$ for mainly phonon scattering (lattice vibrations) and $r\approx 1.9$ for mainly impurity scattering. <!--FIX, mainly? sounds strange-->

The Hall coefficient in semiconductors is many order of magnitude larger than the one in metals, due to the smaller charge density. This makes easier to measure Hall voltages in semiconductors, where a bias current $I_x$ of a few $mA$ may conveniently generate a Hall voltage $V_H$ of in the order of a few $mV$.

To measure $R_H$ we must know $V_H$, $I_x$, $B$ and the sample thickness $t$:

$$R_{ H }=\frac { E_{ h } }{ B{ J }_{ x } } =\frac { V_{ H } }{ s } =\frac { B{ I }_{ x } }{ ts } =\frac { V_{ h }t }{ B{ I }_{ x } } $$ {#eq:R_h}

It is worth noting that the the Lorentz force direction does not depend on the charge sign.

The general expression for $R_H$, valid (see Appendix 1) <!-- FIX --> when *both electrons and holes* are present with densities $n$ and $p$ and mobility $\mu_e$ and $\mu_h$ is:

$$R_{ H }=r\frac { p\mu ^{ 2 }_{ h }-n\mu ^{ 2 }_{ e } }{ e(p\mu _{ h }-n\mu _{ e })^{ 2 } } $$ {#eq:R_hGeneralExpression}

Which corresponds to the relations and ({@eq:R_Hmn}) and ({@eq:R_Hp}) for $p\gg n$ or $n\gg p$

When two types of charge carriers are present the electrical conductivity becomes:

$$\sigma =e(p \mu_h + n \mu_e)$$ {#eq:electricalConductivity2Carriers}

The product $R_H \sigma$, is named Hall mobility $\mu_H$ (note the capital index "$H$" that distinguish it from hole mobility $\mu_h$).

For a doped semiconductor the Hall mobility $\mu_H$ approximates the *majority carriers* drift mobility $\mu_{h,e}$:

$$\mu _{ H }=R_{ H }\sigma =r\frac { p \mu^2_h - n \mu^2_e }{p \mu_h + n \mu_e} \approx r \mu_{h,e} $$ {#eq:muApproximateDriftMobility}

From relation ({@eq:R_hGeneralExpression}) we see that by increasing the temperature in a *P-doped sample*, generating many intrinsic[^4] carriers (i.e. electron-hole pairs), the Hall coefficient $R_H$ (which is positive at room temperature in the extrinsic region) tends to decrease, and it may even change sign. This is explained by the mobility ratio $b=\mu_e/\mu_h>1$. *Note that this does not happen with a* N*-doped sample*.

[^4]: *Intrinsic* term labels properties related to pure semiconductors or to doped semiconductors at hight temperature, where the thermally generated carriers density is much larger than the (*extrinsic*) carrier density due to the dopant.

From relation ({@eq:R_hGeneralExpression}) at the temperature where $R_H=0$ (“*inversion point*”) we get $nb^2=p$, with $p=N_a+N$ <!-- if it is avogadro number it should be N_A? --> and $n=N$ (where $N_a$ is the dopant density and $N$ is the thermally-generated charge density in the intrinsic zone).
Therefore $Nb^2= N_a+N$, or $N_a/N=b^2-1$.

The intrinsic conductivity *measured* at the inversion point is:

$$\sigma_{oi} = e(n \mu_e + p \mu_h ) = e[N( \mu_e + \mu_h)+ N_a \mu_h ] = e \mu_h [N(b+1)+N_a]$$ {#eq:intrinsicConductivityInvPoint}

In the extrinsic region of a P-doped sample, where the charge carrier density is constant $n=N_a$, the conductivity is proportional to the carrier mobility $\mu_h$: i.e. $\sigma_e(T) = eN_a \mu_h(T)$

The experimentally measured temperature dependence of the mobility is a power-law $\mu(T)=const( T^\alpha)$, where the exponent $\alpha$ (in the range $1.5<\alpha<3.0$) depends on the type of prevailing interaction of the charge carriers with phonons, lattice defects or impurities).

Therefore we may *extrapolate the extrinsic conductivity at the inversion point* $\sigma_{ei}$, and from the ratio ${\sigma_{oi}}/{\sigma_{ei}}$ we get the $b$ value:

$$\frac{\sigma_{oi}}{\sigma_{ei}} =e\mu_h \frac{N(b+1) + N_a}{e N_a \mu_h}= \frac{b}{b-1}$$ {#eq:extrinsicConductivityInvPoint}

which can as well be written as:

$$b=\frac{R_e}{R_e-R_o}$$ {#eq:extrinsicConductivityInvPoint2}

where $R_o$ is the measured sample resistance at the inversion point and $R_e$ is the resistance extrapolated from the extrinsic region (low temperature) to the value it would have at the inversion temperature.

The dopant concentration is related to the value of the *Hall constant at the inversion point* $R_{Ho}$ (in the extrinsic region only the hole concentration is significant) by the equations ({@eq:R_Hmn}) and ({@eq:R_Hp}), i.e. :
$$N_a \approx p \approx \frac{1}{e R_{Ho}}$$ {#eq:HallConstantInvPointRelation}
