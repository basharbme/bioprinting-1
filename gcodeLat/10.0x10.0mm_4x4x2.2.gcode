;10.0x10.0mm, 4x4 lines, 2 layers
T0 ;select left extruder for this print
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

T1 ; select right extruder for this print
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
T0
T1
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
;10.0x10.0mm, 4x4 lines, 2 layers
T0 ;select left extruder for this print
G92 E0 ;reset extruder to 0

;Layer 2
;First line
G1 X-5.00 Y5.00 Z0.40 F300 ;move to starting location
G1 X3.33 Y5.00 Z0.40 E0.1 ;print first line
 G2 X3.33 Y1.67 Z0.40 J-1.67 E0.2 ;print first CW arc
G1 X-3.33 Y1.67 Z0.40 E0.3 ;print next line
G3 X-3.33 Y-1.67 Z0.40 J-1.67 E0.4 ;print CCW arc
G1 X3.33 Y-1.67 Z0.40 E0.5 ;print next line
G2 X3.33 Y-5.00 Z0.40 J-1.67 E0.6 ;print CW arc
G1 X-5.00 Y-5.00 Z0.40 E0.7 ;print last line

T1 ; select right extruder for this print
G92 E0 ; set position of extruder
;Second Line
G1 X-5.00 Y5.50 Z0.40 F300 ;move to starting location
G1 X3.33 Y5.50 Z0.40 E0.1 ;print first line
G2 X3.33 Y2.17 Z0.40 J-2.17 E0.2 ;print first CW arc
G1 X-3.33 Y1.17 Z0.40 E0.3 ;print next line
G3 X-3.33 Y-1.17 Z0.40 J-1.17 E0.4 ;print CCW arc
G1 X3.33 Y-1.17 Z0.40 E0.5 ;print next line
G2 X3.33 Y-5.00 Z0.40 J-2.17 E0.6 ;print CW arc
G1 X-5.00 Y-5.50 Z0.40 E0.7 ;print last line
G1 Z0.80 ;move above scaffold

G92 E0 ; set position of extruder
T0
T1
;Third Line
G1 X-5.00 Y4.50 Z0.40 F300 ;move to starting location
G1 X3.33 Y4.50 Z0.40 E0.1 ;print first line
G2 X3.33 Y1.17 Z0.40 J-1.17 E0.2 ;print first CW arc
G1 X-3.33 Y2.17 Z0.40 E0.3 ;print next line
G3 X-3.33 Y-2.17 Z0.40 J-2.17 E0.4 ;print CCW arc
G1 X3.33 Y-2.17 Z0.40 E0.5 ;print next line
G2 X3.33 Y-5.00 Z0.40 J-1.17 E0.6 ;print CW arc
G1 X-5.00 Y-4.50 Z0.40 E0.7 ;print last line
G1 Z0.80 ;move above scaffold
G1 Z0.80 ;move up to next level
