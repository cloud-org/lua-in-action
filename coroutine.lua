---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by ashing.
--- DateTime: 2022/12/9 15:21
---

co = coroutine.create(function(i)
    print(i);
end)

-- start a coroutine
print(type(co)) -- thread
coroutine.resume(co, 1)
print(coroutine.status(co))

--
co = coroutine.wrap(
        function(i)
            print(i);
        end
)

print(type(co)) -- function
co(2)

print("======")
co2 = coroutine.create(
        function()
            for i = 1, 4 do
                print(i)
                if i == 3 then
                    print(coroutine.status(co2))  --running
                    print(coroutine.running()) --thread:XXXXXX
                end
                coroutine.yield()  -- 主动挂起
            end
        end
)

coroutine.resume(co2) --1
coroutine.resume(co2) --2
coroutine.resume(co2) --3

print(coroutine.status(co2))   -- suspended, 这里不是 dead 状态
print(coroutine.running()) -- nil

-- another sample

print("=====")
local function foo (a)
    print("foo 函数输出", a)
    return coroutine.yield(2 * a) -- 返回  2*a 的值
end

co = coroutine.create(function(a, b)
    print("第一次协同程序执行输出", a, b) -- co-body 1 10
    local r = foo(a + 1)

    print("第二次协同程序执行输出", r)
    local r, s = coroutine.yield(a + b, a - b)  -- a，b的值为第一次调用协同程序时传入

    print("第三次协同程序执行输出", r, s)
    return b, "结束协同程序"                   -- b的值为第二次调用协同程序时传入
end)

print("main", coroutine.resume(co, 1, 10)) -- true, 4
print("--分割线----")
local status, value1, value2 = coroutine.resume(co, "r") -- true 11 -9
print("status is", status, "value is", value1,value2)
--print("main", coroutine.resume(co, "r")) -- true 11 -9
print("---分割线---")
print("main", coroutine.resume(co, "x", "y")) -- true 10 end
print("---分割线---")
print("main", coroutine.resume(co, "x", "y")) -- cannot resume dead coroutine
print("---分割线---")