;Dia_1.0mm_Space_1.0mm_Zspace_1.0mm
Width 5.0mm Length 9.0mm
T0 ;select left extruder for the first layer
G92 E0 ;reset extruder to 0

;Bottom Layer
G1 X-2.00 Y-4.00 Z0 F300 ;move to starting location
G1 X2.00 Y-4.00 E0.1 ;print first line
G1 X2.00 Y-2.00 ;move up a line
G1 X-2.00 Y-2.00 E0.2 ;print line 2
G1 X-2.00 Y0.00 ;move up a line
G1 X2.00 Y0.00 E0.3 ;print line 3
G1 X2.00 Y2.00 ;move up a line
G1 X-2.00 Y2.00 E0.4 ;print line 4
G1 X-2.00 Y4.00 ;move up a line
G1 X2.00 Y4.00 E0.5 ;print line 5

;Middle Layer
G92 E0 ;reset extruder to 0
G1 Z1.0 ;move up a layer
G1 X2.00 Y-4.00 E0.1 ;print line 1
G1 X-2.00 Y-4.00 ;move to line 2
G1 X-2.00 Y4.00 E0.2 ;print line 2
G92 E0 ;reset extruder to 0

T1 ;Switch extruders
G92 E0 ;reset extruder to 0
G1 X0.00 Y4.00 ;move to line 2
G1 X0.00 Y-4.00 E0.1 ;print line 2
G1 Z2.00 ;move up to final layer
G92 E0 ;reset extruder to 0
T0 ;switch to extruder 1

;Top Layer
G1 X-2.00 Y-4.00; move to starting location
G1 X2.00 Y-4.00 E0.1 ;print first line
G1 X2.00 Y-2.00 ;move up a line
G1 X-2.00 Y-2.00 E0.2 ;print line 2
G1 X-2.00 Y0.00 ;move up a line
G1 X2.00 Y0.00 E0.3 ;print line 3
G1 X2.00 Y2.00 ;move up a line
G1 X-2.00 Y2.00 E0.4 ;print line 4
G1 X-2.00 Y4.00 ;move up a line
G1 X2.00 Y4.00 E0.5 ;print line 5
