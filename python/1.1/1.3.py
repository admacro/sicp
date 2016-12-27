# E 1.3
# Summerize the squares of the two larger numbers given three numbers
def sum_larger_sqrt(a, b, c):
    if a > b and b > c:
        return a * a + b * b
    elif a > b and c > b:
        return a * a + c * c
    else:
        return b * b + c * c
        
print(sum_larger_sqrt(9, -6, 3))
