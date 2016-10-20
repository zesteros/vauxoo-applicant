"""
A class used for check if a number is prime or not
author: Angelo Loza
date: 19/10/2016
for Vauxoo test.
"""
class prime_class(object):
    n = int(input("Insert number to check")) #Capture number
    """
    Function who recieve a n number
    """
    def is_prime(n):
        for x in range(2, n): # Cycle for compare the module of the number by themself
            if (n%x) == 0:# if the module is zero, the number is not prime
                print "is not prime"
                return False
    return True


