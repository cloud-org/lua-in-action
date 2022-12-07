
最后一个问题，OpenResty 提供了 lua_package_path 指令，可以设置 Lua 模块的查找路径。
针对上面的例子，我们可以把 lua_package_path 设置为 $prefix/lua/?.lua;;，
其中，

- $prefix就是启动参数中的 -p PATH；
- /lua/?.lua表示 lua 目录下所有以 .lua 作为后缀的文件；
- 最后的两个分号，则代表内置的代码搜索路径。