--搜索指定路径lua模块
package.path = '/Users/grass/Documents/lua_study/?.lua;'    

local module1 = require("module")  
  
module1.hello() 