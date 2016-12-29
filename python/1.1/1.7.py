'''
E 1.7
Square roots by Newton's Method
Another way to fix failure for very small or very large numbers.

The method is to watch how guess changes from one interation to 
the next and stops when then change is a very small fraction of 
the guess.
'''

def sqroot(x):
    return sqrt_iter(1.0, x)

def sqrt_iter(guess, x):
    return guess if close_enough(guess, x) else sqrt_iter(improve(guess, x), x)

def close_enough(guess, x):
    return abs(guess - improve(guess, x)) / guess < 0.000000001

def improve(guess, x):
    return avg(guess, x/guess)

def sqr(x): return x * x
def avg(x, y): return (x + y) / 2

# Test
print(sqroot(1024000000000000))
print(sqroot(1024))
print(sqroot(0.001024))
print(sqroot(0.000000001024))
