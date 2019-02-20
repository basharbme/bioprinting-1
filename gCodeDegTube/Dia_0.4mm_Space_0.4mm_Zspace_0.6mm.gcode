;Dia_0.4mm_Space_0.4mm_Zspace_0.6mm
Width 2.0mm Length 3.7mm
T0 ;select left extruder for the first layer
G92 E0 ;reset extruder to 0

;Bottom Layer
G1 X-0.81 Y-1.63 Z0 F300 ;move to starting location
G1 X0.81 Y-1.63 E0.1 ;print first line
G1 X0.81 Y-0.81 ;move up a line
G1 X-0.81 Y-0.81 E0.2 ;print line 2
G1 X-0.81 Y-0.00 ;move up a line
G1 X0.81 Y-0.00 E0.3 ;print line 3
G1 X0.81 Y0.81 ;move up a line
G1 X-0.81 Y0.81 E0.4 ;print line 4
G1 X-0.81 Y1.63 ;move up a line
G1 X0.81 Y1.63 E0.5 ;print line 5

;Middle Layer
G92 E0 ;reset extruder to 0
G1 Z0.6 ;move up a layer
G1 X0.81 Y-1.63 E0.1 ;print line 1
G1 X-0.81 Y-1.63 ;move to line 2
G1 X-0.81 Y1.63 E0.2 ;print line 2
G92 E0 ;reset extruder to 0

T1 ;Switch extruders
G92 E0 ;reset extruder to 0
G1 X0.00 Y1.63 ;move to line 2
G1 X0.00 Y-1.63 E0.1 ;print line 2
G1 Z1.20 ;move up to final layer
G92 E0 ;reset extruder to 0
T0 ;switch to extruder 1

;Top Layer
G1 X-0.81 Y-1.63; move to starting location
G1 X0.81 Y-1.63 E0.1 ;print first line
G1 X0.81 Y-0.81 ;move up a line
G1 X-0.81 Y-0.81 E0.2 ;print line 2
G1 X-0.81 Y-0.00 ;move up a line
G1 X0.81 Y-0.00 E0.3 ;print line 3
G1 X0.81 Y0.81 ;move up a line
G1 X-0.81 Y0.81 E0.4 ;print line 4
G1 X-0.81 Y1.63 ;move up a line
G1 X0.81 Y1.63 E0.5 ;print line 5
