-- <|> Hello, fucker | Taxin2012 and PURP was here | Mysterious Zone Project | mzrp.ru <|>
local a=KoukaPlugin function kouka.commands.IsSilent()return input.IsKeyDown(KEY_LALT)end function kouka.commands.Run(d,e,f)d=kouka.commands.Get(d)if d==nil then return kouka.Notify(kouka.colors.red,"You don't have access to this command")end local g={}if d.args then local h=#d.args if isstring(e)then g=kouka.commands.Parse(e,h+1)table.remove(g,1)else g=e end if h~=#g then return kouka.Notify(kouka.colors.red,"Not enough arguments! ("..table.concat(d.args,", ")..")")end end if d.func then return d.func(f or kouka.commands.IsSilent(),unpack(g))end net.Start("Kouka.Command")net.WriteBool(f or kouka.commands.IsSilent())net.WriteString(d.name)net.WriteString(table.concat(g," "))net.SendToServer()end local b=[[You can define target by nickname or UserID (type 'status' in console to lookup UserID). If you type some number as target, Kouka will try to search by UserID. Otherwise, it will search by nickname.
To define yourself as target you can type 'me'.

Right click menu button to pass yourself as first argument. Hold ALT when issuing command to make it silent (if you have access to silent commands).

<argument> is required to run a command, [argument] is not.
You can specify ban time using format like "1y4w2d6h30m" (year, week, day, hour, minute).]]a:Command{"help",help="Print list of commands",group="General",icon="help",function(d)MsgC(kouka.colors.white,"\n\n======HELP======\n\n")MsgC(kouka.colors.white,b.."\n")for e,f in next,kouka.commands.GetAll()do MsgC(kouka.colors.white,"\n  "..e..(f.prefix~=nil and" ("..f.prefix..")"or"")..(f.help~=nil and" - "..f.help.."."or"")..(f.args~=nil and" | Arguments: ["..table.concat(f.args,", ").."]"or"").."\n")end MsgC(kouka.colors.white,"\n======HELP======\n\n")kouka.Notify("Commands was printed in console")end}local function c(d,e)local f={}local g,h=kouka.commands.Parse(e)local i=h and#g+1 or#g local j=g[1]or""if i<2 then for k,l in next,kouka.commands.GetAll()do if k:Left(j:len())==j then f[#f+1]=d.." "..k end end else local k=kouka.commands.Get(j:lower())if k then local l=k.args and k.args[i-1]if l and l=="ply"then local m=d.." "..kouka.commands.Build(g,h)local n=g[i]or""n=n:uLower()local o={}for p,q in next,player.GetAll()do if q~=LocalPlayer()and q:Name():uLower():find(n,nil,true)then o[#o+1]=q end end table.sort(o,function(p,q)return kouka.utils.Leven(p:Name():uLower(),n)<kouka.utils.Leven(q:Name():uLower(),n)end)for p,q in ipairs(o)do f[#f+1]=q:Name():find("\"",nil,true)and tostring(q:UserID())or q:Name()end table.sort(f,kouka.utils.Sort)for p,q in next,f do local r=q:find(" ",nil,true)and"\""or""f[p]=m.." "..r..q..r end table.insert(f,1,m.." me")end end end return f end concommand.Add("kouka",function(d,e,f,g)kouka.commands.Run(f[1],table.concat(f," "),false)end,c)concommand.Add("koukas",function(d,e,f,g)kouka.commands.Run(f[1],table.concat(f," "),true)end,c)net.Receive("Kouka.Commands.Get",function()kouka.commands.listReceived={}kouka.utils.ReadList(function()local d=net.ReadString()local e={}e={name=d,help=net.ReadString(),group=net.ReadString(),icon=net.ReadString()}if net.ReadBool()then e.menu=net.ReadString()end if net.ReadBool()then e.args=kouka.utils.ReadList(net.ReadString)end if net.ReadBool()then local f=net.ReadString()e.prefix=f a.hashMap.registeredPrefixes[f]=e end kouka.commands.listReceived[d]=e end,nil,true)kouka.commands.list=nil kouka.commands.GetAll()end)a:Hook("PreRender",function()for d,e in next,player.GetAll()do if e:GetNWBool("Kouka.Cloak")~=(e.koukaCloak or false)then e.koukaCloak=e:GetNWBool("Kouka.Cloak")if e.koukaCloak~=true then e:SetNoDraw(false)e:SetNotSolid(false)for f,g in next,e:GetWeapons()do g:SetNoDraw(false)end end end if e.koukaCloak then e:SetNoDraw(true)e:SetNotSolid(true)local f=e:GetActiveWeapon()if IsValid(f)then f:SetNoDraw(true)end end end end)a:Hook("DrawPhysgunBeam",function(d,e,f)if f~=true then return end if d.koukaCloak then return false end end)a:Hook("PlayerFootstep",function(d)if d.koukaCloak then return true end end)a:Hook("PlayerNoClip",function(d,e)return e==false or kouka.HasFlag("NoClip")end)net.Receive("Kouka.RunString",function()RunString(net.ReadString())end)a:Hook("ChatTextChanged",function(d)a.hashMap.chatStr=d end)a:Hook("FinishChat",function()a.hashMap.chatHints=nil if input.IsKeyDown(KEY_ENTER)==false and input.IsKeyDown(KEY_PAD_ENTER)==false then return end local d,e,f=a.hashMap.FindChatCommand(a.hashMap.chatStr)if d==nil or d.isClientCMD==nil then return end kouka.commands.Run(d.name,d.args~=nil and kouka.commands.Parse(e,#d.args),f)end)function a.hashMap.GetKeyboardFocusPanelPos(d)local e=d:GetParent()if e then local f,g=a.hashMap.GetKeyboardFocusPanelPos(e)return f+d.x,g+d.y else return d.x,d.y end end a:Hook("HUDPaint",function()local d=a.hashMap.chatHints if d==nil then return end local e=vgui.GetKeyboardFocus()if e==nil then return end local f,g,h,i={},d.args,d.cmd.args,d.cmd.prefix if g~=nil then for l,m in ipairs(g)do local n=h[l]if n then if n=="ply"or n=="plyOrStr"then local o=(m=="me"and LocalPlayer())or kouka.utils.FindPlayer(m)if o then f[#f+1]="["..o:Name().."]"else f[#f+1]=tostring(m)end else f[#f+1]=tostring(m)end end end end local j,k=a.hashMap.GetKeyboardFocusPanelPos(e)draw.SimpleText(table.concat({d.cmd.name..((i~=nil and" ("..i..")")or""),(#f~=0 and table.concat(f," | "))or nil},": "),"Trebuchet24",j+4,k+42,kouka.colors.orange,TEXT_ALIGN_LEFT,TEXT_ALIGN_TOP)if h~=nil then draw.SimpleText("Arguments: "..table.concat(h,", "),"Trebuchet24",j+4,k+67,kouka.colors.orange,TEXT_ALIGN_LEFT,TEXT_ALIGN_TOP)end end)a:Hook("ChatTextChanged",function(d)local e,f,g=a.hashMap.FindChatCommand(d)if e then a.hashMap.chatHints={cmd=e,args=e.args and kouka.commands.Parse(f,#e.args)}else a.hashMap.chatHints=nil end end)