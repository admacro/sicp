# E 1.4
# The operator module exports a set of efficient functions corresponding 
# to the intrinsic operators of Python, such as add, sub, lt, gt, eq etc.
# 
# TODO: explain the execution
# The lambda expression returns the operator add or sub based on x. 
# The anonymous function is invoked immediately with b as the parameter. 
# The anonymous function returns the correct

from operator import add, sub

def a_plus_abs_b(a, b):
    # Scheme: ((if (> b 0) + -) a b)
    # The scheme way is much more clear
    return (lambda x: add if x > 0 else sub)(b)(a, b)

print(a_plus_abs_b(3, -2))
