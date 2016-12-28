'''
E 1.5
 Applicative-order
    test(0, p())
 -> test(0, p())
 -> test(0, p())
 -> test(0, p())
 ... infinite call to p()

Output: 
RecursionError: maximum recursion depth exceeded while calling a Python object

--------
Normal-order
    test(0, p())
 -> 0 if 0 == 0 else p()
 -> 0 if True else p()
 -> 0
 
'''

def p(): 
    print("p()")
    p()

def equals(x, y):
    print("equals()")
    return x == y
    
def test(x, y): 
    return 0 if equals(x, 0) else y
    
print(test(0, p()))
