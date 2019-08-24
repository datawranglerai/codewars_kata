# Simple, given a string of words, return the length of the shortest word(s).
# String will never be empty and you do not need to account for different data types.

def find_short(s):

    """
    Returns the length of the shortest word in a string of words.
    :param s: String; a sentence.
    :return: Int; Length of the shortest word in the string.
    """
    words = s.split()

    word_freqs = dict()

    for word in words:
        word_freqs[word] = len(word)

    return min(word_freqs.values())


def find_short2(s):
    """
    Best practice implementation of the above function.
    :param s: String; a sentence.
    :return: Int; Length of the shortest word in the string.
    """
    return min(len(x) for x in s.split())

find_short("bitcoin take over the world maybe who knows perhaps")  # 3
find_short("turns out random test cases are easier than writing out basic ones")  # 3
find_short("lets talk about javascript the best language")  # 3
find_short("i want to travel the world writing code one day")  # 1
find_short("Lets all go on holiday somewhere very cold")  # 2

