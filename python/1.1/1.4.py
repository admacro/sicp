'''
E 1.4
The operator module exports a set of efficient functions corresponding 
to the intrinsic operators of Python, such as add, sub, lt, gt, eq etc.
 
The lambda expression returns the operator function add or sub based on x. 
The anonymous/lambda function is invoked immediately with b as the parameter. An operator function is returned and invoked right after with a 
and b as the parameter.
'''

from operator import add, sub

def a_plus_abs_b(a, b):
    # Scheme: ((if (> b 0) + -) a b)
    # The scheme way is much more clear
    return (lambda x: add if x > 0 else sub)(b)(a, b)

print(a_plus_abs_b(3, -2))
