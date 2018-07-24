;20.0x20.0mm, 5x5 lines, 1 layers
T0 ;select left extruder for this print
G92 E0 ;reset extruder to 0

;Layer 1
;First line
G1 X-10.00 Y-10.00 Z0.00 F600 ;move to starting location
G1 X-10.00 Y7.50 Z0.00 E0.1 ;print first line
G2 X-5.00 Y7.50 Z0.00 I2.50 E0.2 ;print first CW arc
G1 X-5.00 Y-7.50 Z0.00 E0.3 ;print next line
G3 X0.00 Y-7.50 Z0.00 I2.50 E0.4 ;print CCW arc
G1 X0.00 Y7.50 Z0.00 E0.5 ;print next line
G2 X5.00 Y7.50 Z0.00 I2.50 E0.6 ;print CW arc
G1 X5.00 Y-7.50 Z0.00 E0.7 ;print next line
G3 X10.00 Y-7.50 Z0.00 I2.50 E0.8 ;print CCW arc
G1 X10.00 Y10.00 Z0.00 E0.9 ;print last line

;T1 ; select right extruder for this print
G92 E0 ; set position of extruder
;Second Line
G1 X-11.00 Y-10.00 Z0.00 F600 ;move to starting location
G1 X-11.00 Y7.50 Z0.00 E0.1 ;print first line
G2 X-4.00 Y7.50 Z0.00 I3.50 E0.2 ;print first CW arc
G1 X-4.00 Y-7.50 Z0.00 E0.3 ;print next line
G3 X-1.00 Y-7.50 Z0.00 I1.50 E0.4 ;print CCW arc
G1 X-1.00 Y7.50 Z0.00 E0.5 ;print next line
G2 X6.00 Y7.50 Z0.00 I3.50 E0.6 ;print CW arc
G1 X6.00 Y-7.50 Z0.00 E0.7 ;print next line
G3 X9.00 Y-7.50 Z0.00 I1.50 E0.8 ;print CCW arc
G1 X9.00 Y10.00 Z0.00 E0.9 ;print last line

G92 E0 ; set position of extruder
;Third Line
G1 X-9.00 Y-10.00 Z0.00 F600 ;move to starting location
G1 X-9.00 Y7.50 Z0.00 E0.1 ;print first line
G2 X-6.00 Y7.50 Z0.00 I1.50 E0.2 ;print first CW arc
G1 X-6.00 Y-7.50 Z0.00 E0.3 ;print next line
G3 X1.00 Y-7.50 Z0.00 I3.50 E0.4 ;print CCW arc
G1 X1.00 Y7.50 Z0.00 E0.5 ;print next line
G2 X4.00 Y7.50 Z0.00 I1.50 E0.6 ;print CW arc
G1 X4.00 Y-7.50 Z0.00 E0.7 ;print next line
G3 X11.00 Y-7.50 Z0.00 I3.50 E0.8 ;print CCW arc
G1 X11.00 Y10.00 Z0.00 E0.9 ;print last line
G1 Z0.40 ;move up to next level
