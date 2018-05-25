# -*- coding: utf-8 -*-
"""
Initialize parameters
"""
x1 = 20                             #Size in x direction [mm]
x2 = 20                             #Size in y direction [mm]
n1 = 5                              #Number of grid lines in x direction
n2 = 5                              #Number of grid lines in y direction

layers = 2                          #Number of layers
layspace = 1                    #Distance between layers [mm]
TwoMats = False                      #One material or two materials
MatSpace = 1                        #Spacing between different materials [mm]

pSpeed = 300                        #Printer speed in [mm/min]


deltax1 = x1/(n1-1)                 #distance between lines [mm]
deltax2 = x2/(n2-1)                 #distance between lines [mm]
r1 = deltax1/2                      #radius between y-lines[mm]
r2 = deltax2/2                      #radius between x-lines [mm]

if deltax1 >= x2 or deltax2 >= x1:
    print('Line spacing too large')
    exit()


f = open('{:.1f}x{:.1f}mm_{}x{}x{}.gcode'.format(x1,x2,n1,n2,layers), 'w')

header = ('{:.1f}x{:.1f}mm, {}x{} lines, {} layers'.format(x1,x2,n1,n2,layers),
          'T0 ;select left extruder for this print',
          'G92 E0 ;reset extruder to 0\n')
f.write('\n'.join(header))          #Write first few lines

for layer in range(layers):         #Loop through different layers
    xinit = -x1/2
    yinit = -x2/2*(-1)**layer
    f.write('\n;Layer {}\n'.format(layer+1))
    f.write(';First line\n')
    f.write('G1 X{:0.2f} Y{:0.2f} Z{:0.2f} F{} ;move to starting location\n'
            .format(xinit,yinit,layer*layspace,pSpeed))
    if (layer % 2) == 0:              #If layer 1,3,5,...
        ytop = yinit + x2 - r1
        ybot = yinit + r1
        f.write('G1 X{:0.2f} Y{:0.2f} Z{:0.2f} E0.1 ;print first line\n'
                .format(xinit,ytop,layer*layspace))
        f.write('G2 X{:0.2f} Y{:0.2f} Z{:0.2f} I{:0.2f} E0.2 ;print first CW arc\n'
                .format(xinit+deltax1,ytop,layer*layspace,r1))
        for line in range(n1-1):
            if (line % 2) == 0:
                if (line + 2) == n1:
                    f.write('G1 X{:0.2f} Y{:0.2f} Z{:0.2f} E{:0.1f} ;print last line\n'
                            .format(xinit+(1+line)*deltax1,ybot-r1,layer*layspace,0.3+line*0.2))
                    break
                f.write('G1 X{:0.2f} Y{:0.2f} Z{:0.2f} E{:0.1f} ;print next line\n'
                        .format(xinit+(1+line)*deltax1,ybot,layer*layspace,0.3+line*0.2))
                f.write('G3 X{:0.2f} Y{:0.2f} Z{:0.2f} I{:0.2f} E{:0.1f} ;print CCW arc\n'
                        .format(xinit+(2+line)*deltax1,ybot,layer*layspace,r1,0.4+line*0.2))
            else:
                if (line + 2) == n1:
                    f.write('G1 X{:0.2f} Y{:0.2f} Z{:0.2f} E{:0.1f} ;print last line\n'
                            .format(xinit+(1+line)*deltax1,ytop+r1,layer*layspace,0.3+line*0.2))
                    break
                
                f.write('G1 X{:0.2f} Y{:0.2f} Z{:0.2f} E{:0.1f} ;print next line\n'
                        .format(xinit+(1+line)*deltax1,ytop,layer*layspace,0.3+line*0.2))
                f.write('G2 X{:0.2f} Y{:0.2f} Z{:0.2f} I{:0.2f} E{:0.1f} ;print CW arc\n'
                        .format(xinit+(2+line)*deltax1,ytop,layer*layspace,r1,0.4+line*0.2))
    
    else:                           #If layer 2,4,6,...
        xright = xinit + x1 - r2
        xleft = xinit + r2
        f.write('G1 X{:0.2f} Y{:0.2f} Z{:0.2f} E0.1 ;print first line\n'
                .format(xright,yinit,layer*layspace))
        f.write('G2 X{:0.2f} Y{:0.2f} Z{:0.2f} J{:0.2f} E0.2 ;print first CW arc\n'
                .format(xright,yinit-deltax2,layer*layspace,-r2))
        for line in range(n1-1):
            if (line % 2) == 0:
                if (line + 2) == n1:
                    f.write('G1 X{:0.2f} Y{:0.2f} Z{:0.2f} E{:0.1f} ;print last line\n'
                            .format(xleft-r1,yinit-(1+line)*deltax2,layer*layspace,0.3+line*0.2))
                    break
                f.write('G1 X{:0.2f} Y{:0.2f} Z{:0.2f} E{:0.1f} ;print next line\n'
                        .format(xleft,yinit-(1+line)*deltax2,layer*layspace,0.3+line*0.2))
                f.write('G3 X{:0.2f} Y{:0.2f} Z{:0.2f} J{:0.2f} E{:0.1f} ;print CCW arc\n'
                        .format(xleft,yinit-(2+line)*deltax2,layer*layspace,-r2,0.4+line*0.2))
            else:
                if (line + 2) == n1:
                    f.write('G1 X{:0.2f} Y{:0.2f} Z{:0.2f} E{:0.1f} ;print last line\n'
                            .format(xright+r1,yinit-(1+line)*deltax2,layer*layspace,0.3+line*0.2))
                    break                
                f.write('G1 X{:0.2f} Y{:0.2f} Z{:0.2f} E{:0.1f} ;print next line\n'
                        .format(xright,yinit-(1+line)*deltax2,layer*layspace,0.3+line*0.2))
                f.write('G2 X{:0.2f} Y{:0.2f} Z{:0.2f} J{:0.2f} E{:0.1f} ;print CW arc\n'
                        .format(xright,yinit-(2+line)*deltax2,layer*layspace,-r2,0.4+line*0.2))
                
f.close()
