-- <|> Hello, fucker | Taxin2012 and PURP was here | Mysterious Zone Project | mzrp.ru <|>
local a={}surface.CreateFont("font.panel",{font="GothamPro",extended=true,size=ScreenScale(7),weight=500,})surface.CreateFont("font.panel.medium",{font="GothamPro",extended=true,size=ScreenScale(9),weight=500,})local b,c=ScrW()*0.5,ScrH()*0.5 function a:Init()self.cart={}self.temp_ships={}self.desc,self.cprice,self.vprice="","",""local function e(q,r,s,t,u,v,w)local x=math.cos(math.rad(u))local y=math.sin(math.rad(u))local z=w*y-v*x local A=w*x+v*y surface.DrawTexturedRectRotated(q+z,r+A,s,t,u)end function self:AddCat(q)local r=self.cats:Add("DButton")r:Dock(TOP)r:DockMargin(5,5,5,0)r.rotation=0 r.id=q r:SetTall(math.floor(c*0.046))r:SetText(q)r:SetFont("font.panel")r.Paint=function(s,t,u)if self.activate==s then s.rotation=Lerp(FrameTime()*12,s.rotation,90)else s.rotation=Lerp(FrameTime()*12,s.rotation,0)end surface.SetDrawColor(0,0,0,150)surface.DrawRect(0,0,t,u)if self.activate==s then surface.SetDrawColor(0,168,255,255)s:SetTextColor(Color(0,168,255,255))else s:SetTextColor(color_white)surface.SetDrawColor(color_white)end end r.DoClick=function(s)if self.activate~=nil then for t,u in next,self.temp_ships do u:SlideUp(0.1)self.temp_ships={}end end if self.activate==s then self.activate=nil return end self.activate=s for t,u in next,self.itemData.cats[s.id]do local v=(t=="money"and{name="Игровая валюта",model=ix.currency.model})or ix.item.list[t]if v==nil then continue end local w=v.model or"models/error.mdl"util.PrecacheModel(w)local x=self.ships:Add("DButton")x:Dock(TOP)x:DockMargin(10,5,10,0)x.rotation=0 x.id=t x.cprice=AutoDonate.GetExchangePrice(u,false)x.vprice=u x.desc=v.name x.mdl=w x:SetTall(math.floor(c*0.046))x:SetText(v.name)x:SetFont("font.panel")x.Paint=function(y,z,A)surface.SetDrawColor(0,0,0,150)surface.DrawRect(0,0,z,A)if self.ship_activate==y then y:SetTextColor(Color(0,168,255,255))else y:SetTextColor(Color(255,255,255,255))end end x.DoClick=function(y)self.ship_activate=y self.desc,self.vprice,self.cprice=y.desc,y.vprice,AutoDonate.GetExchangePrice(y.vprice,false)self.preview_donate_mdl:SetModel(y.mdl)self.preview_donate_mdl:SetLookAng(Angle(0,0,0))self.preview_donate_mdl:SetCamPos(Vector(-100,0,5))self.preview_donate_mdl:SetFOV(self.preview_donate_mdl.defFov)if IsValid(self.add_to_cart)==false then self.add_to_cart=self.preview:Add("DButton")self.add_to_cart:Dock(BOTTOM)self.add_to_cart:SetTall(math.floor(c*0.056))self.add_to_cart:SetText("ДОБАВИТЬ В КОРЗИНУ")self.add_to_cart:SetFont("font.panel")self.add_to_cart.DoClick=function()Derma_StringRequest("Выбор кол-ва","Кол-во:",1,function(z)local A=self.ship_activate local B=tonumber(z)or 1 if B<1 or B>=4294967295 then return end local C=A.vprice*B self.cart[A.id]={name=A:GetText(),coinPrice=AutoDonate.GetExchangePrice(C,false),price=C,count=B}end)end self.add_to_cart.Paint=function(z,A,B)surface.SetDrawColor(0,168,255,255)surface.DrawOutlinedRect(0,0,A,B)if!z:IsHovered()then surface.SetDrawColor(0,0,0,150)else surface.SetDrawColor(0,168,255,150)end surface.DrawRect(0,0,A,B)end end end x:SlideDown(0.1)self.temp_ships[#self.temp_ships+1]=x end end r:SlideDown(0.1)end local f=vgui.Create("DPanel")f:SetSize(b,c)f:Center()f:MakePopup()f.Paint=function(q,r,s)ix.util.DrawBlur(q,2)surface.SetDrawColor(0,0,0,70)surface.DrawRect(0,0,r,s)surface.SetDrawColor(0,168,255,255)surface.DrawOutlinedRect(0,0,r,s)end local g=f:Add("Panel")g:Dock(LEFT)g:SetWide(math.floor(b*0.450))g.Paint=function(q,r,s)surface.SetDrawColor(0,168,255,255)surface.SetTexture(surface.GetTextureID("vgui/gradient-u"))surface.DrawTexturedRect(0,0,r,s)surface.SetDrawColor(0,168,255,255)surface.DrawOutlinedRect(0,0,r,s)end self.preview=f:Add("DPanel")self.preview:Dock(TOP)self.preview:SetTall(math.floor(c*0.5))self.preview.Paint=function(q,r,s)surface.SetDrawColor(0,168,255,255)surface.DrawOutlinedRect(0,0,r,s)end self.preview_donate_mdl=self.preview:Add("DAdjustableModelPanel")self.preview_donate_mdl:Dock(FILL)self.preview_donate_mdl:SetFOV(45)self.preview_donate_mdl:SetAmbientLight(Color(255,255,255))self.preview_donate_mdl:SetDirectionalLight(BOX_TOP,Color(255,255,255))self.preview_donate_mdl:SetAnimated(true)self.preview_donate_mdl.defFov=45 self.preview_donate_mdl.targetFov=self.preview_donate_mdl.defFov self.preview_donate_mdl.scrollLerp=0 function self.preview_donate_mdl:CenterModel()if not IsValid(self.Entity)then self.baseCamPos=Vector(0,0,0)return end local q,r=self.Entity:GetModelBounds()if not q or not r then return end self.modelCenter=(q+r)*0.5 local s=(r-q):Length()*0.5 self.initialDistance=s*3 self.baseCamPos=self.modelCenter+Vector(self.initialDistance,self.initialDistance,s*0.5)self:SetLookAt(self.modelCenter)self:SetCamPos(self.baseCamPos)self:SetFOV(self.defFov)end local h=self.preview_donate_mdl.SetModel function self.preview_donate_mdl:SetModel(q)h(self,q)self:CenterModel()end function self.preview_donate_mdl:LayoutEntity()end self.preview_donate_mdl.origOnMousePressed=self.preview_donate_mdl.OnMousePressed function self.preview_donate_mdl:OnMousePressed(q)if not IsValid(self.Entity)then return end self:origOnMousePressed(q)end local i=f:Add("DPanel")i:Dock(BOTTOM)i:SetTall(math.floor(c*0.5))i.Paint=function(q,r,s)surface.SetDrawColor(0,168,255,255)surface.DrawOutlinedRect(0,0,r,s)end local j=i:Add("DButton")j:Dock(BOTTOM)j:SetTall(math.floor(c*0.056))j:SetText("ВЫХОД")j:SetFont("font.panel")j.DoClick=function()Derma_Query("Корзина набора будет очищена.\nВы точно хотите выйти?","Выход из составления набора","Да",function()self.ships:SlideUp(0.3)self.cats:SlideUp(0.3)f:SlideUp(0.5)self.temp_ships={}if IsValid(self.add_to_cart)then self.add_to_cart:Remove()end if IsValid(AutoDonate.donate_pnl)then AutoDonate.donate_pnl:Remove()end vgui.Create("Donate_G")end,"Нет")end j.Paint=function(q,r,s)surface.SetDrawColor(0,168,255,255)surface.DrawOutlinedRect(0,0,r,s)if!q:IsHovered()then surface.SetDrawColor(0,0,0,150)else surface.SetDrawColor(0,168,255,150)end surface.DrawRect(0,0,r,s)end local k=i:Add("DPanel")k:Dock(LEFT)k:SetWide(math.floor(b*0.344))k.Paint=function(q,r,s)surface.SetDrawColor(0,168,255,255)surface.DrawOutlinedRect(0,0,r,s)end local l=i:Add("DPanel")l:Dock(LEFT)l:SetWide(math.floor(b*0.344))l.Paint=function(q,r,s)surface.SetDrawColor(0,168,255,255)surface.DrawOutlinedRect(0,0,r,s)end local m=k:Add("DLabel")m:Dock(TOP)m:SetFont("font.panel")m:SetText("")m.Think=function()if self.vprice~=""then m:SetText("В Игровой Валюте: "..self.vprice)end end m:SetTall(math.floor(c*0.056))m:SetTextInset(math.floor(b*0.014),0)m:SetContentAlignment(1)local n=k:Add("DLabel")n:Dock(TOP)n:SetFont("font.panel")n:SetText("")n.Think=function()if self.cprice~=""then n:SetText("В MZCoin: "..self.cprice)end end n:SetTall(math.floor(c*0.056))n:SetTextInset(math.floor(b*0.014),0)n:SetContentAlignment(1)local o=l:Add("DLabel")o:Dock(TOP)o:SetTall(math.floor(c*0.056))o:SetTextInset(math.floor(b*0.014),0)o:SetContentAlignment(1)o.Think=function()o:SetText(self.desc)end o:SetWrap(true)o:SetFont("font.panel")self.cats=g:Add("DScrollPanel")self.cats:Dock(TOP)self.cats:SetTall(math.floor(c*0.48))self.cats.Paint=function(q,r,s)end if IsValid(self.ships)then self.ships:Remove()end self.ships=g:Add("DScrollPanel")self.ships:Dock(BOTTOM)self.ships:SetTall(math.floor(c*0.48))self.ships.Paint=function(q,r,s)end local p=f:Add("DButton")p:SetSize(math.floor(b*0.067),math.floor(c*0.119))p:SetPos(b*0.935,ScrH()*0)p:SetText("")p:SetFont("font.panel")p.DoClick=function()f:SlideUp(0.3)self.temp_ships={}if IsValid(AutoDonate.donate_pnl)then AutoDonate.donate_pnl:Remove()end if IsValid(AutoDonate.cartFrame)then AutoDonate.cartFrame:Remove()end if IsValid(self.add_to_cart)then self.add_to_cart:Remove()end AutoDonate.cartFrame=vgui.Create("CartFrame")AutoDonate.cartFrame.itemID=self.itemID AutoDonate.cartFrame.itemDiscount=self.itemDiscount AutoDonate.cartFrame.temp_ships=self.temp_ships AutoDonate.cartFrame.itemUseBonusCredits=self.itemUseBonusCredits AutoDonate.cartFrame:Setup(self.cart)end p.Paint=function(q,r,s)surface.SetDrawColor(0,168,255,255)surface.DrawOutlinedRect(0,0,r,s)surface.SetMaterial(Material("nsrp/cart_2.png","smooth"))if q:IsHovered()then surface.SetDrawColor(0,168,255,255)else surface.SetDrawColor(color_white)end surface.DrawTexturedRect(0,0,r,s)end f:SlideDown(0.5)end function a:Setup(e)self.itemID=e local f=AutoDonate.cache[e]self.itemData=f.data self.itemDiscount=f.discount self.itemUseBonusCredits=f.use_bonus_credits for g,h in next,self.itemData.cats do self:AddCat(g)end end vgui.Register("KitFrame",a,"Panel")local d={}function d:Init()function self:AskCount(i,j,k,l,m)Derma_StringRequest("Выбор кол-ва","Кол-во:",m,function(n)i:SlideUp(0.1)local o=tonumber(n)or 1 if o<1 or o>=4294967295 then return end local p=(l/m)*o local q=AutoDonate.GetExchangePrice(p,false)self.cart[j].count=o self.cart[j].price=p self.cart[j].coinPrice=q self:DrawShipmentOnCart(j,k,p,q,o)local r=0 for s,t in next,self.cart do r=r+t.price end self.bg_title:SetText("КОРЗИНА | Итого: "..AutoDonate.GetDiscountPrice(AutoDonate.GetExchangePrice(r,false),self.itemDiscount).." MZC")end)end function self:DrawShipmentOnCart(i,j,k,l,m)local n=self.shipmentlist:Add("DPanel")n:Dock(TOP)n.d_uid=i n.Paint=function(r,s,t)surface.SetDrawColor(0,168,255,255)surface.DrawOutlinedRect(0,0,s,t)surface.SetDrawColor(0,168,255,150)surface.DrawRect(0,0,s,t)end local o=n:Add("DLabel")o:SetText("["..m.."] "..j)o:SetFont("font.panel")o:Dock(LEFT)o:SetTextInset(math.floor(b*0.006),0)o:SizeToContents()o:SetMouseInputEnabled(true)o.DoClick=function()self:AskCount(n,i,j,k,m)end o.DoRightClick=o.DoClick local p=n:Add("DLabel")p:SetText(string.format(" | Стоимость: %s ИВ - %s MZC",k,l))p:Dock(LEFT)p:SetFont("font.panel")p:SetTextInset(0,0)p:SizeToContents()p:SetMouseInputEnabled(true)p.DoClick=function()self:AskCount(n,i,j,k,m)end p.DoRightClick=p.DoClick o.Paint=function(r)local s=((o:IsHovered()or p:IsHovered())and kouka.colors.orange)or kouka.colors.white o:SetTextColor(s)p:SetTextColor(s)end p.Paint=o.Paint local q=n:Add("DButton")q:SetText("X")q:Dock(RIGHT)q:DockMargin(0,0,1,0)q:SetWide(n:GetWide()/2)q.DoClick=function(r)self.cart[i]=nil r:GetParent():SlideUp(0.1)if table.IsEmpty(self.cart)then self.purchaseBtn:Remove()end end q.Paint=function(r,s,t)if r:IsHovered()then surface.SetDrawColor(255,0,0,255)surface.DrawOutlinedRect(0,0,s,t)surface.SetDrawColor(255,0,0,150)surface.DrawRect(0,0,s,t)end end n:SlideDown(0.1)end local e=vgui.Create("DPanel")e:SetSize(b,c)e:Center()e:MakePopup()e.Paint=function(i,j,k)ix.util.DrawBlur(i,2)surface.SetDrawColor(0,0,0,70)surface.DrawRect(0,0,j,k)surface.SetDrawColor(0,168,255,255)surface.DrawOutlinedRect(0,0,j,k)end self.shipmentlist=e:Add("DScrollPanel")self.shipmentlist:Dock(FILL)self.bg_title=e:Add("DLabel")self.bg_title:Dock(TOP)self.bg_title:SetFont("font.panel.medium")self.bg_title:SetText("КОРЗИНА")self.bg_title:SetTall(30)self.bg_title:SetContentAlignment(5)self.bg_title.Paint=function(i,j,k)surface.SetDrawColor(0,0,0,150)surface.DrawRect(0,0,j,k)surface.SetDrawColor(0,168,255,255)surface.DrawOutlinedRect(0,0,j,k)end local f=e:Add("DButton")f:Dock(BOTTOM)f:SetTall(math.floor(c*0.056))f:SetText("ВЫХОД")f:SetFont("font.panel")f.DoClick=function(i)Derma_Query("Корзина набора будет очищена.\nВы точно хотите выйти?","Выход из составления набора","Да",function()e:SlideUp(0.5)if IsValid(AutoDonate.donate_pnl)then AutoDonate.donate_pnl:Remove()end vgui.Create("Donate_G")end,"Нет")end f.Paint=function(i,j,k)surface.SetDrawColor(0,168,255,255)surface.DrawOutlinedRect(0,0,j,k)if i:IsHovered()==false then surface.SetDrawColor(0,0,0,150)else surface.SetDrawColor(0,168,255,150)end surface.DrawRect(0,0,j,k)end local g=e:Add("DButton")g:Dock(BOTTOM)g:SetTall(math.floor(c*0.056))g:SetText("ВЕРНУТЬСЯ В МЕНЮ НАБОРОВ")g:SetFont("font.panel")g.DoClick=function()e:SlideUp(0.3)if IsValid(AutoDonate.donate_pnl)then AutoDonate.donate_pnl:Remove()end if IsValid(AutoDonate.kitFrame)then AutoDonate.kitFrame:Remove()end AutoDonate.kitFrame=vgui.Create("KitFrame")AutoDonate.kitFrame:Setup(self.itemID)AutoDonate.kitFrame.cart=self.cart AutoDonate.kitFrame.temp_ships=self.temp_ships end g.Paint=function(i,j,k)surface.SetDrawColor(0,168,255,255)surface.DrawOutlinedRect(0,0,j,k)if i:IsHovered()==false then surface.SetDrawColor(0,0,0,150)else surface.SetDrawColor(0,168,255,150)end surface.DrawRect(0,0,j,k)end local function h(i,j,k,l,m,n)AutoDonate.Cart(i,j,AutoDonate.GetDiscountPrice(AutoDonate.GetExchangePrice(k,false),l),n)m:SlideUp(0.5)if IsValid(AutoDonate.donate_pnl)then AutoDonate.donate_pnl:Remove()end vgui.Create("Donate_G")end self.purchaseBtn=e:Add("DButton")self.purchaseBtn:Dock(BOTTOM)self.purchaseBtn:SetTall(math.floor(c*0.056))self.purchaseBtn:SetText("ДОБАВИТЬ НАБОР В ОБЩУЮ КОРЗИНУ")self.purchaseBtn:SetFont("font.panel")self.purchaseBtn.DoClick=function()Derma_Query("Вы точно хотите завершить выбор?","Завершение составления набора","Да",function()local i={}local j=0 for k,l in next,self.cart do i[k]=l.count j=j+l.price end if AutoDonate.bonusCredits>0 and self.itemUseBonusCredits then Derma_Query("Какую валюту использовать?","Выбор валюты:","MZC",function()h(self.itemID,i,j,self.itemDiscount,e)end,"TC",function()h(self.itemID,i,j,self.itemDiscount,e,true)end)else h(self.itemID,i,j,self.itemDiscount,e)end end,"Нет")end self.purchaseBtn.Paint=function(i,j,k)surface.SetDrawColor(0,168,255,255)surface.DrawOutlinedRect(0,0,j,k)if i:IsHovered()==false then surface.SetDrawColor(0,0,0,150)else surface.SetDrawColor(0,168,255,150)end surface.DrawRect(0,0,j,k)end e:SlideDown(0.5)end function d:Setup(e)self.cart=e if table.IsEmpty(e)then self.purchaseBtn:Remove()else local f=0 for g,h in next,e do f=f+h.price self:DrawShipmentOnCart(g,h.name,h.price,h.coinPrice,h.count)end self.bg_title:SetText("КОРЗИНА | Итого: "..AutoDonate.GetDiscountPrice(AutoDonate.GetExchangePrice(f,false),self.itemDiscount).." MZC")end end vgui.Register("CartFrame",d,"Panel")