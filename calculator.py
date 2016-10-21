"""CalculatorClass

A module used for sum a list of numbers for Vauxoo test.

"""


class CalculatorClass(object):
    """Can recieve a list of numbers and sum them."""

    num_list = [0, 1, 2, 3, 4, 5, 6, 7, 8]

    def sum(self, num_list):
        """This function return the sum of every element of the list"""
        result = 0
        for num in range(len(num_list)):
            result = num_list[num] + num_list[num+1]
        return result
