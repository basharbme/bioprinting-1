;6 Well plate, 5 lines, 4 layers
T0 ; select left extruder for this print
G91 ; Use relative units
G92 E0 ; set position of extruder

;First line
G0 X-10 Y-10 ;Move to starting location
G1 X0 Y17.5 E0.1 F120 ;Print along Y-axis
G2 X5 Y0 I2.5 J0 E0.2 ;Semicircle along X axis
G1 X0 Y-15 E0.3 ;Print along -Y-axis
G3 X5 Y0 I2.5 J0 E0.4 ;Semicircle along X axis
G1 X0 Y15 E0.5
G2 X5 Y0 I2.5 J0 E0.6
G1 X0 Y-15 E0.7
G3 X5 Y0 I2.5 J0 E0.8
G1 X0 Y17.5 E0.9
G0 X-10 Y-10 ;Go home
G92 E0 ;Reset extruder position

;Outer line 1
T1; select right extruder
G0 X-11 Y-10 ;Move to starting location
G1 X0 Y17.5 E0.1 F120 ;Print along Y-axis
G2 X7 Y0 I3.5 J0 E0.2 ;Semicircle along X axis
G1 X0 Y-15 E0.3 ;Print along -Y-axis
G3 X3 Y0 I1.5 J0 E0.4 ;Semicircle along X axis
G1 X0 Y15 E0.5 F120 ;Print along Y-axis
G2 X7 Y0 I3.5 J0 E0.6 ;Semicircle along X axis
G1 X0 Y-15 E0.7 ;Print along -Y-axis
G3 X3 Y0 I1.5 J0 E0.8 ;Semicircle along X axis
G1 X0 Y17.5 E0.9
G0 X-9 Y-10 ;Go home
G92 E0 ;Reset extruder position

;Outer line 2
T1; select right extruder
G0 X-9 Y-10 ;Move to starting location
G1 X0 Y17.5 E0.1 F120 ;Print along Y-axis
G2 X3 Y0 I1.5 J0 E0.2 ;Semicircle along X axis
G1 X0 Y-15 E0.3 ;Print along -Y-axis
G3 X7 Y0 I3.5 J0 E0.4 ;Semicircle along X axis
G1 X0 Y15 E0.5 F120 ;Print along Y-axis
G2 X3 Y0 I1.5 J0 E0.6 ;Semicircle along X axis
G1 X0 Y-15 E0.7 ;Print along -Y-axis
G3 X7 Y0 I3.5 J0 E0.8 ;Semicircle along X axis
G1 X0 Y17.5 E0.9
G0 X-11 Y-10 ;Go home