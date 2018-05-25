;20.0x5.0mm, 10x5 lines, 2 layers
T0 ;select left extruder for this print
G92 E0 ;reset extruder to 0

;Layer 1
;First line
G1 X-10.00 Y-2.50 Z0.00 F300 ;move to starting location
G1 X-10.00 Y1.39 Z0.00 E0.1 ;print first line
G2 X-7.78 Y1.39 Z0.00 I1.11 E0.2 ;print first CW arc
G1 X-7.78 Y-1.39 Z0.00 E0.3 ;print next line
G3 X-5.56 Y-1.39 Z0.00 I1.11 E0.4 ;print CCW arc
G1 X-5.56 Y1.39 Z0.00 E0.5 ;print next line
G2 X-3.33 Y1.39 Z0.00 I1.11 E0.6 ;print CW arc
G1 X-3.33 Y-1.39 Z0.00 E0.7 ;print next line
G3 X-1.11 Y-1.39 Z0.00 I1.11 E0.8 ;print CCW arc
G1 X-1.11 Y1.39 Z0.00 E0.9 ;print next line
G2 X1.11 Y1.39 Z0.00 I1.11 E1.0 ;print CW arc
G1 X1.11 Y-1.39 Z0.00 E1.1 ;print next line
G3 X3.33 Y-1.39 Z0.00 I1.11 E1.2 ;print CCW arc
G1 X3.33 Y1.39 Z0.00 E1.3 ;print next line
G2 X5.56 Y1.39 Z0.00 I1.11 E1.4 ;print CW arc
G1 X5.56 Y-1.39 Z0.00 E1.5 ;print next line
G3 X7.78 Y-1.39 Z0.00 I1.11 E1.6 ;print CCW arc
G1 X7.78 Y1.39 Z0.00 E1.7 ;print next line
G2 X10.00 Y1.39 Z0.00 I1.11 E1.8 ;print CW arc
G1 X10.00 Y-2.50 Z0.00 E1.9 ;print last line
G1 Z1.00 ;move up to next level

;Layer 2
;First line
G1 X-10.00 Y2.50 Z1.00 F300 ;move to starting location
G1 X9.38 Y2.50 Z1.00 E0.1 ;print first line
 G2 X9.38 Y1.25 Z1.00 J-0.62 E0.2 ;print first CW arc
G1 X-9.38 Y1.25 Z1.00 E0.3 ;print next line
G3 X-9.38 Y0.00 Z1.00 J-0.62 E0.4 ;print CCW arc
G1 X9.38 Y0.00 Z1.00 E0.5 ;print next line
G2 X9.38 Y-1.25 Z1.00 J-0.62 E0.6 ;print CW arc
G1 X-9.38 Y-1.25 Z1.00 E0.7 ;print next line
G3 X-9.38 Y-2.50 Z1.00 J-0.62 E0.8 ;print CCW arc
G1 X10.49 Y-2.50 Z1.00 E0.9 ;print last line
G1 Z2.00 ;move up to next level
