import time

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
    try:
        n = int(input("Enter the number of Fibonacci terms to sum: "))
        if n < 0:
            raise ValueError("Number of terms must be non-negative.")
        
        start = time.perf_counter_ns()
        iterative_result = sum_fib_iterative(n)
        iter_time = time.perf_counter_ns() - start

        start = time.perf_counter_ns()
        recursive_result = sum_fib_recursive(n)
        rec_time = time.perf_counter_ns() - start

        print(f"\nIterative sum: {iterative_result} (time: {iter_time} ns)")
        print(f"Recursive sum: {recursive_result} (time: {rec_time} ns)")
    except ValueError as e:
        print(f"Invalid input: {e}")
    print('Igor did PR into forked fepository') 
