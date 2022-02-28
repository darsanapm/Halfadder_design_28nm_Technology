*  Generated for: PrimeSim
*  Design library name: cp_lib1
*  Design cell name: cp_half_adder
*  Design view name: schematic
.lib 'saed32nm.lib' TT

*Custom Compiler Version S-2021.09
*Sun Feb 27 10:20:47 2022

.global gnd!
********************************************************************************
* Library          : cp_lib1
* Cell             : cp_half_adder
* View             : schematic
* View Search List : hspice hspiceD schematic spice veriloga
* View Stop List   : hspice hspiceD
********************************************************************************
xm21 bbar b vdd vdd p105 w=0.1u l=0.03u nf=1 m=1
xm20 abar a vdd vdd p105 w=0.1u l=0.03u nf=1 m=1
xm11 net46 abar vdd vdd p105 w=0.1u l=0.03u nf=1 m=1
xm10 carry bbar net46 vdd p105 w=0.1u l=0.03u nf=1 m=1
xm3 sum b net13 vdd p105 w=0.1u l=0.33u nf=1 m=1
xm2 sum a net13 vdd p105 w=0.1u l=0.33u nf=1 m=1
xm1 net13 bbar vdd vdd p105 w=0.1u l=0.33u nf=1 m=1
xm0 net13 abar vdd vdd p105 w=0.1u l=0.33u nf=1 m=1
xm23 bbar b vss vss n105 w=0.1u l=0.03u nf=1 m=1
xm22 abar a vss vss n105 w=0.1u l=0.03u nf=1 m=1
xm9 carry b vss vss n105 w=0.1u l=0.03u nf=1 m=1
xm8 carry a vss vss n105 w=0.1u l=0.03u nf=1 m=1
xm7 net28 bbar vss vss n105 w=0.1u l=0.03u nf=1 m=1
xm6 net24 b vss vss n105 w=0.1u l=0.03u nf=1 m=1
xm5 sum a net24 vss n105 w=0.1u l=0.03u nf=1 m=1
xm4 sum abar net28 vss n105 w=0.1u l=0.03u nf=1 m=1
v13 vss gnd! dc=0
v12 vdd gnd! dc=2
v32 a gnd! dc=0 pulse ( 0 1.05 0 0.1u 0.1u 20u 40u )
v31 b gnd! dc=0 pulse ( 0 1.05 0 0.1u 0.1u 10u 20u )
c24 sum gnd! c=1p
c25 carry gnd! c=1p








.tran '0' '50u' name=tran

.option primesim_remove_probe_prefix = 0
.probe v(*) i(*) level=1
.probe tran v(a) v(b) v(carry) v(sum)

.temp 25



.option primesim_output=wdf


.option parhier = LOCAL






.end
