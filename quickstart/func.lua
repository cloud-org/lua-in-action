function foo(a, b, c)
    local sum = a + b
    return sum, c
end

r1, r2 = foo(1, '123', 'hello')
print(r1, r2)
