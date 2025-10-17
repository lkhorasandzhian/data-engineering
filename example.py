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

def sum_fib_recursive(n, a=0, b=1, total=0):
    """Рекурсивный подсчёт суммы первых n чисел Фибоначчи."""
    if n == 0:
        return total
    return sum_fib_recursive(n - 1, b, a + b, total + a)

if __name__ == "__main__":
    n = int(input("Enter the number of Fibonacci terms to sum: "))
    print(f"Iterative sum of first {n} Fibonacci numbers: {sum_fib_iterative(n)}")
    print(f"Recursive sum of first {n} Fibonacci numbers: {sum_fib_recursive(n)}")
