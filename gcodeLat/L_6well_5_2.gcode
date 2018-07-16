;6 Well plate, 5 lines, 4 layers
T0 ; select left extruder for this print
G91 ; Use relative units
G92 E0 ; set position of extruder

;First Layer
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
G92 E0 ;Reset extruder position

;Second Layer
;First line
T0; select left extruder
G0 X-10 Y10 Z 0.5 ;Move to starting location up 0.5mm
G1 X17.5 Y0 E0.1 F120 ;Print along X-axis
G2 X0 Y-5 I0 J-2.5 E0.2 ;Semicircle along X axis
G1 X-15 Y0 E0.3 ;Print along -X-axis
G3 X0 Y-5 I0 J-2.5 E0.4 ;Semicircle along X axis
G1 X15 Y0 E0.5 ;Print along X-axis
G2 X0 Y-5 I0 J-2.5 E0.6 ;Semicircle along X axis
G1 X-15 Y0 E0.7 ;Print along -X-axis
G3 X0 Y-5 I0 J-2.5 E0.8 ;Semicircle along X axis
G1 X17.5 Y0 E0.9 ;Print along X-axis
G0 X-10 Y10 ;Go home
G92 E0 ;Reset extruder position

;Outer line 1
T1; select right extruder
G0 X-10 Y11 ;Move to starting location
G1 X17.5 Y0 E0.1 F120 ;Print along Y-axis
G2 X0 Y-7 I0 J-3.5 E0.2 ;Semicircle along X axis
G1 X-15 Y0 E0.3 ;Print along -X-axis
G3 X0 Y-3 I0 J-1.5 E0.4 ;Semicircle along X axis
G1 X15 Y0 E0.5 ;Print along X-axis
G2 X0 Y-7 I0 J-3.5 E0.6 ;Semicircle along X axis
G1 X-15 Y0 E0.7 ;Print along -X-axis
G3 X0 Y-3 I0 J-1.5 E0.8 ;Semicircle along X axis
G1 X17.5 Y0 E0.9 ;Print along X-axis
G0 X-10 Y9 ;Go home
G92 E0 ;Reset extruder position

;Outer line 2
T1; select right extruder
G0 X-10 Y9 ;Move to starting location
G1 X17.5 Y0 E0.1 F120 ;Print along Y-axis
G2 X0 Y-3 I0 J-1.5 E0.2 ;Semicircle along X axis
G1 X-15 Y0 E0.3 ;Print along -X-axis
G3 X0 Y-7 I0 J-3.5 E0.4 ;Semicircle along X axis
G1 X15 Y0 E0.5 ;Print along X-axis
G2 X0 Y-3 I0 J-1.5 E0.6 ;Semicircle along X axis
G1 X-15 Y0 E0.7 ;Print along -X-axis
G3 X0 Y-7 I0 J-3.5 E0.8 ;Semicircle along X axis
G1 X17.5 Y0 E0.9 ;Print along X-axis
G0 X-10 Y11 ;Go home
G92 E0 ;Reset extruder position