# Given an array, find the int that appears an odd number of times.
# There will always be only one integer that appears an odd number of times.

def find_it(seq):

    """
    Finds the integer that appears an odd number of times.
    :param seq: Sequence of numbers
    :return: Integer.
    """

    for i in seq:

        freq = seq.count(i)
        if freq % 2 == 1:

            return i

# Sample tests
find_it([20, 1, -1, 2, -2, 3, 3, 5, 5, 1, 2, 4, 20, 4, -1, -2, 5]) # 5
