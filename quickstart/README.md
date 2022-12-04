#### object

- 成员方法的定义

```lua
function obj:method(a1, a2, ...) ... end 
function obj.method(self, a1, a2, ...) ... end 
obj.method = function (self, a1, a2, ...) ... end
```

- 成员方法的调用

```lua
obj:method(a1, a2, ...) 
obj.method(obj, a1, a2, ...)
```