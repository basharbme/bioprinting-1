# -*- coding: utf-8 -*-
"""
Initialize parameters
"""
radius = 3.5                          #Spiral radius [mm]
height = 8                        #Spiral height [mm]
nTurns = 2                          #Number of turns of spiral
nPoints = 20                        #Number of points per turn
pSpeed = 300                        #Printer speed in [mm/min]
pitch = height/nTurns/nPoints       #Height of each turn [mm]
import math

f = open('{:.1f}x{:.1f}mm_{}.gcode'
         .format(radius, height, nTurns), 'w')

x = radius							#initialize xyz position
y = 0
z = 0
theta = 0
f.write('G1 X{:0.2f} Y{:0.2f} Z{:0.2f} F{} ;move to starting location\n'
            .format(x, y, z, pSpeed))

for turn in range(nTurns):
	theta = 0
	for point in range(nPoints):
		theta = theta + (360/nPoints)*(math.pi/180)
		z = z + pitch
		x = radius*math.cos(theta)
		y = radius*math.sin(theta)
		f.write('G1 X{:0.2f} Y{:0.2f} Z{:0.2f} E{:0.1f} \n'
			.format(x,y,z,z))

f.close()