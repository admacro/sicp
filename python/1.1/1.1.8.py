'''
E.g. 1.1.8
Use block structure to simplify the procedure 
'''

def sqroot(x):
    def improve(guess):
        return avg(guess, x/guess)
    def close_enough(guess):
        return abs(guess - improve(guess)) / guess < 0.000000001
    def sqrt_iter(guess):
        return guess if close_enough(guess) else sqrt_iter(improve(guess))
    return sqrt_iter(1.0)

def sqr(x): return x * x
def avg(x, y): return (x + y) / 2

# Test
print(sqroot(1024000000000000))
print(sqroot(1024))
print(sqroot(0.001024))
print(sqroot(0.000000001024))
