---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by ashing.
--- DateTime: 2022/12/6 10:31
---

local a = 1
::mylabel:: print("--goto label")

a = a + 1
if a < 3 then
    goto mylabel
end

print("end")