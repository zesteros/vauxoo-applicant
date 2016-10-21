"""PrimeClass

A module used for check if a number is prime or not for Vauxoo test.

"""


class PrimeClass(object):
    """Function who recieve a n number"""

    def is_prime(self, num_int):
        """The function to know if a number is prime or not"""
        if num_int < 2:
	return False
        else:
            for num in range(2, num):
                if num_int % num == 0:
                    return False
        return True
