;Dia_0.3mm_Space_0.5mm_Zspace_0.5mm
T0 ;select left extruder for the first layer
G92 E0 ;reset extruder to 0

;Bottom Layer
G1 X-0.82 Y-1.63 Z0 F300 ;move to starting location
G1 X0.82 Y-1.63 E0.1 ;print first line
G1 X0.82 Y-1.13 ;move up a line
G1 X-0.82 Y-1.13 E0.2 ;print line 2
G1 X-0.82 Y-0.63 ;move up a line
G1 X0.82 Y-0.63 E0.3 ;print line 3
G1 X0.82 Y-0.13 ;move up a line
G1 X-0.82 Y-0.13 E0.4 ;print line 4
G1 X-0.82 Y0.37 ;move up a line
G1 X0.82 Y0.37 E0.5 ;print line 5
