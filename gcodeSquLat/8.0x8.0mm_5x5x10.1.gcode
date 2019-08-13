;8.0x8.0mm, 5x5 lines, 10 layers
T0 ;select left extruder for this print
G92 E0 ;reset extruder to 0

;Layer 1
;First line
G1 X-4.00 Y-4.00 Z0.00 F150 ;move to starting location
G1 X-4.00 Y4.00 Z0.00 E0.1 ;print first line
G1 X-2.00 Y4.00 Z0.00 E0.2 ;print first connecting line
G1 X-2.00 Y-4.00 Z0.00 E0.3 ;print next line
G1 X0.00 Y-4.00 Z0.00 E0.4 ;print connecting line
G1 X0.00 Y4.00 Z0.00 E0.5 ;print next line
G1 X2.00 Y4.00 Z0.00 E0.6 ;print connecting line
G1 X2.00 Y-4.00 Z0.00 E0.7 ;print next line
G1 X4.00 Y-4.00 Z0.00 E0.8 ;print connecting line
G1 X4.00 Y4.00 Z0.00 E0.9 ;print last line
G1 Z0.25 ;move up to next level
;8.0x8.0mm, 5x5 lines, 10 layers
T0 ;select left extruder for this print
G92 E0 ;reset extruder to 0

;Layer 2
;First line
G1 X-4.00 Y4.00 Z0.25 F150 ;move to starting location
G1 X4.00 Y4.00 Z0.25 E0.1 ;print first line
 G1 X4.00 Y2.00 Z0.25 E0.2 ;print first connecting line
G1 X-4.00 Y2.00 Z0.25 E0.3 ;print next line
G1 X-4.00 Y0.00 Z0.25 E0.4 ;print connecting line arc
G1 X4.00 Y0.00 Z0.25 E0.5 ;print next line
G1 X4.00 Y-2.00 Z0.25 E0.6 ;print connecting line
G1 X-4.00 Y-2.00 Z0.25 E0.7 ;print next line
G1 X-4.00 Y-4.00 Z0.25 E0.8 ;print connecting line arc
G1 X4.00 Y-4.00 Z0.25 E0.9 ;print last line
G1 Z0.50 ;move up to next level
;8.0x8.0mm, 5x5 lines, 10 layers
T0 ;select left extruder for this print
G92 E0 ;reset extruder to 0

;Layer 3
;First line
G1 X-4.00 Y-4.00 Z0.50 F150 ;move to starting location
G1 X-4.00 Y4.00 Z0.50 E0.1 ;print first line
G1 X-2.00 Y4.00 Z0.50 E0.2 ;print first connecting line
G1 X-2.00 Y-4.00 Z0.50 E0.3 ;print next line
G1 X0.00 Y-4.00 Z0.50 E0.4 ;print connecting line
G1 X0.00 Y4.00 Z0.50 E0.5 ;print next line
G1 X2.00 Y4.00 Z0.50 E0.6 ;print connecting line
G1 X2.00 Y-4.00 Z0.50 E0.7 ;print next line
G1 X4.00 Y-4.00 Z0.50 E0.8 ;print connecting line
G1 X4.00 Y4.00 Z0.50 E0.9 ;print last line
G1 Z0.75 ;move up to next level
;8.0x8.0mm, 5x5 lines, 10 layers
T0 ;select left extruder for this print
G92 E0 ;reset extruder to 0

;Layer 4
;First line
G1 X-4.00 Y4.00 Z0.75 F150 ;move to starting location
G1 X4.00 Y4.00 Z0.75 E0.1 ;print first line
 G1 X4.00 Y2.00 Z0.75 E0.2 ;print first connecting line
G1 X-4.00 Y2.00 Z0.75 E0.3 ;print next line
G1 X-4.00 Y0.00 Z0.75 E0.4 ;print connecting line arc
G1 X4.00 Y0.00 Z0.75 E0.5 ;print next line
G1 X4.00 Y-2.00 Z0.75 E0.6 ;print connecting line
G1 X-4.00 Y-2.00 Z0.75 E0.7 ;print next line
G1 X-4.00 Y-4.00 Z0.75 E0.8 ;print connecting line arc
G1 X4.00 Y-4.00 Z0.75 E0.9 ;print last line
G1 Z1.00 ;move up to next level
;8.0x8.0mm, 5x5 lines, 10 layers
T0 ;select left extruder for this print
G92 E0 ;reset extruder to 0

;Layer 5
;First line
G1 X-4.00 Y-4.00 Z1.00 F150 ;move to starting location
G1 X-4.00 Y4.00 Z1.00 E0.1 ;print first line
G1 X-2.00 Y4.00 Z1.00 E0.2 ;print first connecting line
G1 X-2.00 Y-4.00 Z1.00 E0.3 ;print next line
G1 X0.00 Y-4.00 Z1.00 E0.4 ;print connecting line
G1 X0.00 Y4.00 Z1.00 E0.5 ;print next line
G1 X2.00 Y4.00 Z1.00 E0.6 ;print connecting line
G1 X2.00 Y-4.00 Z1.00 E0.7 ;print next line
G1 X4.00 Y-4.00 Z1.00 E0.8 ;print connecting line
G1 X4.00 Y4.00 Z1.00 E0.9 ;print last line
G1 Z1.25 ;move up to next level
;8.0x8.0mm, 5x5 lines, 10 layers
T0 ;select left extruder for this print
G92 E0 ;reset extruder to 0

;Layer 6
;First line
G1 X-4.00 Y4.00 Z1.25 F150 ;move to starting location
G1 X4.00 Y4.00 Z1.25 E0.1 ;print first line
 G1 X4.00 Y2.00 Z1.25 E0.2 ;print first connecting line
G1 X-4.00 Y2.00 Z1.25 E0.3 ;print next line
G1 X-4.00 Y0.00 Z1.25 E0.4 ;print connecting line arc
G1 X4.00 Y0.00 Z1.25 E0.5 ;print next line
G1 X4.00 Y-2.00 Z1.25 E0.6 ;print connecting line
G1 X-4.00 Y-2.00 Z1.25 E0.7 ;print next line
G1 X-4.00 Y-4.00 Z1.25 E0.8 ;print connecting line arc
G1 X4.00 Y-4.00 Z1.25 E0.9 ;print last line
G1 Z1.50 ;move up to next level
;8.0x8.0mm, 5x5 lines, 10 layers
T0 ;select left extruder for this print
G92 E0 ;reset extruder to 0

;Layer 7
;First line
G1 X-4.00 Y-4.00 Z1.50 F150 ;move to starting location
G1 X-4.00 Y4.00 Z1.50 E0.1 ;print first line
G1 X-2.00 Y4.00 Z1.50 E0.2 ;print first connecting line
G1 X-2.00 Y-4.00 Z1.50 E0.3 ;print next line
G1 X0.00 Y-4.00 Z1.50 E0.4 ;print connecting line
G1 X0.00 Y4.00 Z1.50 E0.5 ;print next line
G1 X2.00 Y4.00 Z1.50 E0.6 ;print connecting line
G1 X2.00 Y-4.00 Z1.50 E0.7 ;print next line
G1 X4.00 Y-4.00 Z1.50 E0.8 ;print connecting line
G1 X4.00 Y4.00 Z1.50 E0.9 ;print last line
G1 Z1.75 ;move up to next level
;8.0x8.0mm, 5x5 lines, 10 layers
T0 ;select left extruder for this print
G92 E0 ;reset extruder to 0

;Layer 8
;First line
G1 X-4.00 Y4.00 Z1.75 F150 ;move to starting location
G1 X4.00 Y4.00 Z1.75 E0.1 ;print first line
 G1 X4.00 Y2.00 Z1.75 E0.2 ;print first connecting line
G1 X-4.00 Y2.00 Z1.75 E0.3 ;print next line
G1 X-4.00 Y0.00 Z1.75 E0.4 ;print connecting line arc
G1 X4.00 Y0.00 Z1.75 E0.5 ;print next line
G1 X4.00 Y-2.00 Z1.75 E0.6 ;print connecting line
G1 X-4.00 Y-2.00 Z1.75 E0.7 ;print next line
G1 X-4.00 Y-4.00 Z1.75 E0.8 ;print connecting line arc
G1 X4.00 Y-4.00 Z1.75 E0.9 ;print last line
G1 Z2.00 ;move up to next level
;8.0x8.0mm, 5x5 lines, 10 layers
T0 ;select left extruder for this print
G92 E0 ;reset extruder to 0

;Layer 9
;First line
G1 X-4.00 Y-4.00 Z2.00 F150 ;move to starting location
G1 X-4.00 Y4.00 Z2.00 E0.1 ;print first line
G1 X-2.00 Y4.00 Z2.00 E0.2 ;print first connecting line
G1 X-2.00 Y-4.00 Z2.00 E0.3 ;print next line
G1 X0.00 Y-4.00 Z2.00 E0.4 ;print connecting line
G1 X0.00 Y4.00 Z2.00 E0.5 ;print next line
G1 X2.00 Y4.00 Z2.00 E0.6 ;print connecting line
G1 X2.00 Y-4.00 Z2.00 E0.7 ;print next line
G1 X4.00 Y-4.00 Z2.00 E0.8 ;print connecting line
G1 X4.00 Y4.00 Z2.00 E0.9 ;print last line
G1 Z2.25 ;move up to next level
;8.0x8.0mm, 5x5 lines, 10 layers
T0 ;select left extruder for this print
G92 E0 ;reset extruder to 0

;Layer 10
;First line
G1 X-4.00 Y4.00 Z2.25 F150 ;move to starting location
G1 X4.00 Y4.00 Z2.25 E0.1 ;print first line
 G1 X4.00 Y2.00 Z2.25 E0.2 ;print first connecting line
G1 X-4.00 Y2.00 Z2.25 E0.3 ;print next line
G1 X-4.00 Y0.00 Z2.25 E0.4 ;print connecting line arc
G1 X4.00 Y0.00 Z2.25 E0.5 ;print next line
G1 X4.00 Y-2.00 Z2.25 E0.6 ;print connecting line
G1 X-4.00 Y-2.00 Z2.25 E0.7 ;print next line
G1 X-4.00 Y-4.00 Z2.25 E0.8 ;print connecting line arc
G1 X4.00 Y-4.00 Z2.25 E0.9 ;print last line
G1 Z2.50 ;move up to next level
