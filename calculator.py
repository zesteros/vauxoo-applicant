"""
A module used for sum a list of numbers
author: Angelo Loza
date: 19/10/2016
for Vauxoo test.
"""


class CalculatorClass(object):
    """
    This class when is instantiated, can recieve a list of numbers and sum them.
    """
    amount_number = int(input("How many numbers you want to sum?\n")) # Input of amount of numbers
    num_list = [0]*amount_number # creation of the list
    for i in range(len(num_list)): # fill the list
        num_list[i] = int(input("Insert the number:\n")) #assign to the position of the list
    print "suma:", sum(num_list) # print the result  
    def sum(num_list):
        """
        This function return the sum of every element of the list
        """
        for i in range(len(num_list)):
            result = num_list[i]+num_list[i+1]
        return result

