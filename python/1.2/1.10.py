'''
E 1.10
Iterative and recursive

Ackermann's function
'''
def A(x, y):
    if (y == 0): return 0
    elif (x == 0): return 2 * y
    elif (y == 1): return 2
    else: return A(x - 1, A(x, y - 1))
     
print(A(1, 10)) # 1024
print(A(2, 4)) # 65536
print(A(3, 3)) # 65536

# See 1.10.ss for details of process of the procedure
