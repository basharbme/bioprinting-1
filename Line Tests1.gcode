; Sample Code I can label my code and create comments by writing text after a semicolon
T0 ; select left extruder for this print
G92 E0 ; set position of extruder
G1 X0 Y0 Z0.2 F120 ; Move extruder to  (0,0,0.2) at a rate of 120 mm/min without extruding material
G1 X5 Y0 Z0.2 E0.1 F120 ; Move extruder to  (5,0,0.2) at rate of 120 mm/min and extrude material
G1 X10 Y0 Z0.2 E0.2 F120 ; Move extruder to (10,0,0.2) at rate of 120 mm/min and continue to extrude
G92 E0 ; I am finished my first layer, so I use this command as a reset 
G1 X10 Y0 Z0.4 F120 ; move extruder to (10,0,0.4) at rate of 120 mm/min without extruding material
G1 X5 Y0 Z0.4 E0.1 F120 ; move extruder to (5,0,0.4) at rate of 120 mm/min and extrude material
G1 X0 Y0 Z0.4 E0.2 F120 ; move extruder to (0,0,0.4) at rate of 120 mm/min and extrude material