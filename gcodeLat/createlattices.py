# -*- coding: utf-8 -*-
"""
Initialize parameters
"""
x1 = 8                             #Size in x direction [mm]
x2 = 8                              #Size in y direction [mm]
n1 = 4                             #Number of grid lines in x direction
n2 = 4                              #Number of grid lines in y direction

layers = 2                          #Number of layers
layspace = 0.4                        #Distance between layers [mm]
TwoMats = True                     #One material or two materials
MatSpace = 0.4                        #Spacing between different materials [mm]

pSpeed = 600                        #Printer speed in [mm/min]


deltax1 = x1/(n1-1)                 #distance between lines [mm]
deltax2 = x2/(n2-1)                 #distance between lines [mm]
r1 = deltax1/2                      #radius between y-lines[mm]
r2 = deltax2/2                      #radius between x-lines [mm]

if deltax1 >= x2 or deltax2 >= x1:  #Check for too few lines
    print('Line spacing too large')
    exit()

if TwoMats == True:
    mats = 2
else:
    mats = 1

f = open('{:.1f}x{:.1f}mm_{}x{}x{}.{}.gcode'
         .format(x1, x2, n1, n2, layers,mats), 'w')

header = (';{:.1f}x{:.1f}mm, {}x{} lines, {} layers'
          .format(x1, x2, n1, n2, layers),
          'T0 ;select left extruder for this print',
          'G92 E0 ;reset extruder to 0\n')
f.write('\n'.join(header))          #Write first few lines

for layer in range(layers):         #Loop through different layers
    xinit = -x1/2                   #X starting location
    yinit = -x2/2*(-1)**layer       #Y starting location
    zlayer = layer*layspace         #Z Height for each layer
    oline = 0                       #Resets outside lines index to 0
    f.write('\n;Layer {}\n'.format(layer+1))
    f.write(';First line\n')
    f.write('G1 X{:0.2f} Y{:0.2f} Z{:0.2f} F{} ;move to starting location\n'
            .format(xinit, yinit, zlayer, pSpeed))
    if (layer % 2) == 0:              #If layer 1,3,5,...
        ytop = yinit + x2 - r1
        ybot = yinit + r1
        f.write('G1 X{:0.2f} Y{:0.2f} Z{:0.2f} E0.1 ;print first line\n'
                .format(xinit, ytop, zlayer))
        f.write('G2 X{:0.2f} Y{:0.2f} Z{:0.2f} I{:0.2f} E0.2 '
                .format(xinit+deltax1, ytop, zlayer, r1) + 
                ';print first CW arc\n')
        for line in range(n1 - 1):
            if (line % 2) == 0:
                if (line + 2) == n1:        #check if printing last line
                    f.write('G1 X{:0.2f} Y{:0.2f} Z{:0.2f} E{:0.1f} ' 
                            .format(xinit+(1+line)*deltax1,
                                    ybot-r1, zlayer, 0.3+line*0.2) +                           
                            ';print last line\n')
                    break
                f.write('G1 X{:0.2f} Y{:0.2f} Z{:0.2f} E{:0.1f} ' 
                        .format(xinit+(1+line)*deltax1,
                                ybot, zlayer, 0.3+line*0.2) +
                        ';print next line\n')
                f.write('G3 X{:0.2f} Y{:0.2f} Z{:0.2f} I{:0.2f} E{:0.1f} '
                        .format(xinit+(2+line)*deltax1,
                                ybot, zlayer, r1, 0.4+line*0.2) +
                        ';print CCW arc\n')
            else:
                if (line + 2) == n1:        #check if printing last line
                    f.write('G1 X{:0.2f} Y{:0.2f} Z{:0.2f} E{:0.1f} ' 
                            .format(xinit+(1+line)*deltax1,
                                    ytop+r1, zlayer, 0.3+line*0.2) +
                            ';print last line\n')
                    break
                f.write('G1 X{:0.2f} Y{:0.2f} Z{:0.2f} E{:0.1f} '
                        .format(xinit+(1+line)*deltax1,
                                ytop, zlayer, 0.3+line*0.2) +
                        ';print next line\n')
                f.write('G2 X{:0.2f} Y{:0.2f} Z{:0.2f} I{:0.2f} E{:0.1f} ' 
                        .format(xinit+(2+line)*deltax1, ytop,
                                zlayer, r1, 0.4+line*0.2) +
                        ';print CW arc\n')
    
    else:                           #If layer 2,4,6,...
        xright = xinit + x1 - r2
        xleft = xinit + r2
        f.write('G1 X{:0.2f} Y{:0.2f} Z{:0.2f} E0.1 ;print first line\n '
                .format(xright, yinit, zlayer))
        f.write('G2 X{:0.2f} Y{:0.2f} Z{:0.2f} J{:0.2f} E0.2 '
                .format(xright, yinit-deltax2, zlayer, -r2) +
                ';print first CW arc\n')
        for line in range(n2 - 1):
            if (line % 2) == 0:
                if (line + 2) == n2:        #check if printing last line
                    f.write('G1 X{:0.2f} Y{:0.2f} Z{:0.2f} E{:0.1f} '
                            .format(xleft-r1, yinit-(1+line)*deltax2,
                                    zlayer, 0.3+line*0.2) +
                            ';print last line\n')
                    break
                f.write('G1 X{:0.2f} Y{:0.2f} Z{:0.2f} E{:0.1f} '
                        .format(xleft, yinit-(1+line)*deltax2,
                                zlayer, 0.3+line*0.2) +
                        ';print next line\n')
                f.write('G3 X{:0.2f} Y{:0.2f} Z{:0.2f} J{:0.2f} E{:0.1f} '
                        .format(xleft, yinit-(2+line)*deltax2,
                                zlayer, -r2, 0.4+line*0.2) +
                        ';print CCW arc\n')
            else:
                if (line + 2) == n2:        #check if printing last line
                    f.write('G1 X{:0.2f} Y{:0.2f} Z{:0.2f} E{:0.1f} '
                            .format(xright+r1, yinit-(1+line)*deltax2,
                                    zlayer,0.3+line*0.2) +
                            ';print last line\n')
                    break                
                f.write('G1 X{:0.2f} Y{:0.2f} Z{:0.2f} E{:0.1f} '
                        .format(xright, yinit-(1+line)*deltax2,
                                zlayer, 0.3+line*0.2) +
                        ';print next line\n')
                f.write('G2 X{:0.2f} Y{:0.2f} Z{:0.2f} J{:0.2f} E{:0.1f} '
                        .format(xright, yinit-(2+line)*deltax2,
                                zlayer, -r2, 0.4+line*0.2) +
                        ';print CW arc\n')
                        
    while TwoMats == True and oline <= 1:     #printing outside lines
        xoff = MatSpace*(-1)**oline
        yoff = MatSpace*(-1)**oline
        if oline == 0:
            outsideheader = ('\n;T1 ; select right extruder for this print',
                            'G92 E0 ; set position of extruder',
                            ';Second Line\n')
        elif oline == 1:
            outsideheader = ('\nG92 E0 ; set position of extruder',
                            ';Third Line\n')          
        f.write('\n'.join(outsideheader))        #Write header for outer lines
        f.write('G1 X{:0.2f} Y{:0.2f} Z{:0.2f} F{} ;move to starting location\n'
                .format(xinit-xoff*((layer+1 )% 2),
                        yinit+yoff*(layer % 2), zlayer, pSpeed))
        if (layer % 2) == 0:              #If layer 1,3,5,...
            ytop = yinit + x2 - r1
            ybot = yinit + r1
            f.write('G1 X{:0.2f} Y{:0.2f} Z{:0.2f} E0.1 ;print first line\n'
                    .format(xinit-xoff, ytop, zlayer))
            f.write('G2 X{:0.2f} Y{:0.2f} Z{:0.2f} I{:0.2f} E0.2 '
                    .format(xinit+deltax1+xoff, ytop, zlayer, r1+xoff) + 
                    ';print first CW arc\n')
            for line in range(n1 - 1):
                if (line % 2) == 0:
                    if (line + 2) == n1:    #check if printing last line
                        f.write('G1 X{:0.2f} Y{:0.2f} Z{:0.2f} E{:0.1f} ' 
                                .format(xinit+(1+line)*deltax1+xoff,
                                        ybot-r1, zlayer, 0.3+line*0.2) +                           
                                ';print last line\n')
                        break
                    f.write('G1 X{:0.2f} Y{:0.2f} Z{:0.2f} E{:0.1f} ' 
                            .format(xinit+(1+line)*deltax1+xoff,
                                    ybot, zlayer, 0.3+line*0.2) +
                            ';print next line\n')
                    f.write('G3 X{:0.2f} Y{:0.2f} Z{:0.2f} I{:0.2f} E{:0.1f} '
                            .format(xinit+(2+line)*deltax1-xoff,
                                    ybot, zlayer, r1-xoff, 0.4+line*0.2) +
                            ';print CCW arc\n')
                else:
                    if (line + 2) == n1:    #check if printing last line
                        f.write('G1 X{:0.2f} Y{:0.2f} Z{:0.2f} E{:0.1f} ' 
                                .format(xinit+(1+line)*deltax1-xoff,
                                        ytop+r1, zlayer, 0.3+line*0.2) +
                                ';print last line\n')
                        break
                    f.write('G1 X{:0.2f} Y{:0.2f} Z{:0.2f} E{:0.1f} '
                            .format(xinit+(1+line)*deltax1-xoff,
                                    ytop, zlayer, 0.3+line*0.2) +
                            ';print next line\n')
                    f.write('G2 X{:0.2f} Y{:0.2f} Z{:0.2f} I{:0.2f} E{:0.1f} ' 
                            .format(xinit+(2+line)*deltax1+xoff, ytop,
                                    zlayer, r1+xoff, 0.4+line*0.2) +
                            ';print CW arc\n')
        
        else:                           #If layer 2,4,6,...
            xright = xinit + x1 - r2
            xleft = xinit + r2
            f.write('G1 X{:0.2f} Y{:0.2f} Z{:0.2f} E0.1 ;print first line\n '
                    .format(xright, yinit+yoff, zlayer))
            f.write('G2 X{:0.2f} Y{:0.2f} Z{:0.2f} J{:0.2f} E0.2 '
                    .format(xright, yinit-deltax2+yoff, zlayer, -r2-yoff) +
                    ';print first CW arc\n')
            for line in range(n2 - 1):
                if (line % 2) == 0:
                    if (line + 2) == n2:        #check if printing last line
                        f.write('G1 X{:0.2f} Y{:0.2f} Z{:0.2f} E{:0.1f} '
                                .format(xleft-r1, yinit-(1+line)*deltax2-yoff,
                                        zlayer, 0.3+line*0.2) +
                                ';print last line\n')
                        break
                    f.write('G1 X{:0.2f} Y{:0.2f} Z{:0.2f} E{:0.1f} '
                            .format(xleft, yinit-(1+line)*deltax2-yoff,
                                    zlayer, 0.3+line*0.2) +
                            ';print next line\n')
                    f.write('G3 X{:0.2f} Y{:0.2f} Z{:0.2f} J{:0.2f} E{:0.1f} '
                            .format(xleft, yinit-(2+line)*deltax2+yoff,
                                    zlayer, -r2+yoff, 0.4+line*0.2) +
                            ';print CCW arc\n')
                else:
                    if (line + 2) == n2:        #check if printing last line
                        f.write('G1 X{:0.2f} Y{:0.2f} Z{:0.2f} E{:0.1f} '
                                .format(xright+r1, yinit-(1+line)*deltax2+yoff,
                                        zlayer,0.3+line*0.2) +
                                ';print last line\n')
                        break                
                    f.write('G1 X{:0.2f} Y{:0.2f} Z{:0.2f} E{:0.1f} '
                            .format(xright, yinit-(1+line)*deltax2+yoff,
                                    zlayer, 0.3+line*0.2) +
                            ';print next line\n')
                    f.write('G2 X{:0.2f} Y{:0.2f} Z{:0.2f} J{:0.2f} E{:0.1f} '
                            .format(xright, yinit-(2+line)*deltax2,
                                    zlayer, -r2-yoff, 0.4+line*0.2) +
                            ';print CW arc\n')
        f.write('G1 Z{:0.2f} ;move above scaffold\n'   #Go above scaffold
                .format((layer+1)*layspace))            
        oline = oline + 1    
            


    #Go to the next line without extruding        
    f.write('G1 Z{:0.2f} ;move up to next level\n'.format((layer+1)*layspace))
    
f.close()
