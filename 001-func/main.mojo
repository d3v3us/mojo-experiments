def main():
    print("Hello, World!")
    # positional
    x = add(5, 7)      # Positionally, a=5 and b=7
    # keyword
    y = add(b=3, a=9)
    # mixed
    z = add(5, b=7)    # Positionally, a=5
    print(x, y, z)

def do_nothing():
    pass

def add(a: Int, b: Int) -> Int:
    return a+b

def greet_no_return(name: String):
    print("Hello,", name)

def greet_none(name: String) -> None:
    print("Hello,", name)
