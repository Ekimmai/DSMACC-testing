import pandas as pd
import numpy as np
import netCDF4
from netCDF4 import Dataset
import glob,sys,os
from matplotlib.pyplot import *
import matplotlib.image as image

myfile = sys.argv[1]

nc = Dataset(myfile,'r')
print nc.date, '\n', nc.description,'\n'

class spec(object):
    '''A descriptor for the plot sizes'''
    def __init__(self,name,ymin,ymax):
        self.name = name
        self.ymin = ymin
        self.ymax = ymax


plots = [ spec('O3',40,140),spec('OH',0,1.2e-3),spec('HO2',0,50e-3),spec('HNO3',0,10),spec('C5H8',0,20),spec('HCHO',0,20),spec('MGLYOX',0,2)]
groups = tuple(nc.groups)




for i in plots:
    
    im = image.imread('./gecko-isporene/%s.png'%i.name)
    imshow(im, aspect='auto', extent=(0, 430, i.ymin, i.ymax), zorder=-1, cmap=cm.gray)
    title(i.name)
    for g in groups:
    
            specs = pd.DataFrame(nc.groups[g].variables['Spec'][:])
            specs.columns = nc.groups[g].variables['Spec'].head.split(',')

            #rates = pd.DataFrame(nc.groups[g].variables['Rate'][:])
            #rates.columns = nc.groups[g].variables['Rate'].head.split(',')[:-2]

            
            a = specs[i.name]/specs.M
            a = a.map(lambda x : float(x)/1e-9 ) 
            
            
            a.plot(linewidth=2,label = g)




    legend(loc='UL')
    savefig('gecko-isporene/mixed_%s.png'%i.name)
    print 'Saved:', i.name
    close()
    
    
# for the nox    
im = image.imread('./gecko-isporene/NOx.png')
imshow(im, aspect='auto', extent=(0, 430, 10e-1, 10e1), zorder=-1, cmap=cm.gray)
title('NOx')
for g in groups:
    
            specs = pd.DataFrame(nc.groups[g].variables['Spec'][:])
            specs.columns = nc.groups[g].variables['Spec'].head.split(',')

            #rates = pd.DataFrame(nc.groups[g].variables['Rate'][:])
            #rates.columns = nc.groups[g].variables['Rate'].head.split(',')[:-2]

            
            a = specs.NO
            b = specs.NO2
            c=a+b
            c= c/specs.M
            c = c.map(lambda x : float(x)/1e-9 ) 
            
            
            c.plot(linewidth=2,label = g)




legend(loc='UL')
savefig('gecko-isporene/mixed_nox.png')
print 'Saved:', 'nox'




# for the PANS    
im = image.imread('./gecko-isporene/PANs.png')
imshow(im, aspect='auto', extent=(0, 430, 0, 7), zorder=-1, cmap=cm.gray)
title('PANs')
for g in groups:
    
            specs = pd.DataFrame(nc.groups[g].variables['Spec'][:])
            specs.columns = nc.groups[g].variables['Spec'].head.split(',')

            #rates = pd.DataFrame(nc.groups[g].variables['Rate'][:])
            #rates.columns = nc.groups[g].variables['Rate'].head.split(',')[:-2]

            
            a = specs.NO
            b = specs.NO2
            c=a+b
            c= c/specs.M
            c = c.map(lambda x : float(x)/1e-9 ) 
            
            
            c.plot(linewidth=2,label = g)




legend(loc='UL')
savefig('gecko-isporene/mixed_PANs.png')
print 'Saved:', 'pan'




    
nc.close()
