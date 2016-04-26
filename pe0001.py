# If we list all the natural numbers below 10 that are multiples of 3 or 5, we 
# get 3, 5, 6 and 9. The sum of these multiples is 23.
# 
# Find the sum of all the multiples of 3 or 5 below 1000.

def sumMultiples(upperLimit, *multiples):
    '''Finds the sum of all multiples of the specified numbers up to but not
    including upperLimit.'''
    return sum(i for i in range(0, upperLimit) if any(i % j == 0 for j in 
                                                      multiples))

if __name__ == "__main__":
    print(sumMultiples(1000, 3, 5))


