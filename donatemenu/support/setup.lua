-- <|> Hello, fucker | Taxin2012 and PURP was here | Mysterious Zone Project | mzrp.ru <|>
surface.CreateFont("font.donate.black.big",{font="Gotham Pro Black",size=ScreenScale(10),weight=500,antialias=true,extended=true})surface.CreateFont("font.donate.black.medium",{font="Gotham Pro Black",size=ScreenScale(8),weight=500,antialias=true,extended=true})surface.CreateFont("font.donate.black.small",{font="Gotham Pro Black",size=ScreenScale(6),weight=500,antialias=true,extended=true})surface.CreateFont("font.donate.medium",{font="Gotham Pro",size=ScreenScale(6),weight=500,antialias=true,extended=true})surface.CreateFont("font.donate.transaction.medium",{font="Gotham Pro",size=ScreenScale(8),weight=500,antialias=true,extended=true})surface.CreateFont("font.donate.transaction",{font="Gotham Pro",size=ScreenScale(20),weight=0,antialias=true,extended=true})AutoDonate.animationTime=0.1 AutoDonate.x,AutoDonate.y="x","y"AutoDonate.registeredCats={}PANEL={}function AutoDonate.multiplyResolution(a,b)if a=="x"then return math.floor(ScrW()*b)elseif a=="y"then return math.floor(ScrH()*b)end end function AutoDonate.getItemSize()return AutoDonate.multiplyResolution(AutoDonate.x,0.2305),AutoDonate.multiplyResolution(AutoDonate.y,0.325)end function AutoDonate.main_create_dpanel(self)self.mainDpanel=self:Add("DPanel")self.mainDpanel:Dock(FILL)self.mainDpanel:DockMargin(0,0,0,0)self.mainDpanel.posX,self.mainDpanel.posY=ScrW()*0,ScrH()*-1 self.mainDpanel.Paint=function()end self.mainDpanel:CreateAnimation(AutoDonate.animationTime*3,{target={posY=ScrH()*0},easing="outQuint",Think=function(a,b)self.mainDpanel:SetPos(self.mainDpanel.posX,self.mainDpanel.posY)end,})end function AutoDonate.main_shipcat_setup(self,a,b,c,...)args={...}self.mainDpanel.toppanel=self.mainDpanel:Add("DPanel")self.mainDpanel.toppanel:Dock(TOP)self.mainDpanel.toppanel:DockMargin(25,25,310,0)self.mainDpanel.toppanel.Paint=function(d,e,f)end self.mainDpanel.label=self.mainDpanel.toppanel:Add("DLabel")self.mainDpanel.label:SetFont("font.donate.black.big")self.mainDpanel.label:SetText(a)self.mainDpanel.label:SizeToContents()self.mainDpanel.label:SetTextInset(0,AutoDonate.multiplyResolution(AutoDonate.y,-0.005))if c~=nil then local d=kouka.GetAPIUser()if d~=nil then for e,f in SortedPairsByMemberValue(AutoDonate.cache,"price")do if f.active and f.category==b then local g=AutoDonate.types[f.type].vguiName if g~=nil then c:Add(g):InitBasic(f.category,e,f.name,f.description,(f.icon==""and"mzmenu/donate/icons/currency/case.png")or f.icon,f.price,f.limit)end end end end end end function AutoDonate.addCategory(a,b)if b=="sponsorpacks"then return end local c=AutoDonate.catts:Add("DButton")c:Dock(TOP)c:SetText(a)c.ui=b c.name=a c:SetTall(AutoDonate.multiplyResolution(AutoDonate.y,0.07))c:SetFont("font.donate.medium")c:DockMargin(0,5,0,0)c.Paint=function(d,e,f)surface.SetMaterial(Material("mzmenu/donate/cat_btn.png"))surface.SetDrawColor(255,255,255,5)if AutoDonate.activeCat~=d and d:IsHovered()then surface.SetDrawColor(255,255,255,40)elseif AutoDonate.activeCat==d then surface.SetDrawColor(255,255,255,75)end surface.DrawTexturedRect(0,0,e,f)end c.DoClick=function(d)AutoDonate.openCategory(d)end return c end function AutoDonate.openCategory(a)if AutoDonate.activeCat~=nil then AutoDonate.activeCat:SetEnabled(true)end a:SetEnabled(false)AutoDonate.activeCat=a LocalPlayer():EmitSound("Helix.Whoosh")LocalPlayer():EmitSound("weapons/ar2/ar2_empty.wav",75,pitch or 150,0.25)if IsValid(AutoDonate.workpanel)==false then AutoDonate.workpanel=AutoDonate.workspace:Add("autodonate_"..a.ui)AutoDonate.workpanel:Dock(FILL)AutoDonate.workpanel.posX,AutoDonate.workpanel.posY=AutoDonate.workpanel:GetPos()else AutoDonate.workpanel:CreateAnimation(AutoDonate.animationTime,{target={posY=ScrH()*1},easing="outQuint",Think=function(b,c)AutoDonate.workpanel:SetPos(AutoDonate.workpanel.posX,AutoDonate.workpanel.posY)end,OnComplete=function()AutoDonate.workpanel:Remove()AutoDonate.workpanel=AutoDonate.workspace:Add("autodonate_"..a.ui)AutoDonate.workpanel:Dock(FILL)AutoDonate.workpanel.posX,AutoDonate.workpanel.posY=AutoDonate.workpanel:GetPos()end})end end function AutoDonate.drawDownBtns()local a=AutoDonate.catts:Add("DButton")a:Dock(BOTTOM)a:SetText("Выход")a:SetTall(AutoDonate.multiplyResolution(AutoDonate.y,0.07))a:SetFont("font.donate.medium")a:DockMargin(0,0,0,10)a.Paint=function(d,e,f)surface.SetMaterial(Material("mzmenu/donate/cat_btn.png"))surface.SetDrawColor(255,255,255,5)if d:IsHovered()then surface.SetDrawColor(255,255,255,40)end surface.DrawTexturedRect(0,0,e,f)end a.DoClick=function(d)LocalPlayer():EmitSound("Helix.Whoosh")AutoDonate.donate_pnl:CreateAnimation(AutoDonate.animationTime*5,{target={posX=ScrW()*1},easing="outQuint",Think=function(e,f)AutoDonate.donate_pnl:SetPos(AutoDonate.donate_pnl.posX,AutoDonate.donate_pnl.posY)end,OnComplete=function()AutoDonate.donate_pnl:Remove()end})end local b=AutoDonate.catts:Add("DButton")b:Dock(BOTTOM)b:SetText("Корзина")b.ui="cart"b:SetTall(AutoDonate.multiplyResolution(AutoDonate.y,0.07))b:SetFont("font.donate.medium")b:DockMargin(0,0,0,10)b.Paint=function(d,e,f)surface.SetMaterial(Material("mzmenu/donate/cat_btn.png"))surface.SetDrawColor(255,255,255,5)if AutoDonate.activeCat~=d and d:IsHovered()then surface.SetDrawColor(255,255,255,40)elseif AutoDonate.activeCat==d then surface.SetDrawColor(255,255,255,75)end surface.DrawTexturedRect(0,0,e,f)surface.SetMaterial(Material("mzmenu/donate/basket.png"))surface.SetDrawColor(255,255,255,255)surface.DrawTexturedRect((e*0.11)+d:GetTextSize(),f*0.26,e*0.0835,f*0.428)end b.DoClick=function(d)AutoDonate.openCategory(d)end local c=AutoDonate.catts:Add("DButton")c:Dock(BOTTOM)c:SetText("Спонсорские пакеты")c.ui="sponsorpacks"c:SetTall(AutoDonate.multiplyResolution(AutoDonate.y,0.07))c:SetFont("font.donate.medium")c:DockMargin(0,0,0,10)c.Paint=function(d,e,f)surface.SetMaterial(Material("mzmenu/donate/cat_btn.png"))surface.SetDrawColor(255,255,255,5)if AutoDonate.activeCat~=d and d:IsHovered()then surface.SetDrawColor(255,255,255,40)elseif AutoDonate.activeCat==d then surface.SetDrawColor(255,255,255,75)end surface.DrawTexturedRect(0,0,e,f)end c.DoClick=function(d)AutoDonate.openCategory(d)end end