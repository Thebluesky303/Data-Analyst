def my_decorator(func):
    def wrapper(*args, **kwargs):
        print('Executing function...')
        result = func(*args, **kwargs)
        print('Function executed.')
        return result
    return wrapper

@my_decorator
def sum_list(lst):
    return sum(lst)

# Test
print(sum_list([1, 2, 3, 4, 5]))  # 15