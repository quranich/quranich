-- <|> Hello, fucker | Taxin2012 and PURP was here | Mysterious Zone Project | mzrp.ru <|>
local a=KoukaPlugin a.hashMap=a.hashMap or{camiArr={Version=30000000,koukaFake=true,defGroups={user={Name="user",Inherits="user"},admin={Name="admin",Inherits="user"},superadmin={Name="superadmin",Inherits="admin"}},GetUsergroups=function()return CAMI.defGroups end,GetUsergroup=function(b)return CAMI.defGroups[b]end}}do a.hashMap.flagsToRegister=(CAMI~=nil and CAMI.GetPrivileges~=nil and CAMI.GetPrivileges())or nil CAMI=setmetatable({},{__index=function(b,c)return a.hashMap.camiArr[c]end,__newindex=function(b,c,d)if d~=nil and a.hashMap.camiArr[c]~=nil then return end a.hashMap.camiArr[c]=d end,__metatable=false})end a:Hook("Kouka.PluginsLoaded",function()local b=a.hashMap.flagsToRegister if b~=nil then for c,d in next,b do CAMI.RegisterPrivilege(d)end a.hashMap.flagsToRegister=nil end end)