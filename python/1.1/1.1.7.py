'''
E.g. 1.1.7
Square roots by Newton's method
'''

def sqroot(x): 
    # Start guess with 1.0 instead of 1 to avoid fractions
    return sqrt_iter(1.0, x)

def sqrt_iter(guess, x):
    return guess if precise_enough(guess, x) else sqrt_iter(improve(guess, x), x)

def improve(guess, x):
    return avg(guess, x/guess)
    
'''
Here, 0.001 only works adequately for numbers larger than 0.001
In fact, the larger the number is, the better the result will be.
However, for numbers smaller than 0.001, it's inadequate, not even close. 

For example
  sqroot(10240000000000) -> 3200000.0
  sqroot(1024) -> 32.0000071648159
  sqroot(0.001024) -> 0.04147053022957352
  sqroot(0.000000001024) -> 0.03125001091199924
'''
def good_enough(guess, x):
    return abs(x - sqr(guess)) < 0.001

'''
A better version of good_enough?, precise_enough? which uses a different 
deviation value (x * 0.0001) when the number is smaller than 1. 
The rule is that the deviation value must be smaller (or much smaller)
than the number we want to calculate.

For example
  sqroot(10240000000000) -> 3200000.0
  sqroot(1024) -> 32.0000000000008
  sqroot(0.001024) -> 0.03200000487830525
  sqroot(0.000000001024) -> 3.2000003310759726e-05
'''
def precise_enough(guess, x):
    return abs(x - sqr(guess)) < ((x * 0.0001) if (x < 1) else 0.0001)

def sqr(x): return x * x
def avg(x, y): return (x + y) / 2

# Test
print(sqroot(1024000000000000))
print(sqroot(1024))
print(sqroot(0.001024))
print(sqroot(0.000000001024))
    
