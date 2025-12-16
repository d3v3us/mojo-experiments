def main():
    print("Hello, World!")
    # positional
    x = add(5, 7)      # Positionally, a=5 and b=7
    # keyword
    y = add(b=3, a=9)
    # mixed
    z = add(5, b=7)    # Positionally, a=5
    print(x, y, z)

    
    # default arguments
    z = my_pow(3)
    print(z)

    # keyword arguments
    z = my_pow(exp=3, base=2)
    print(z)

    # variable length arguments
    s = sum(1, 2, 3, 4, 5)
    print(s)


    var str1: String = "Hello"
    var str2: String = "World"

    # variable length arguments
    make_worldly(str1, str2)
    print(str1, str2)

    # variable length arguments by index
    make_worldly_by_index(str1, str2)
    print(str1, str2)



def do_nothing():
    pass

def add(a: Int, b: Int) -> Int:
    return a+b

def greet_no_return(name: String):
    print("Hello,", name)

def greet_none(name: String) -> None:
    print("Hello,", name)

fn my_powdef(base: Int, exp: Int = 2) -> Int:
    return base ** exp

fn use_defaults():
    # Uses the default value for `exp`
    var z = my_pow(3)
    print(z)

fn my_pow(base: Int, exp: Int = 2) -> Int:
    return base ** exp

fn use_keywords():
    # Uses keyword argument names (with order reversed)
    var z = my_pow(exp=3, base=2)
    print(z)

fn sum(*values: Int) -> Int:
    var sum: Int = 0
    for value in values:
        sum = sum + value
    return sum

fn make_worldly(mut *strs: String):
    for ref i in strs:
        i += " world"

fn make_worldly_by_index(mut *strs: String):
    for i in range(len(strs)):
        strs[i] += " world"