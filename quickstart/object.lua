-- 函数创建 obj
function createFoo(name)
    local obj = {
        name = name
    }
    function obj:SetName(name)
        self.name = name
    end
    obj.SetAge = function (self, age)
        self.age = age
    end
    obj.GetAge = function (self)
        return self.age
    end
    function obj:GetName()
        return self.name
    end

    return obj
end

o = createFoo("panda")
print(o:GetName())
o:SetName("xzx")
print(o:GetName())

print(o:GetAge())
o:SetAge(18)
print(o:GetAge())