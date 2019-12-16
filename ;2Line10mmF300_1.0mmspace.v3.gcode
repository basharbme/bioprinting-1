;2Line10mmF300_1.0mmspace
T0 ; Select extruder 1
G92 E0; Reset position of extruders

G1 Y-5 F300
G1 Y5 E0.1

G92 E0

T1 ; Select extruder 2
G92 E0; Reset position of extruders

G1 X1.0 Y-5 F300
G1 Y5 E0.1

G92 E0

T0 ; Select extruder 1