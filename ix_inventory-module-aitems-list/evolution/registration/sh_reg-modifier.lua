-- <|> Hello, fucker | Taxin2012 and PURP was here | Mysterious Zone Project | mzrp.ru <|>
local a=ix.plugin.list["inventory-module-aitems-list"]function ix.itemsList.modifier_listregistration(b,c)local d=b.name local e=string.format("Надеть %s",d)local f=string.format("Снять %s",d)b.functions.Equip={name=e,icon="icon16/arrow_turn_left.png",OnRun=function(g)local h=g.player local i=h:GetCharacter()local j=i:GetEquipmentInventory()local k=j:GetID()g:Transfer(k,nil,nil,h)return false end,OnCanRun=function(g)local h=g.player local i=h:GetCharacter()local j,k,l=i:GetInventory(),i:GetEquipmentInventory()local m=j:GetID()local n=g:GetData("equipmentSlot")local o=g.entity return not IsValid(g.entity)and IsValid(h)and n==nil and m==g.invID and hook.Run("CanTransferItem",g,j,k)~=false end}b.functions.UnEquip={name=f,icon="icon16/arrow_turn_right.png",OnRun=function(g)local h=g.player local i=h:GetCharacter()local j=i:GetInventory()local k=j:GetID()g:Transfer(k,nil,nil,h)return false end,OnCanRun=function(g)local h=g.player local i=h:GetCharacter()local j,k=i:GetInventory(),i:GetEquipmentInventory()local l,m=j:GetID(),k:GetID()local n=g:GetData("equipmentSlot")return not IsValid(g.entity)and IsValid(h)and n~=nil and m==g.invID and hook.Run("CanTransferItem",g,k,j)~=false end}function b:ActionEquipment(g,h,i)local j,k=i:GetInventory(),i:GetEquipmentInventory()local l,m=j:GetID(),k:GetID()if ix.durability then local n=self:GetDurability()if n<=0 then return end end end end if IX_PLUGINS_LOADED and ix.itemsList and ix.itemsList.CoreItemsRegistration then ix.itemsList.CoreItemsRegistration()end