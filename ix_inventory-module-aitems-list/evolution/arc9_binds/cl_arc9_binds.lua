-- <|> Hello, fucker | Taxin2012 and PURP was here | Mysterious Zone Project | mzrp.ru <|>
local a=ix.plugin.list["inventory-module-aitems-list"]local b=0 local function c()local d,e,f="arc9_safemode",KEY_B,"Изменить режим огня/предохранитель(удерживать)"local g=ix.controlManager.RegisterBind(d,e,f)concommand.Add("controlManager_arc9_safemode",function()end)local h,i,j="arc9_customization",KEY_G,"Меню настройки оружия"local k=ix.controlManager.RegisterBind(h,i,j)concommand.Add("controlManager_arc9_customization",function()end)local l,m,n="arc9_inspect",KEY_H,"Осмотреть оружие"local o=ix.controlManager.RegisterBind(l,m,n)end hook.Add("InitializeControlManager",a.uniqueID.."InitializeControlManager_ARC9_WEAPONS",c)hook.Add("PlayerButtonDown",a.uniqueID.."PlayerButtonDown_ARC9_WEAPONS_CUSTOMIZATION",function(d,e)if IsFirstTimePredicted()~=true then return end if(b)>CurTime()then return end local f=d:GetCharacter()if not f or d:Alive()==false then return end local g=d:GetActiveWeapon()if IsValid(g)and g.ARC9 then local h=ix.controlManager.GetKey("arc9_safemode")if e==h then timer.Create("ixToggleSafetyARC9"..d:SteamID(),ix.config.Get("weaponRaiseTime"),1,function()if IsValid(d)and e==h then net.Start("ARC9_SwitchFiremode")net.WriteBool(false)net.SendToServer()end end)end end end)hook.Add("PlayerButtonUp",a.uniqueID.."PlayerButtonUp_ARC9_WEAPONS_CUSTOMIZATION",function(d,e)if IsFirstTimePredicted()~=true then return end if(b)>CurTime()then return end local f=d:GetCharacter()if not f or d:Alive()==false then return end local g=d:GetActiveWeapon()if IsValid(g)and g.ARC9 then local h=ix.controlManager.GetKey("arc9_customization")if e==h then local k=not IsValid(g.CustomizeHUD)net.Start("ARC9_togglecustomize")net.WriteBool(k)net.SendToServer()b=CurTime()+.25 end local i=ix.controlManager.GetKey("arc9_safemode")if e==i then local k="ixToggleSafetyARC9"..d:SteamID()if timer.Exists(k)then timer.Remove(k)net.Start("ARC9_SwitchFiremode")net.WriteBool(true)net.SendToServer()end end local j=ix.controlManager.GetKey("arc9_inspect")if e==j then g:PlayAnimation("inspect",1,true)end end end)if IX_RELOADED==false then c()end