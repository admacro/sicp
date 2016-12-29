'''
E 1.8
Cube roots by Newton's Method
'''

def cube_root(x): 
    return cube_iter(1.0, x)

def cube_iter(guess, x):
    return guess if close_enough(guess, x) else cube_iter(improve(guess, x), x)

def close_enough(guess, x):
    return abs(guess - (improve(guess, x))) / guess < 0.000000001

def improve(guess, x):
    return (x/sqr(guess) + 2*guess) / 3

def sqr(x): return x * x

# Test
print(cube_root(512000000000000))
print(cube_root(512))
print(cube_root(0.512))
print(cube_root(0.000000000512))
