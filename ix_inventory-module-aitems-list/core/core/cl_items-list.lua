-- <|> Hello, fucker | Taxin2012 and PURP was here | Mysterious Zone Project | mzrp.ru <|>
local a=ix.plugin.list["inventory-module-aitems-list"]net.Receive("ItemsListSharedFunc",function(d,e)local f=net.ReadUInt(32)local g=net.ReadString()local h=net.ReadBool()local i=ix.item.instances[f]if i and i[g]then i[g](i,h)end end)local function b(d)local e=d:GetNetVar("extendedRender",{})local f=ix.item.list d.tableRender={}for g,h in next,e do local i=f[h.uid]local j=i and i.actorsRenderTable if j then d.tableRender[g]=table.Copy(j)if g=="slotHelmet"then local k=e["slotMask"]and e["slotMask"].uid or nil if k then local l=f[k]if l and l.actorsTier==2 then d.tableRender[g].size=d.tableRender[g].size+.05 end end end d.tableRender[g].skin=h.skin d.tableRender[g].uid=h.uid end end end function ix.itemsList.ExtendedRenderItem(d,e)e=e or d local f=e.tableRender or{}local g=e:GetModel()d.extendedRender=d.extendedRender or{}local h=CurTime()if(_nextUpdateRender or 0)<=h then _nextUpdateRender=h+1.5 if e and IsValid(e)then b(e)end for i,j in player.Iterator()do b(j)end end for i,j in next,f do if not IsValid(d.extendedRender[i])then d.extendedRender[i]=ClientsideModel(j.model,RENDERGROUP_TRANSLUCENT)d.extendedRender[i]:SetNoDraw(true)else d.extendedRender[i]:SetModel(j.model)end if IsValid(d.extendedRender[i])==false then return end local k=d:LookupBone(j.bone)if not k then return end local l=d:GetBoneMatrix(k)if not l then return end local m=l:GetTranslation()local n=l:GetAngles()d.extendedRender[i]:SetModelScale((j.size or 1),0)local o=j.specialRender if o and o[g]then j=o[g]end n:RotateAroundAxis(n:Right(),j.angles.p)n:RotateAroundAxis(n:Forward(),j.angles.y)n:RotateAroundAxis(n:Up(),j.angles.r)m=m+(n:Forward()*j.position.x)+(n:Right()*j.position.y)+(n:Up()*j.position.z)d.extendedRender[i]:SetSkin(j.skin or 0)d.extendedRender[i]:SetPos(m)d.extendedRender[i]:SetAngles(n)d.extendedRender[i]:SetRenderOrigin(m)d.extendedRender[i]:SetRenderAngles(n)d.extendedRender[i]:SetupBones()d.extendedRender[i]:DrawModel()d.extendedRender[i]:SetRenderOrigin()d.extendedRender[i]:SetRenderAngles()end end local c=0 hook.Add("PostPlayerDraw",a.uniqueID.."PostPlayerDraw",function(d)ix.itemsList.ExtendedRenderItem(d)end)