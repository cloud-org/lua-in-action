-- 表既是 hash 表，也是数组 可以把数组看作 key 为数值得 hash 表
-- 除了 nil 之外，任何类型都可以作为表项的 key
-- a = {}
a = {
    100,
    'hello',
    n = 1,
    b = 'hello world'
}
a[3] = 200

-- print(a.n)
-- print(a.str)
print(a[1])
print(a[2])
a[2] = nil -- 赋值 nil，则会删除这一项 可以看下面循环 output
print(a[0]) -- 不会报错 nil 
print(a[3])

for k, v in pairs(a) do
    print(k, "=>", v)
end
