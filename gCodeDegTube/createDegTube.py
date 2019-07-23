# -*- coding: utf-8 -*-
"""
Initialize parameters
"""
line_space = 1.1                  # Spacing between filament diameters [mm]
z_space = 0.8                       # Spacing between layers [mm]
needle_dia = 0.413                  # Needle diameter [mm]

pSpeed = 300                        # Printer speed in [mm/min]

width = 3 * needle_dia + 2 * line_space
length = 5 * needle_dia + 4 * line_space

f = open('Dia_{:.1f}mm_Space_{:.1f}mm_Zspace_{:.1f}mm.gcode'
         .format(needle_dia, line_space, z_space), 'w')


xinit = -(width - needle_dia) / 2                   # X starting location [mm]
xfinal = (width - needle_dia) / 2                   # X ending location [mm]
yinit = -(length - needle_dia) / 2                  # Y starting location [mm]
yfinal = (length - needle_dia) / 2                 # Y ending location [mm]

header = (';Dia_{:.1f}mm_Space_{:.1f}mm_Zspace_{:.1f}mm'
          .format(needle_dia, line_space, z_space),
          'Width {:.1f}mm Length {:.1f}mm'.format(width, length),
          'T0 ;select left extruder for the first layer',
          'G92 E0 ;reset extruder to 0\n')
f.write('\n'.join(header))          # Write bottom layer

f.write('\n;Bottom Layer\n')
f.write('G1 X{:0.2f} Y{:0.2f} Z0 F{} ;move to starting location\n'
        .format(xinit, yinit, pSpeed))  # move to starting location
f.write('G1 X{:0.2f} Y{:0.2f} E0.1 ;print first line\n'
        .format(xfinal, yinit))         # print lines
f.write('G1 X{:0.2f} Y{:0.2f} ;move up a line\n'
        .format(xfinal, yinit + 1 * (line_space + needle_dia)))
f.write('G1 X{:0.2f} Y{:0.2f} E0.2 ;print line 2\n'
        .format(xinit, yinit + 1 * (line_space + needle_dia)))
f.write('G1 X{:0.2f} Y{:0.2f} ;move up a line\n'
        .format(xinit, yinit + 2 * (line_space + needle_dia)))
f.write('G1 X{:0.2f} Y{:0.2f} E0.3 ;print line 3\n'
        .format(xfinal, yinit + 2 * (line_space + needle_dia)))
f.write('G1 X{:0.2f} Y{:0.2f} ;move up a line\n'
        .format(xfinal, yinit + 3 * (line_space + needle_dia)))
f.write('G1 X{:0.2f} Y{:0.2f} E0.4 ;print line 4\n'
        .format(xinit, yinit + 3 * (line_space + needle_dia)))
f.write('G1 X{:0.2f} Y{:0.2f} ;move up a line\n'
        .format(xinit, yinit + 4 * (line_space + needle_dia)))
f.write('G1 X{:0.2f} Y{:0.2f} E0.5 ;print line 5\n'
        .format(xfinal, yinit + 4 * (line_space + needle_dia)))

f.write('\n;Middle Layer\n')            # Write bottom layer
f.write('G92 E0 ;reset extruder to 0\n')    # Reset extruder
f.write('G1 Z{:.1f} ;move up a layer\n'.format(z_space))
f.write('G1 X{:0.2f} Y{:0.2f} E0.1 ;print line 1\n'
        .format(xfinal, yinit))         # Write first outside line
f.write('G1 X{:0.2f} Y{:0.2f} ;move to line 2\n'
        .format(xinit, yinit))
f.write('G1 X{:0.2f} Y{:0.2f} E0.2 ;print line 2\n'
        .format(xinit, yfinal))         # Write second outside line
f.write('G92 E0 ;reset extruder to 0\n')

f.write('\nT1 ;Switch extruders\n')     # Switch extruder head
f.write('G92 E0 ;reset extruder to 0\n')    # Reset extruder
f.write('G1 X{:0.2f} Y{:0.2f} ;move to line 2\n'
        .format(0, yfinal))
f.write('G1 X{:0.2f} Y{:0.2f} E0.1 ;print line 2\n'
        .format(0, yinit))         # Write degradeable line
f.write('G1 Z{:0.2f} ;move up to final layer\n'
        .format(2 * z_space))           # Move to final layer
f.write('G92 E0 ;reset extruder to 0\n')    # Reset extruder
f.write('T0 ;switch to extruder 1\n')

f.write('\n;Top Layer\n')           # Print top layer
f.write('G1 X{:0.2f} Y{:0.2f}; move to starting location\n'
        .format(xinit, yinit))  # move to starting location
f.write('G1 X{:0.2f} Y{:0.2f} E0.1 ;print first line\n'
        .format(xfinal, yinit))         # print lines
f.write('G1 X{:0.2f} Y{:0.2f} ;move up a line\n'
        .format(xfinal, yinit + 1 * (line_space + needle_dia)))
f.write('G1 X{:0.2f} Y{:0.2f} E0.2 ;print line 2\n'
        .format(xinit, yinit + 1 * (line_space + needle_dia)))
f.write('G1 X{:0.2f} Y{:0.2f} ;move up a line\n'
        .format(xinit, yinit + 2 * (line_space + needle_dia)))
f.write('G1 X{:0.2f} Y{:0.2f} E0.3 ;print line 3\n'
        .format(xfinal, yinit + 2 * (line_space + needle_dia)))
f.write('G1 X{:0.2f} Y{:0.2f} ;move up a line\n'
        .format(xfinal, yinit + 3 * (line_space + needle_dia)))
f.write('G1 X{:0.2f} Y{:0.2f} E0.4 ;print line 4\n'
        .format(xinit, yinit + 3 * (line_space + needle_dia)))
f.write('G1 X{:0.2f} Y{:0.2f} ;move up a line\n'
        .format(xinit, yinit + 4 * (line_space + needle_dia)))
f.write('G1 X{:0.2f} Y{:0.2f} E0.5 ;print line 5\n'
        .format(xfinal, yinit + 4 * (line_space + needle_dia)))

f.close()
