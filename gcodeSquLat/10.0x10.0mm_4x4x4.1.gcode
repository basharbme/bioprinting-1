;10.0x10.0mm, 4x4 lines, 4 layers
T0 ;select left extruder for this print
G92 E0 ;reset extruder to 0

;Layer 1
;First line
G1 X-5.00 Y-5.00 Z0.00 F300 ;move to starting location
G1 X-5.00 Y5.00 Z0.00 E0.1 ;print first line
G1 X-1.67 Y5.00 Z0.00 E0.2 ;print first connecting line
G1 X-1.67 Y-5.00 Z0.00 E0.3 ;print next line
G1 X1.67 Y-5.00 Z0.00 E0.4 ;print connecting line
G1 X1.67 Y5.00 Z0.00 E0.5 ;print next line
G1 X5.00 Y5.00 Z0.00 E0.6 ;print connecting line
G1 X5.00 Y-5.00 Z0.00 E0.7 ;print last line
G1 Z0.60 ;move up to next level
;10.0x10.0mm, 4x4 lines, 4 layers
T0 ;select left extruder for this print
G92 E0 ;reset extruder to 0

;Layer 2
;First line
G1 X-5.00 Y5.00 Z0.60 F300 ;move to starting location
G1 X5.00 Y5.00 Z0.60 E0.1 ;print first line
 G1 X5.00 Y1.67 Z0.60 E0.2 ;print first connecting line
G1 X-5.00 Y1.67 Z0.60 E0.3 ;print next line
G1 X-5.00 Y-1.67 Z0.60 E0.4 ;print connecting line arc
G1 X5.00 Y-1.67 Z0.60 E0.5 ;print next line
G1 X5.00 Y-5.00 Z0.60 E0.6 ;print connecting line
G1 X-5.00 Y-5.00 Z0.60 E0.7 ;print last line
G1 Z1.20 ;move up to next level
;10.0x10.0mm, 4x4 lines, 4 layers
T0 ;select left extruder for this print
G92 E0 ;reset extruder to 0

;Layer 3
;First line
G1 X-5.00 Y-5.00 Z1.20 F300 ;move to starting location
G1 X-5.00 Y5.00 Z1.20 E0.1 ;print first line
G1 X-1.67 Y5.00 Z1.20 E0.2 ;print first connecting line
G1 X-1.67 Y-5.00 Z1.20 E0.3 ;print next line
G1 X1.67 Y-5.00 Z1.20 E0.4 ;print connecting line
G1 X1.67 Y5.00 Z1.20 E0.5 ;print next line
G1 X5.00 Y5.00 Z1.20 E0.6 ;print connecting line
G1 X5.00 Y-5.00 Z1.20 E0.7 ;print last line
G1 Z1.80 ;move up to next level
;10.0x10.0mm, 4x4 lines, 4 layers
T0 ;select left extruder for this print
G92 E0 ;reset extruder to 0

;Layer 4
;First line
G1 X-5.00 Y5.00 Z1.80 F300 ;move to starting location
G1 X5.00 Y5.00 Z1.80 E0.1 ;print first line
 G1 X5.00 Y1.67 Z1.80 E0.2 ;print first connecting line
G1 X-5.00 Y1.67 Z1.80 E0.3 ;print next line
G1 X-5.00 Y-1.67 Z1.80 E0.4 ;print connecting line arc
G1 X5.00 Y-1.67 Z1.80 E0.5 ;print next line
G1 X5.00 Y-5.00 Z1.80 E0.6 ;print connecting line
G1 X-5.00 Y-5.00 Z1.80 E0.7 ;print last line
G1 Z2.40 ;move up to next level
