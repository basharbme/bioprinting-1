20.0x20.0mm, 5x5 lines, 2 layers
T0 ;select left extruder for this print
G92 E0 ;reset extruder to 0

;Layer 1
;First line
G1 X-10.00 Y-10.00 Z0.00 F300 ;move to starting location
G1 X-10.00 Y7.50 Z0.00 E0.1 ;print first line
G2 X-5.00 Y7.50 Z0.00 I2.50 E0.2 ;print first CW arc
G1 X-5.00 Y-7.50 Z0.00 E0.3;print next line
G3 X0.00 Y-7.50 Z0.00 I2.50 E0.4;print CCW arc
G1 X0.00 Y7.50 Z0.00 E0.5;print next line
G2 X5.00 Y7.50 Z0.00 I2.50 E0.6;print CW arc
G1 X5.00 Y-7.50 Z0.00 E0.7;print next line
G3 X10.00 Y-7.50 Z0.00 I2.50 E0.8;print CCW arc
G1 X10.00 Y10.00 Z0.00 E0.9;print last line
G1 Z1.00 ;move up to next level

;Layer 2
;First line
G1 X-10.00 Y10.00 Z1.00 F300 ;move to starting location
G1 X7.50 Y10.00 Z1.00 E0.1 ;print first line
G2 X7.50 Y5.00 Z1.00 J-2.50 E0.2;print first CW arc
G1 X-7.50 Y5.00 Z1.00 E0.3;print next line
G3 X-7.50 Y0.00 Z1.00 J-2.50 E0.4;print CCW arc
G1 X7.50 Y0.00 Z1.00 E0.5;print next line
G2 X7.50 Y-5.00 Z1.00 J-2.50 E0.6;print CW arc
G1 X-7.50 Y-5.00 Z1.00 E0.7;print next line
G3 X-7.50 Y-10.00 Z1.00 J-2.50 E0.8;print CCW arc
G1 X10.00 Y-10.00 Z1.00 E0.9;print last line
G1 Z2.00 ;move up to next level
