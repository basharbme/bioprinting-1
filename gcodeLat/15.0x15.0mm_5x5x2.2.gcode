;15.0x15.0mm, 5x5 lines, 2 layers
T0 ;select left extruder for this print
G92 E0 ;reset extruder to 0

;Layer 1
;First line
G1 X-7.50 Y-7.50 Z0.00 F600 ;move to starting location
G1 X-7.50 Y5.62 Z0.00 E0.1 ;print first line
G2 X-3.75 Y5.62 Z0.00 I1.88 E0.2 ;print first CW arc
G1 X-3.75 Y-5.62 Z0.00 E0.3 ;print next line
G3 X0.00 Y-5.62 Z0.00 I1.88 E0.4 ;print CCW arc
G1 X0.00 Y5.62 Z0.00 E0.5 ;print next line
G2 X3.75 Y5.62 Z0.00 I1.88 E0.6 ;print CW arc
G1 X3.75 Y-5.62 Z0.00 E0.7 ;print next line
G3 X7.50 Y-5.62 Z0.00 I1.88 E0.8 ;print CCW arc
G1 X7.50 Y7.50 Z0.00 E0.9 ;print last line

T1 ; select right extruder for this print
G92 E0 ; set position of extruder
;Second Line
G1 X-7.90 Y-7.50 Z0.00 F600 ;move to starting location
G1 X-7.90 Y5.62 Z0.00 E0.1 ;print first line
G2 X-3.35 Y5.62 Z0.00 I2.27 E0.2 ;print first CW arc
G1 X-3.35 Y-5.62 Z0.00 E0.3 ;print next line
G3 X-0.40 Y-5.62 Z0.00 I1.48 E0.4 ;print CCW arc
G1 X-0.40 Y5.62 Z0.00 E0.5 ;print next line
G2 X4.15 Y5.62 Z0.00 I2.27 E0.6 ;print CW arc
G1 X4.15 Y-5.62 Z0.00 E0.7 ;print next line
G3 X7.10 Y-5.62 Z0.00 I1.48 E0.8 ;print CCW arc
G1 X7.10 Y7.50 Z0.00 E0.9 ;print last line
G1 Z0.40 ;move above scaffold

G92 E0 ; set position of extruder
;Third Line
G1 X-7.10 Y-7.50 Z0.00 F600 ;move to starting location
G1 X-7.10 Y5.62 Z0.00 E0.1 ;print first line
G2 X-4.15 Y5.62 Z0.00 I1.48 E0.2 ;print first CW arc
G1 X-4.15 Y-5.62 Z0.00 E0.3 ;print next line
G3 X0.40 Y-5.62 Z0.00 I2.27 E0.4 ;print CCW arc
G1 X0.40 Y5.62 Z0.00 E0.5 ;print next line
G2 X3.35 Y5.62 Z0.00 I1.48 E0.6 ;print CW arc
G1 X3.35 Y-5.62 Z0.00 E0.7 ;print next line
G3 X7.90 Y-5.62 Z0.00 I2.27 E0.8 ;print CCW arc
G1 X7.90 Y7.50 Z0.00 E0.9 ;print last line
G1 Z0.40 ;move above scaffold
G1 Z0.40 ;move up to next level

;Layer 2
;First line
G1 X-7.50 Y7.50 Z0.40 F600 ;move to starting location
G1 X5.62 Y7.50 Z0.40 E0.1 ;print first line
 G2 X5.62 Y3.75 Z0.40 J-1.88 E0.2 ;print first CW arc
G1 X-5.62 Y3.75 Z0.40 E0.3 ;print next line
G3 X-5.62 Y0.00 Z0.40 J-1.88 E0.4 ;print CCW arc
G1 X5.62 Y0.00 Z0.40 E0.5 ;print next line
G2 X5.62 Y-3.75 Z0.40 J-1.88 E0.6 ;print CW arc
G1 X-5.62 Y-3.75 Z0.40 E0.7 ;print next line
G3 X-5.62 Y-7.50 Z0.40 J-1.88 E0.8 ;print CCW arc
G1 X7.50 Y-7.50 Z0.40 E0.9 ;print last line

T1 ; select right extruder for this print
G92 E0 ; set position of extruder
;Second Line
G1 X-7.50 Y7.90 Z0.40 F600 ;move to starting location
G1 X5.62 Y7.90 Z0.40 E0.1 ;print first line
 G2 X5.62 Y4.15 Z0.40 J-2.27 E0.2 ;print first CW arc
G1 X-5.62 Y3.35 Z0.40 E0.3 ;print next line
G3 X-5.62 Y0.40 Z0.40 J-1.48 E0.4 ;print CCW arc
G1 X5.62 Y0.40 Z0.40 E0.5 ;print next line
G2 X5.62 Y-3.75 Z0.40 J-2.27 E0.6 ;print CW arc
G1 X-5.62 Y-4.15 Z0.40 E0.7 ;print next line
G3 X-5.62 Y-7.10 Z0.40 J-1.48 E0.8 ;print CCW arc
G1 X7.50 Y-7.10 Z0.40 E0.9 ;print last line
G1 Z0.80 ;move above scaffold

G92 E0 ; set position of extruder
;Third Line
G1 X-7.50 Y7.10 Z0.40 F600 ;move to starting location
G1 X5.62 Y7.10 Z0.40 E0.1 ;print first line
 G2 X5.62 Y3.35 Z0.40 J-1.48 E0.2 ;print first CW arc
G1 X-5.62 Y4.15 Z0.40 E0.3 ;print next line
G3 X-5.62 Y-0.40 Z0.40 J-2.27 E0.4 ;print CCW arc
G1 X5.62 Y-0.40 Z0.40 E0.5 ;print next line
G2 X5.62 Y-3.75 Z0.40 J-1.48 E0.6 ;print CW arc
G1 X-5.62 Y-3.35 Z0.40 E0.7 ;print next line
G3 X-5.62 Y-7.90 Z0.40 J-2.27 E0.8 ;print CCW arc
G1 X7.50 Y-7.90 Z0.40 E0.9 ;print last line
G1 Z0.80 ;move above scaffold
G1 Z0.80 ;move up to next level
