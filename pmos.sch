v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -150 70 -150 90 {lab=0}
N -190 -40 -150 -40 {lab=vgs}
N -150 -0 -150 10 {lab=vgs}
N 140 30 140 70 {lab=0}
N 140 -80 190 -80 {lab=vds}
N 140 -50 140 -30 {lab=vds}
N -30 30 -30 80 {lab=0}
N -30 80 10 80 {lab=0}
N -30 -0 10 0 {lab=0}
N 10 0 10 80 {lab=0}
N -150 -0 -70 -0 {lab=vgs}
N -150 -40 -150 -0 {lab=vgs}
N -30 -50 -30 -30 {lab=vds}
N -30 -50 140 -50 {lab=vds}
N 140 -80 140 -50 {lab=vds}
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} -50 0 2 1 {name=M1
W=1
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {code.sym} 260 20 0 0 {name=s1 only_toplevel=false value="
.lib /foss/pdks/ciel/sky130/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.control
  save all
  save @m.xm1.msky130_fd_pr__pfet_01v8[id]
   save @m.xm1.msky130_fd_pr__pfet_01v8[gm]
  
  op
dc v2 0 1.8 0.1 v1 0 1.8 0.6 
  plot @m.xm1.msky130_fd_pr__pfet_01v8[id] 
  plot @m.xm1.msky130_fd_pr__pfet_01v8[gm] 
 
   
   dc v1 0 1.8 0.1 
  plot @m.xm1.msky130_fd_pr__pfet_01v8[id] 
  plot @m.xm1.msky130_fd_pr__pfet_01v8[gm] 

  print @m.xm1.msky130_fd_pr__pfet_01v8[id]
  print @m.xm1.msky130_fd_pr__pfet_01v8[gm]
  print @m.xm1.msky130_fd_pr__pfet_01v8[vth]
  print @m.xm1.msky130_fd_pr__pfet_01v8[vgs]
  print @m.xm1.msky130_fd_pr__pfet_01v8[vdsat]
  print @m.xm1.msky130_fd_pr__pfet_01v8[vds]  
  print @m.xm1.msky130_fd_pr__pfet_01v8[gds]
   

  write pmos.raw
.endc
"}
C {vsource.sym} -150 40 0 0 {name=V1 value=1 savecurrent=false}
C {gnd.sym} -10 80 0 0 {name=l1 lab=0}
C {ipin.sym} -190 -40 0 0 {name=p1 lab=vgs}
C {vsource.sym} 140 0 0 0 {name=V2 value=1.8 savecurrent=false}
C {ipin.sym} 190 -80 0 1 {name=p2 lab=vds}
C {gnd.sym} -150 90 0 0 {name=l2 lab=0}
C {gnd.sym} 140 70 0 0 {name=l3 lab=0}
