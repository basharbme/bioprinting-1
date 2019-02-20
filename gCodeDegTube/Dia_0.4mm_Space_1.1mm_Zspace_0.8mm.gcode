;Dia_0.4mm_Space_1.1mm_Zspace_0.8mm
Width 3.4mm Length 6.5mm
T0 ;select left extruder for the first layer
G92 E0 ;reset extruder to 0

;Bottom Layer
G1 X-1.51 Y-3.03 Z0 F300 ;move to starting location
G1 X1.51 Y-3.03 E0.1 ;print first line
G1 X1.51 Y-1.51 ;move up a line
G1 X-1.51 Y-1.51 E0.2 ;print line 2
G1 X-1.51 Y0.00 ;move up a line
G1 X1.51 Y0.00 E0.3 ;print line 3
G1 X1.51 Y1.51 ;move up a line
G1 X-1.51 Y1.51 E0.4 ;print line 4
G1 X-1.51 Y3.03 ;move up a line
G1 X1.51 Y3.03 E0.5 ;print line 5

;Middle Layer
G92 E0 ;reset extruder to 0
G1 Z0.8 ;move up a layer
G1 X1.51 Y-3.03 E0.1 ;print line 1
G1 X-1.51 Y-3.03 ;move to line 2
G1 X-1.51 Y3.03 E0.2 ;print line 2
G92 E0 ;reset extruder to 0

T1 ;Switch extruders
G92 E0 ;reset extruder to 0
G1 X0.00 Y3.03 ;move to line 2
G1 X0.00 Y-3.03 E0.1 ;print line 2
G1 Z1.60 ;move up to final layer
G92 E0 ;reset extruder to 0
T0 ;switch to extruder 1

;Top Layer
G1 X-1.51 Y-3.03; move to starting location
G1 X1.51 Y-3.03 E0.1 ;print first line
G1 X1.51 Y-1.51 ;move up a line
G1 X-1.51 Y-1.51 E0.2 ;print line 2
G1 X-1.51 Y0.00 ;move up a line
G1 X1.51 Y0.00 E0.3 ;print line 3
G1 X1.51 Y1.51 ;move up a line
G1 X-1.51 Y1.51 E0.4 ;print line 4
G1 X-1.51 Y3.03 ;move up a line
G1 X1.51 Y3.03 E0.5 ;print line 5
