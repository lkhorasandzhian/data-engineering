print('Hello, World!')

name = input('Write your name: ')
print(f'Welcome, {name}!')

def sum_fib_iterative(n):
    """Итеративный подсчёт суммы первых n чисел Фибоначчи."""
    a, b = 0, 1
    total = 0
    for _ in range(n):
        total += a
        a, b = b, a + b
    return total
