print('Hello, World!')

name = input('Write your name: ')
print(f'Welcome, {name}!')

def sum_fib_recursive(n, a=0, b=1, total=0):
    """Рекурсивный подсчёт суммы первых n чисел Фибоначчи."""
    if n == 0:
        return total
    return sum_fib_recursive(n - 1, b, a + b, total + a)
