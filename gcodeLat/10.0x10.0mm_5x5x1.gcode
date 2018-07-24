;10.0x10.0mm, 5x5 lines, 1 layers
T0 ;select left extruder for this print
G92 E0 ;reset extruder to 0

;Layer 1
;First line
G1 X-5.00 Y-5.00 Z0.00 F600 ;move to starting location
G1 X-5.00 Y3.75 Z0.00 E0.1 ;print first line
G2 X-2.50 Y3.75 Z0.00 I1.25 E0.2 ;print first CW arc
G1 X-2.50 Y-3.75 Z0.00 E0.3 ;print next line
G3 X0.00 Y-3.75 Z0.00 I1.25 E0.4 ;print CCW arc
G1 X0.00 Y3.75 Z0.00 E0.5 ;print next line
G2 X2.50 Y3.75 Z0.00 I1.25 E0.6 ;print CW arc
G1 X2.50 Y-3.75 Z0.00 E0.7 ;print next line
G3 X5.00 Y-3.75 Z0.00 I1.25 E0.8 ;print CCW arc
G1 X5.00 Y5.00 Z0.00 E0.9 ;print last line
;T1 ; select right extruder for this print 
G92 E0 ; set position of extruder 
;Second Line 
G1 X-5.50 Y-5.00 Z0.00 F600 ;move to starting location
G1 X-5.50 Y3.75 Z0.00 E0.1 ;print first line
G2 X-2.00 Y3.75 Z0.00 I1.25 E0.2 ;print first CW arc
G1 X-2.00 Y-3.75 Z0.00 E0.3 ;print next line
G3 X-0.50 Y-3.75 Z0.00 I1.25 E0.4 ;print CCW arc
G1 X-0.50 Y3.75 Z0.00 E0.5 ;print next line
G2 X3.00 Y3.75 Z0.00 I1.25 E0.6 ;print CW arc
G1 X3.00 Y-3.75 Z0.00 E0.7 ;print next line
G3 X4.50 Y-3.75 Z0.00 I1.25 E0.8 ;print CCW arc
G1 X4.50 Y5.00 Z0.00 E0.9 ;print last line
G92 E0 ; set position of extruder 
;Third Line 
G1 X-4.50 Y-5.00 Z0.00 F600 ;move to starting location
G1 X-4.50 Y3.75 Z0.00 E0.1 ;print first line
G2 X-3.00 Y3.75 Z0.00 I1.25 E0.2 ;print first CW arc
G1 X-3.00 Y-3.75 Z0.00 E0.3 ;print next line
G3 X0.50 Y-3.75 Z0.00 I1.25 E0.4 ;print CCW arc
G1 X0.50 Y3.75 Z0.00 E0.5 ;print next line
G2 X2.00 Y3.75 Z0.00 I1.25 E0.6 ;print CW arc
G1 X2.00 Y-3.75 Z0.00 E0.7 ;print next line
G3 X5.50 Y-3.75 Z0.00 I1.25 E0.8 ;print CCW arc
G1 X5.50 Y5.00 Z0.00 E0.9 ;print last line
G1 Z0.40 ;move up to next level
