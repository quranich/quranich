-- <|> Hello, fucker | Taxin2012 and PURP was here | Mysterious Zone Project | mzrp.ru <|>
local ix=ix local Material=Material local AccessorFunc=AccessorFunc local a=math.max local b=math.Round local tonumber=tonumber local IsValid=IsValid local ScrW=ScrW local ScrH=ScrH local surface=surface local c=vgui.Create local d=net.Start local e=net.WriteUInt local f=net.SendToServer local draw=draw local Color=Color local g=draw.RoundedBox local pairs=pairs local LocalPlayer=LocalPlayer local h=surface.PlaySound local i=net.WriteString local j=net.WriteTable local ipairs=ipairs local k=surface.SetMaterial local l=surface.SetDrawColor local DisableClipping=DisableClipping local ColorAlpha=ColorAlpha local m=vgui.Register local PLUGIN=PLUGIN local n=ix.util.GetMaterial("purp/stalker/ui/ui_actor_menu.png")local o=Material('purp/stalker/ui/ui_actor_widescreen_sidepanels.png')local p=ix.util.GetMaterial("purp/stalker/ui/inventory/tradeshell.png","smooth")local q=ix.util.GetMaterial("purp/stalker/ui/inventory/safe_frame.png","smooth")local r=ix.util.GetMaterial("purp/stalker/ui/inventory/safe_out.png")local s=ix.util.GetMaterial("purp/stalker/ui/inventory/safe_in.png")local t=ix.util.GetMaterial("pp/blurscreen")DEFINE_BASECLASS("Panel")PANEL={}AccessorFunc(PANEL,"fadeTime","FadeTime",FORCE_NUMBER)AccessorFunc(PANEL,"frameMargin","FrameMargin",FORCE_NUMBER)AccessorFunc(PANEL,"storageID","StorageID",FORCE_NUMBER)local function u(v,w)v.money=a(b(tonumber(w)or 0),0)end function PANEL:Init()local v=LocalPlayer()local w=v:GetCharacter()local x=ix.gui.openedStorage if IsValid(x)then x:Close()end ix.gui.openedStorage=self local y,z=ScrW(),ScrH()self.modifyWidth,self.modifyHeight=y/1920,z/1080 self:SetSize(self.modifyWidth*572,self.modifyHeight*1024)self:AlignLeft(self.modifyWidth*33)self:CenterVertical()self:MakePopup()self.scrollPanelInventory=self:Add("DScrollPanel")self.scrollPanelInventory:SetPos(self.modifyWidth*45,self.modifyHeight*166)self.scrollPanelInventory:SetSize(self.modifyWidth*479,self.modifyHeight*748)self.scrollPanelInventory:GetCanvas():DockPadding(0,0,0,0)local A=self.scrollPanelInventory:GetVBar()A:SetWide(self.modifyWidth*11)A.btnGrip.Paint=function(C,D,E)g(0,0,0,D,E,Color(77,77,77))end local B=self.modifyWidth*50 self.storageInventory=c("ixInventory",self.scrollPanelInventory)self.storageInventory:SetDraggable(false)self.storageInventory:SetSizable(false)self.storageInventory:SetTitle(nil)self.storageInventory:DockPadding(0,0,0,0)self.storageInventory:SetIconSize(B)self.storageInventory.Paint=function()end self.entryMoney=self:Add("ixTextEntry")self.entryMoney:SetFont("ui.Bahnschrift-s10")self.entryMoney:SetPos(self.modifyWidth*431,self.modifyHeight*70)self.entryMoney:SetSize(self.modifyWidth*98,self.modifyHeight*45)self.entryMoney:SetNumeric(true)self.entryMoney:SetValue("0")self.entryMoney:SetVisible(false)self.entryMoney.OnTransfer=function(C,D,E)net.Start(E and"ixStorageMoneyTake"or"ixStorageMoneyGive")net.WriteUInt(self.storageID,32)net.WriteUInt(D,32)net.SendToServer()end self.transferCharacter=self:Add("DButton")self.transferCharacter:SetText("")self.transferCharacter:SetPos(self.modifyWidth*385,self.modifyHeight*70)self.transferCharacter:SetSize(self.modifyWidth*45,self.modifyHeight*45)self.transferCharacter:SetVisible(false)self.transferCharacter.Paint=function(C,D,E)local F,G=32,32 k(r)l(C:IsHovered()and Color(200,200,200)or color_white)surface.DrawTexturedRect(D*.5-F*.5,E*.5-G*.5,F,G)end self.transferCharacter.DoClick=function()local C=math.max(0,math.Round(tonumber(self.entryMoney:GetValue())or 0))self.entryMoney:SetValue("0")if(C!=0)then self.entryMoney:OnTransfer(C,true)end end self.transferStorage=self:Add("DButton")self.transferStorage:SetText("")self.transferStorage:SetPos(self.modifyWidth*340,self.modifyHeight*70)self.transferStorage:SetSize(self.modifyWidth*45,self.modifyHeight*45)self.transferStorage:SetVisible(false)self.transferStorage.Paint=function(C,D,E)local F,G=32,32 k(s)l(C:IsHovered()and Color(200,200,200)or color_white)surface.DrawTexturedRect(D*.5-F*.5,E*.5-G*.5,F,G)end self.transferStorage.DoClick=function()local C=math.max(0,math.Round(tonumber(self.entryMoney:GetValue())or 0))self.entryMoney:SetValue("0")if(C!=0)then self.entryMoney:OnTransfer(C,false)end end self.moneyLabel=self:Add("DLabel")self.moneyLabel:SetPos(self.modifyWidth*47,self.modifyHeight*70)self.moneyLabel:SetSize(self.modifyWidth*320,self.modifyHeight*45)self.moneyLabel:SetFont("ui.Bahnschrift-s18")self.moneyLabel:SetTextColor(Color(174,174,174))self.moneyLabel:SetContentAlignment(4)self.moneyLabel:SetTextInset(self.modifyWidth*10,0)self.moneyLabel:SetText("")ix.gui.stalkerInventory=c("inventory_stalker.mainframe")ix.gui.stalkerInventory.OnKeyCodeReleased=function(C,D)local E=ix.controlManager.GetKey("inventory")if D==E then C:Close()end end ix.gui.stalkerInventory.OnClose=function(C)self:Close()end end function PANEL:OnChildAdded(v)v:SetPaintedManually(true)end function PANEL:SetStorageInventory(v)local w=self.modifyWidth*50 if IsValid(ix.gui.inv1)then w=ix.gui.inv1:GetIconSize()end self.storageInventory:SetIconSize(w)self.storageInventory:SetInventory(v)for z=1,self.storageInventory.gridW do for A=1,self.storageInventory.gridH do self.storageInventory.slots[z][A].Think=function(B)B:SetZPos(-999)end end end local x=LocalPlayer()local y=self.storageInventory.panels for z,A in pairs(y)do if IsValid(A.Icon)then A.Icon:SetVisible(false)end A.OnDrop=function(B,C,D,E,F,G)local H=B.itemTable if(!H or!C)then return end if(!IsValid(D))then local I=B.inventoryID if(I)then end elseif(D:IsAllEmpty(F,G,H.width,H.height,B))then local I,J=B.gridX,B.gridY if(I!=F or J!=G or B.inventoryID!=D.invID)then B:Move(F,G,D)end elseif(D.combineItem)then local I=D.combineItem local J=I.invID if(J)then I.player=LocalPlayer()if(I.functions.combine.sound)then h(I.functions.combine.sound)end d("ixInventoryAction")i("combine")e(I.id,32)e(J,32)j({H.id})f()I.player=nil end end end end ix.gui["inv"..v:GetID()]=self.storageInventory end function PANEL:Close(v)if not v then d("ixStorageClose")f()end local w=self:GetChildren()for x,y in ipairs(w)do if y.Remove then y:Remove()end end if IsValid(ix.gui.stalkerInventory)then ix.gui.stalkerInventory:Remove()end self:Remove()end function PANEL:Paint(v,w)local x,y=self:LocalToScreen(0,0)local z,A=v,w x,y=x,y+self.modifyHeight*34 z,A=z,A-self.modifyHeight*34 surface.SetMaterial(t)surface.SetDrawColor(255,255,255,255)local B,C=ScrW(),ScrH()local D,E=x/B,y/C local F,G=(x+z)/B,(y+A)/C for I=-0.2,1,0.2 do t:SetFloat("$blur",I*5)t:Recompute()render.UpdateScreenEffectTexture()surface.DrawTexturedRectUV(0,self.modifyHeight*34,z,A,D,E,F,G)end k(q)l(color_white)surface.DrawTexturedRect(0,0,v,w)local H=self:GetChildren()for I,J in ipairs(H)do J:PaintManual()end end function PANEL:SetLocalMoney(v)if IsValid(ix.gui.stalkerInventory)and IsValid(ix.gui.stalkerInventoryBase)and IsValid(ix.gui.stalkerInventoryBase.labelCharMoney)then ix.gui.stalkerInventoryBase.labelCharMoney:SetText(string.Comma(ix.currency.Get(v)))end end function PANEL:SetStorageMoney(v)self.moneyLabel:SetText(string.Comma(ix.currency.Get(v)))if self.entryMoney:IsVisible()==false then self.entryMoney:SetVisible(true)self.transferCharacter:SetVisible(true)self.transferStorage:SetVisible(true)end end function PANEL:SetStorageID(v)self.storageID=v end function PANEL:SetLocalInventory(v)end function PANEL:SetStorageTitle(v)end m("ixStorageView",PANEL,"EditablePanel")if IsValid(ix.gui.openedStorage)then ix.gui.openedStorage:Close()end