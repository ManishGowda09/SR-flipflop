v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -10 -60 -10 -30 {lab=vds}
N -10 -60 160 -60 {lab=vds}
N 160 -60 160 -0 {lab=vds}
N 160 -100 210 -100 {lab=vds}
N 160 -100 160 -60 {lab=vds}
N -150 0 -50 -0 {lab=vgs}
N -150 0 -150 30 {lab=vgs}
N -200 -0 -150 0 {lab=vgs}
N -150 90 -150 120 {lab=0}
N -10 60 -10 90 {lab=0}
N 160 60 160 90 {lab=0}
N -10 -0 40 0 {lab=0}
N 40 -0 40 60 {lab=0}
N -10 60 40 60 {lab=0}
N -10 30 -10 60 {lab=0}
C {/foss/pdks/ciel/sky130/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} -30 0 0 0 {name=M1
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
model=nfet_01v8
spiceprefix=X
}
C {code.sym} 300 10 0 0 {name=s1 only_toplevel=false value="
.lib /foss/pdks/ciel/sky130/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.control
  save all
  save @m.xm1.msky130_fd_pr__nfet_01v8[id]
   save @m.xm1.msky130_fd_pr__nfet_01v8[gm]
  
  op
dc v2 0 1.8 0.1 v1 0 1.8 0.6 
  plot @m.xm1.msky130_fd_pr__nfet_01v8[id] 
  plot @m.xm1.msky130_fd_pr__nfet_01v8[gm] 
 
   
   dc v1 0 1.8 0.1 
  plot @m.xm1.msky130_fd_pr__nfet_01v8[id] 
  plot @m.xm1.msky130_fd_pr__nfet_01v8[gm] 

  print @m.xm1.msky130_fd_pr__nfet_01v8[id]
  print @m.xm1.msky130_fd_pr__nfet_01v8[gm]
  print @m.xm1.msky130_fd_pr__nfet_01v8[vth]
  print @m.xm1.msky130_fd_pr__nfet_01v8[vgs]
  print @m.xm1.msky130_fd_pr__nfet_01v8[vdsat]
  print @m.xm1.msky130_fd_pr__nfet_01v8[vds]  
  print @m.xm1.msky130_fd_pr__nfet_01v8[gds]
   

  write moschar.raw
.endc
"}
C {gnd.sym} -10 90 0 0 {name=l1 lab=0}
C {vsource.sym} -150 60 0 0 {name=V1 value=1 savecurrent=false}
C {ipin.sym} -200 0 0 0 {name=p1 lab=vgs}
C {vsource.sym} 160 30 0 0 {name=V2 value=1.8 savecurrent=false}
C {gnd.sym} -150 120 0 0 {name=l2 lab=0}
C {gnd.sym} 160 90 0 0 {name=l3 lab=0}
C {ipin.sym} 210 -100 0 1 {name=p2 lab=vds}
