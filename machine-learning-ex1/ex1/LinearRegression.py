# -*- coding: utf-8 -*-
"""
Created on Wed Jun 26 01:39:09 2019

@author: Babbangona
"""

import numpy as np

X=list()
y = list()
def ReadFile():
    f = open('ex1python.txt')
    output = f.read()
    
    output_arr = np.matrix(output)
    print(output_arr)
    
    
ReadFile()