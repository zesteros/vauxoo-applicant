"""CalculatorClass

A module used for sum a list of numbers for Vauxoo test.

"""


class CalculatorClass(object):
    """Can recieve a list of numbers and sum them."""

    def sum(self, num_list):
        """This function return the sum of every element of the list"""
        result = 0
        for num in num_list:
            result += num
        return result
