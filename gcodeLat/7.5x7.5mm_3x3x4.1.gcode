;7.5x7.5mm, 3x3 lines, 4 layers
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
G1 Z0.40 ;move up to next level
;7.5x7.5mm, 3x3 lines, 4 layers
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
G1 Z0.80 ;move up to next level
;7.5x7.5mm, 3x3 lines, 4 layers
T0 ;select left extruder for this print
G92 E0 ;reset extruder to 0

;Layer 3
;First line
G1 X-3.75 Y-3.75 Z0.80 F600 ;move to starting location
G1 X-3.75 Y1.88 Z0.80 E0.1 ;print first line
G2 X0.00 Y1.88 Z0.80 I1.88 E0.2 ;print first CW arc
G1 X0.00 Y-1.88 Z0.80 E0.3 ;print next line
G3 X3.75 Y-1.88 Z0.80 I1.88 E0.4 ;print CCW arc
G1 X3.75 Y3.75 Z0.80 E0.5 ;print last line
G1 Z1.20 ;move up to next level
;7.5x7.5mm, 3x3 lines, 4 layers
T0 ;select left extruder for this print
G92 E0 ;reset extruder to 0

;Layer 4
;First line
G1 X-3.75 Y3.75 Z1.20 F600 ;move to starting location
G1 X1.88 Y3.75 Z1.20 E0.1 ;print first line
 G2 X1.88 Y0.00 Z1.20 J-1.88 E0.2 ;print first CW arc
G1 X-1.88 Y0.00 Z1.20 E0.3 ;print next line
G3 X-1.88 Y-3.75 Z1.20 J-1.88 E0.4 ;print CCW arc
G1 X3.75 Y-3.75 Z1.20 E0.5 ;print last line
G1 Z1.60 ;move up to next level
