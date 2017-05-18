--开发时将所有数据做成局部变量/局部函数；通过 _M导出要暴露的函数，实现模块化封装。
local count = 0  
local function hello()  
   count = count + 1  
   ngx.say("count : ", count)  
end  
  
local _M = {  
   hello = hello  
}  
  
return _M 