--html打印
hello="hello, lua.....11<br>";
ngx.say(hello);
--ngx.redirect("aaa",302);

--循环
local num=0
while num<=5 do
	ngx.say(num);
	num=num+1;
end

--循环
for i=0,10 do
	ngx.say(i);
end

--字符串连接
ngx.say("<br>".."aaa"..123)


--方法
local function add(x,y)
	return x+y;
end

--方法格式，js类似
local add2 = function (x,y)
	return x+y
end

ngx.say("<br>add(1,5)=")
ngx.say(add(1,5))
ngx.say("<br>add2(2,5)=")
ngx.say(add2(2,5))


--table，类似map
ngx.say("<br><br>")
local tab = {id=1,name="aa",age=18}
ngx.say(tab.id)
ngx.say(tab.name)



--数组,#arr就是数组的长度
ngx.say("<br><br>")
local arr = {10,20,30,40,50}
local arr2 = {[1]=10, [2]=20, [3]=30, [4]=40, [5]=50}
for i=1,#arr do
	ngx.say(arr[i])
end


--Lua中的变量，如果没有local关键字，全都是全局变量，Lua也是用Table来管理全局变量的，Lua把这些全局变量放在了一个叫“_G”的Table里。
ngx.say("<br><br>")
ngx.say(_G.hello)

ngx.say("nginx location设置charset utf8; 显示中文")


ngx.say("<br><br>")

