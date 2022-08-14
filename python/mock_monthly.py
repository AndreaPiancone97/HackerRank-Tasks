#### 1 
### Given an array of integers, calculate the ratios of its elements that are positive, negative, and zero. 
### Print the decimal value of each fraction on a new line with 6 places after the decimal.

#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'plusMinus' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def plusMinus(arr):
    ## filter(fun, list) allows to select the element of a list based on a criteria
    
    n = len(arr)
    tot_pos = len( list(filter(lambda x: x > 0 , arr) )) / n
    tot_neg = len( list(filter(lambda x: x < 0 , arr) )) / n
    tot_zero = len( list(filter(lambda x: x == 0 , arr) )) / n
    
    print(format(tot_pos, '.6f')) #format allows to print value according to a specific format
    print(format(tot_neg, '.6f'))
    print(format(tot_zero, '.6f'))
    
if __name__ == '__main__':
    n = int(input().strip())

    arr = list(map(int, input().rstrip().split()))

    plusMinus(arr)
