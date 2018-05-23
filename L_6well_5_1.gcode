;6 Well plate, 5 lines, 1 layers
T0 ; select left extruder for this print
G92 E0 ; set position of extruder
;First line
G1 X-10 Y-10 ;Move to starting location
G1 X-10 Y7.5 E0.1 F300 ;Print along Y-axis
G2 X-5 Y7.5 I2.5 J0 E0.2 ;Semicircle along X axis
G1 X-5 Y-7.5 E0.3 ;Print along -Y-axis
G3 X0 Y-7.5 I2.5 J0 E0.4 ;Semicircle along X axis
G1 X0 Y7.5 E0.5
G2 X5 Y7.5 I2.5 J0 E0.6
G1 X5 Y-7.5 E0.7
G3 X10 Y-7.5 I2.5 J0 E0.8
G1 X10 Y10 E0.9
G92 E0 ;Reset extruder position

;Outer Line 1
T1 ; select right extruder for this print
G92 E0 ; set position of extruder
;Second Line line
G1 X-11 Y-10 ;Move to starting location
G1 X-11 Y7.5 E0.1 F300 ;Print along Y-axis
G2 X-4 Y7.5 I3.5 J0 E0.2 ;Semicircle along X axis
G1 X-4 Y-7.5 E0.3 ;Print along -Y-axis
G3 X-1 Y-7.5 I1.5 J0 E0.4 ;Semicircle along X axis
G1 X-1 Y7.5 E0.5
G2 X6 Y7.5 I3.5 J0 E0.6
G1 X6 Y-7.5 E0.7
G3 X9 Y-7.5 I1.5 J0 E0.8
G1 X9 Y10 E0.9
G92 E0 ;Reset extruder position

;Outer line 2
T1; select right extruder
G1 X-9 Y-10 ;Move to starting location
G1 X-9 Y7.5 E0.1 F300 ;Print along Y-axis
G2 X-6 Y7.5 I1.5 J0 E0.2 ;Semicircle along X axis
G1 X-6 Y-7.5 E0.3 ;Print along -Y-axis
G3 X1 Y-7.5 I3.5 J0 E0.4 ;Semicircle along X axis
G1 X1 Y7.5 E0.5
G2 X4 Y7.5 I1.5 J0 E0.6
G1 X4 Y-7.5 E0.7
G3 X11 Y-7.5 I3.5 J0 E0.8
G1 X11 Y10 E0.9
G92 E0 ;Reset extruder position