;10.0x10.0mm, 4x4 lines, 1 layers
T1 ;select left extruder for this print
G92 E0 ;reset extruder to 0

;Layer 1
;First line
G1 X-5.00 Y-5.00 Z0.00 F300 ;move to starting location
G1 X-5.00 Y3.33 Z0.00 E0.1 ;print first line
G2 X-1.67 Y3.33 Z0.00 I1.67 E0.2 ;print first CW arc
G1 X-1.67 Y-3.33 Z0.00 E0.3 ;print next line
G3 X1.67 Y-3.33 Z0.00 I1.67 E0.4 ;print CCW arc
G1 X1.67 Y3.33 Z0.00 E0.5 ;print next line
G2 X5.00 Y3.33 Z0.00 I1.67 E0.6 ;print CW arc
G1 X5.00 Y-5.00 Z0.00 E0.7 ;print last line

T0 ; select right extruder for this print
G92 E0 ; set position of extruder
;Second Line
G1 X-5.50 Y-5.00 Z0.00 F300 ;move to starting location
G1 X-5.50 Y3.33 Z0.00 E0.1 ;print first line
G2 X-1.17 Y3.33 Z0.00 I2.17 E0.2 ;print first CW arc
G1 X-1.17 Y-3.33 Z0.00 E0.3 ;print next line
G3 X1.17 Y-3.33 Z0.00 I1.17 E0.4 ;print CCW arc
G1 X1.17 Y3.33 Z0.00 E0.5 ;print next line
G2 X5.50 Y3.33 Z0.00 I2.17 E0.6 ;print CW arc
G1 X5.50 Y-5.00 Z0.00 E0.7 ;print last line
G1 Z0.40 ;move above scaffold

G92 E0 ; set position of extruder
T1
T0
;Third Line
G1 X-4.50 Y-5.00 Z0.00 F300 ;move to starting location
G1 X-4.50 Y3.33 Z0.00 E0.1 ;print first line
G2 X-2.17 Y3.33 Z0.00 I1.17 E0.2 ;print first CW arc
G1 X-2.17 Y-3.33 Z0.00 E0.3 ;print next line
G3 X2.17 Y-3.33 Z0.00 I2.17 E0.4 ;print CCW arc
G1 X2.17 Y3.33 Z0.00 E0.5 ;print next line
G2 X4.50 Y3.33 Z0.00 I1.17 E0.6 ;print CW arc
G1 X4.50 Y-5.00 Z0.00 E0.7 ;print last line
G1 Z0.40 ;move above scaffold
G1 Z0.40 ;move up to next level
