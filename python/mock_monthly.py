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
    
    
    
##### 2 Given five positive integers, find the minimum and maximum values that can be calculated by summing exactly four of the five integers. 
##      Then print the respective minimum and maximum values as a single line of two space-separated long integers.

#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'miniMaxSum' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def miniMaxSum(arr):
    sum_values = []
    for i in range(0, len(arr)):
        tmp = arr.copy() #with copy method we clone the value of the list without link the junk list with the original one.
        tmp.pop(i)
        sum_values.append(sum(tmp))
    print(min(sum_values),max(sum_values), sep = ' ')
        

if __name__ == '__main__':

    arr = list(map(int, input().rstrip().split()))

    miniMaxSum(arr)
