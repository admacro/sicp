'''
Square roots by Newton's Method
Using new_if
'''

def new_if(predication, then_clause, else_clause):
    if (predication): 
        return then_clause
    else: 
        return else_clause

def sqroot(x):
    return sqrt_iter(1.0, x)

def sqrt_iter(guess, x):
    return new_if(close_enough(guess, x), guess, sqrt_iter(improve(guess, x), x))

def close_enough(guess, x):
    return abs(guess - improve(guess, x)) / guess < 0.000000001

def improve(guess, x):
    return avg(guess, x/guess)

def sqr(x): return x * x
def avg(x, y): return (x + y) / 2

'''
Output:
RecursionError: maximum recursion depth exceeded
'''
print(sqroot(1024000000000000))
print(sqroot(1024))
print(sqroot(0.001024))
print(sqroot(0.000000001024))

'''
Python uses applicative evaluation order which means
funtion parameters will be evaluated before being passed to
the funtion that's being called.

And function parameters are evaluated from left to right. 
else_clause is always evaluated, hence the evaluation never ends.

new_if(close_enough(guess, x), guess, sqrt_iter(improve(guess, x), x))
new_if(False, guess, new_if(close_enough(guess_1, x), guess_1, sqrt_iter(improve(guess_1, x), x)))
new_if(False, guess, new_if(False, guess_1, new_if(False, guess_2, sqrt_iter(improve(guess_2, x), x))))
new_if(False, guess, new_if(False, guess_1, new_if(False, guess_2, new_if(False, guess_3, sqrt_iter(improve(guess_3, x), x))))))
...
'''


def newer_if(pred_1, pred_2, then_clause, elif_cluase, else_clause):
    print("newer_if")
    if (pred_1): 
        return then_clause
    elif pred_2:
        return elif_cluase
    else: 
        return else_clause
        
def print_then(): 
    print("then") 
    return 1
    
def print_elif(): 
    print("elif") 
    return -1
    
def print_else(): 
    print("else") 
    return 0
    
def test(x): 
    print("testing") 
    return x
    
def test_new_if(pred):
    return new_if(test(pred), print_then(), print_else())

def test_newer_if(pred_1, pred_2):
    return newer_if(test(pred_1), test(pred_2), print_then(), print_elif(), print_else())

'''
output:
testing
then
else
0
'''
print(test_new_if(False))

'''
output:
testing
testing
then
elif
else
newer_if
1
'''
print(test_newer_if(True, False))

