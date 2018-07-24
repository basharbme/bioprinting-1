;7.5x7.5mm, 3x3 lines, 2 layers
T0 ;select left extruder for this print
G92 E0 ;reset extruder to 0

;Layer 1
;First line
G1 X-3.75 Y-3.75 Z0.00 F600 ;move to starting location
G1 X-3.75 Y1.88 Z0.00 E0.1 ;print first line
G2 X0.00 Y1.88 Z0.00 I1.88 E0.2 ;print first CW arc
G1 X0.00 Y-1.88 Z0.00 E0.3 ;print next line
G3 X3.75 Y-1.88 Z0.00 I1.88 E0.4 ;print CCW arc
G1 X3.75 Y3.75 Z0.00 E0.5 ;print last line

T1 ; select right extruder for this print
G92 E0 ; set position of extruder
;Second Line
G1 X-4.35 Y-3.75 Z0.00 F600 ;move to starting location
G1 X-4.35 Y1.88 Z0.00 E0.1 ;print first line
G2 X0.60 Y1.88 Z0.00 I2.48 E0.2 ;print first CW arc
G1 X0.60 Y-1.88 Z0.00 E0.3 ;print next line
G3 X3.15 Y-1.88 Z0.00 I1.27 E0.4 ;print CCW arc
G1 X3.15 Y3.75 Z0.00 E0.5 ;print last line
G1 Z0.40 ;move above scaffold

G92 E0 ; set position of extruder
;Third Line
G1 X-3.15 Y-3.75 Z0.00 F600 ;move to starting location
G1 X-3.15 Y1.88 Z0.00 E0.1 ;print first line
G2 X-0.60 Y1.88 Z0.00 I1.27 E0.2 ;print first CW arc
G1 X-0.60 Y-1.88 Z0.00 E0.3 ;print next line
G3 X4.35 Y-1.88 Z0.00 I2.48 E0.4 ;print CCW arc
G1 X4.35 Y3.75 Z0.00 E0.5 ;print last line
G1 Z0.40 ;move above scaffold
G1 Z0.40 ;move up to next level
;7.5x7.5mm, 3x3 lines, 2 layers
T0 ;select left extruder for this print
G92 E0 ;reset extruder to 0

;Layer 2
;First line
G1 X-3.75 Y3.75 Z0.40 F600 ;move to starting location
G1 X1.88 Y3.75 Z0.40 E0.1 ;print first line
 G2 X1.88 Y0.00 Z0.40 J-1.88 E0.2 ;print first CW arc
G1 X-1.88 Y0.00 Z0.40 E0.3 ;print next line
G3 X-1.88 Y-3.75 Z0.40 J-1.88 E0.4 ;print CCW arc
G1 X3.75 Y-3.75 Z0.40 E0.5 ;print last line

T1 ; select right extruder for this print
G92 E0 ; set position of extruder
;Second Line
G1 X-3.75 Y4.35 Z0.40 F600 ;move to starting location
G1 X1.88 Y4.35 Z0.40 E0.1 ;print first line
G2 X1.88 Y0.60 Z0.40 J-2.48 E0.2 ;print first CW arc
G1 X-1.88 Y-0.60 Z0.40 E0.3 ;print next line
G3 X-1.88 Y-3.15 Z0.40 J-1.27 E0.4 ;print CCW arc
G1 X3.75 Y-3.15 Z0.40 E0.5 ;print last line
G1 Z0.80 ;move above scaffold

G92 E0 ; set position of extruder
;Third Line
G1 X-3.75 Y3.15 Z0.40 F600 ;move to starting location
G1 X1.88 Y3.15 Z0.40 E0.1 ;print first line
G2 X1.88 Y-0.60 Z0.40 J-1.27 E0.2 ;print first CW arc
G1 X-1.88 Y0.60 Z0.40 E0.3 ;print next line
G3 X-1.88 Y-4.35 Z0.40 J-2.48 E0.4 ;print CCW arc
G1 X3.75 Y-4.35 Z0.40 E0.5 ;print last line
G1 Z0.80 ;move above scaffold
G1 Z0.80 ;move up to next level
