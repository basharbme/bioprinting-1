;2Line10mmF300_0.5mmspace
T0 ; Select extruder 1
G92 E0; Reset position of extruders

G1 Y-5 F300
G1 Y5 E0.1

G92 E0

T1 ; Select extruder 2
G92 E0; Reset position of extruders

G1 X0.5 Y-5 F300
G1 Y5 E0.1

G92 E0

T0 ; Select extruder 1