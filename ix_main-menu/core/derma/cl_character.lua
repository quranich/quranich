-- <|> Hello, fucker | Taxin2012 and PURP was here | Mysterious Zone Project | mzrp.ru <|>
local ix=ix local a=surface.GetTextureID local Vector=Vector local Matrix=Matrix local ScrW=ScrW local ScrH=ScrH local b=cam.PushModelMatrix local BaseClass=BaseClass local c=cam.PopModelMatrix local Color=Color local d=surface.SetDrawColor local e=surface.DrawRect local f=vgui.Register local g=vgui.Create local AccessorFunc=AccessorFunc local LocalPlayer=LocalPlayer local DisableClipping=DisableClipping local h=surface.SetMaterial local surface=surface local i=hook.Run local L=L local IsValid=IsValid local j=gui.ActivateGameUI local RunConsoleCommand=RunConsoleCommand local pairs=pairs local k=gui.EnableScreenClicker local l=ix.plugin.list["main-menu"]local m=ix.util.GetMaterial("purp/stalker/ui/video_voroni_crop")local n=ix.util.GetMaterial("purp/stalker/ui/video_water_crop")local o=ix.util.GetMaterial("purp/stalker/ui/ui_actor_main_menu.png")local p=ix.util.GetMaterial("purp/stalker/ui/ui_actor_widescreen_sidepanels.png")local q=ix.util.GetMaterial("purp/stalker/ui/ui_actor_menu.png")local r=ix.util.GetMaterial("purp/stalker/ui/mainmenu/character/background_select.png")local s=ix.util.GetMaterial("purp/stalker/ui/mainmenu/background_main.png")local t=ix.util.GetMaterial("purp/stalker/ui/mainmenu/logo_mz.png")local u=ix.util.GetMaterial("purp/stalker/ui/mainmenu/blick.png")local v=ix.util.GetMaterial("purp/stalker/ui/mainmenu/menu_line.png")local w=a("vgui/gradient-d")local x=2 local y=0.5 local z=Vector(1,1,0.0001)DEFINE_BASECLASS("ixSubpanelParent")local A={}function A:Init()self:SetSize(self:GetParent():GetSize())self:SetPos(0,0)self.childPanels={}self.subpanels={}self.activeSubpanel=""self.currentDimAmount=0 self.currentY=0 self.currentScale=1 self.currentAlpha=255 self.targetDimAmount=255 self.targetScale=0.9 end function A:Dim(D,E)D=D or y self.currentDimAmount=0 self:CreateAnimation(D,{target={currentDimAmount=self.targetDimAmount,currentScale=self.targetScale},easing="outCubic",OnComplete=E})self:OnDim()end function A:Undim(D,E)D=D or y self.currentDimAmount=self.targetDimAmount self:CreateAnimation(D,{target={currentDimAmount=0,currentScale=1},easing="outCubic",OnComplete=E})self:OnUndim()end function A:OnDim()end function A:OnUndim()end function A:Paint(D,E)local F=self.currentDimAmount local G=self.currentScale!=1 local H if(G)then H=Matrix()H:Scale(z*self.currentScale)H:Translate(Vector(ScrW()*0.5-(ScrW()*self.currentScale*0.5),ScrH()*0.5-(ScrH()*self.currentScale*0.5),1))b(H)self.currentMatrix=H end BaseClass.Paint(self,D,E)if(G)then c()self.currentMatrix=nil end if(F>0)then local I=Color(0,0,0,F)d(I)e(0,0,D,E)end end f("ixCharMenuPanel",A,"ixSubpanelParent")A={}function A:Init()local D=self:GetParent()self:GetVBar():SetWide(0)self:GetVBar():SetVisible(false)end local B=Color(200,200,200)function A:Add(D)local E=self:GetParent():GetParent()local F=E.hoveredPanel local G,H=E:GetParent().multiplyWidth,E:GetParent().multiplyHeight local I=45*H local J=g(D,self)J:Dock(TOP)J:SetTall(I)J:SetContentAlignment(5)J:SetFont("ui.Graffiti1CTT-10")J:SetTextColor(B)J.OnCursorEntered=function(K)E.hoveredPanel:HoveredTo(K)end return J end function A:SizeToContents()self:GetCanvas():InvalidateLayout(true)if(self:GetTall()>self:GetCanvas():GetTall())then self:GetCanvas():Dock(BOTTOM)else self:GetCanvas():Dock(NODOCK)end end function A:Paint(D,E)surface.SetDrawColor(Color(255,0,0,10))surface.DrawRect(0,0,D,E)end f("ixCharMenuButtonList.MMStalker",A,"DScrollPanel")A={}AccessorFunc(A,"bUsingCharacter","UsingCharacter",FORCE_BOOL)function A:Init()local D,E,F=LocalPlayer(),self:GetParent(),#(ix.characters or{})>0 local G=E:GetDockPadding()local H=E.multiplyHeight local I,J=ScrW(),ScrH()local K,M=I/1920,J/1080 self.bUsingCharacter=D.GetCharacter and D:GetCharacter()self:DockPadding(G,0,G,0)self.logo=self:Add("EditablePanel")self.logo:SetSize(K*620,M*280)self.logo:SetPos(K*0,M*0)self.logo.Paint=function(R,S,T)local U,V=K*300,M*150 h(t)d(color_white)surface.DrawTexturedRect(S*.5-U*.5,T*.5-V*.5,U,V)end self.listButtons=self:Add("DScrollPanel")self.listButtons:SetPos(K*0,M*280)self.listButtons:SetSize(K*620,M*800)self.listButtons:GetVBar():SetWide(0)self.listButtons:GetVBar():SetVisible(false)self.listButtons.Paint=function(R,S,T)end local N=CurTime()if self.bUsingCharacter then local R=self:CreateButton(self.listButtons,"Продолжить")R.DoClick=function(S)E:Close(true)end end local O=self:CreateButton(self.listButtons,"create")O.DoClick=function(R)local S=i("GetMaxPlayerCharacter",D)or ix.config.Get("maxCharacters",5)if(ix.characters and#ix.characters>=S)then self:GetParent():ShowNotice(3,L("maxCharacters"))return end self:Dim()E.newCharacterPanel:SetActiveSubpanel("faction",0)E.newCharacterPanel:SlideUp(0)end if(F)then self.loadButton=self:CreateButton(self.listButtons,"load")self.loadButton.DoClick=function(R)self:Dim()E.loadCharacterPanel:SlideUp(0)end end if self.bUsingCharacter then local R=self:CreateButton(self.listButtons,"Донат")R.DoClick=function(S)if AutoDonate~=nil then E:Close()AutoDonate.MenuToggle()else gui.OpenURL("https://vk.com/public205802341")end end end local P=self:CreateButton(self.listButtons,"Настройки")P.DoClick=function(R)if IsValid(ix.gui.characterMenu)then ix.gui.characterMenu:Close()ix.gui.optionsPanel=g("stalker.options.mainFrame")end end local Q=self:CreateButton(self.listButtons,"Оригинальное меню")Q.DoClick=function(R)E:Close(true)j()end self.leaveButton=self:CreateButton(self.listButtons,"leave")self.leaveButton.DoClick=function(R)MainmenuDermaQuery(self,"Вы уверены что хотите покинуть сервер?","Покинуть сервер",function()MainmenuDermaQuery(self,"ВЫ ТОЧНО УВЕРЕНЫ ЧТО ХОТИТЕ ПОКИНУТЬ СЕРВЕР?","ДА",function()RunConsoleCommand("disconnect")end,"НЕТ")end,"Остаться")end end function A:CreateButton(D,E)local F,G=ScrW(),ScrH()local H,I=F/1920,G/1080 local J=D:Add("DButton")J:Dock(TOP)J:DockMargin(0,0,0,-I*6)J:SetTall(I*94)J:SetFont("ui.Tahoma-17")J:SetText(L(E))J:SetContentAlignment(5)J:SetTextColor(Color(157,157,157))J.OnCursorEntered=function(K)hoveredTime=CurTime()K:SetTextColor(color_white)end J.OnCursorExited=function(K)K:SetTextColor(Color(157,157,157))end J.Paint=function(K,M,O)if K:IsHovered()then local P=Lerp((CurTime()-hoveredTime)*5,0,255)d(Color(255,255,255,P))h(v)surface.DrawTexturedRect(0,0,M,O)end end return J end function A:UpdateReturnButton()end function A:OnDim()self:SetMouseInputEnabled(false)self:SetKeyboardInputEnabled(false)self:Hide()end function A:OnUndim()self:SetMouseInputEnabled(true)self:SetKeyboardInputEnabled(true)self.bUsingCharacter=LocalPlayer().GetCharacter and LocalPlayer():GetCharacter()self:Show()end function A:OnClose()for D,E in pairs(self:GetChildren())do if(IsValid(E))then E:SetVisible(false)end end end function A:PerformLayout(D,E)local F=self:GetParent()local G=self:GetDockPadding()local H,I=F.multiplyWidth,F.multiplyHeight end function A:Paint(D,E)local F,G=self:GetDockPadding(),self:IsMouseInputEnabled()local H=D-(F*2)local I=ix.gui.characterMenu and ix.gui.characterMenu.optionsPanel if(G==true)and IsValid(I)==false then end BaseClass.Paint(self,D,E)end f("ixCharMenuMain",A,"ixCharMenuPanel")A={}function A:Init()local D,E,F=ix.gui.loading,ix.gui.characterMenu,ix.gui.intro if IsValid(D)then D:Remove()end if IsValid(E)then local Q=E.channel if IsValid(Q)then Q:Stop()end E:Remove()end local G,H,I,J=ScrW(),ScrH(),1024,768 local K=surface.IsWideScreen(G,H)I=K and 1280 or I local M,O=G/I,H/J local P=K and(128*M)or 0 self.multiplyWidth,self.multiplyHeight=M,O self:SetSize(G,H)self:DockPadding(P,0,P,0)self.mainPanel=self:Add("ixCharMenuMain")self.mainPanel:DockPadding(P,0,P,0)self.newCharacterPanel=self:Add("ixCharMenuNew")self.newCharacterPanel:SlideDown(0)self.loadCharacterPanel=self:Add("ixCharMenuLoad")self.loadCharacterPanel:SlideDown(0)self.notice=self:Add("ixNoticeBar")self:MakePopup()self.currentAlpha=255 self.volume=0 ix.gui.characterMenu=self i("OnCharacterMenuCreated",self)end function A:PlayMusic()local D="sound/purp/stalker/music/menu.ogg"local E=D:match("http[s]?://.+")local F=E and sound.PlayURL or sound.PlayFile D=E and E or D RunConsoleCommand("stopsound")F(D,"noplay",function(G,H,I)if(!IsValid(self)or!IsValid(G))then return end G:SetVolume(self.volume or 0)G:Play()self.channel=G self:CreateAnimation(x,{index=10,target={volume=1},Think=function(J,K)if(IsValid(K.channel))then K.channel:SetVolume(self.volume*0.5)end end})end)end function A:ShowNotice(D,E)if IsValid(self.notice)then self.notice:SetType(D)self.notice:SetText(E)self.notice:Show()end end function A:HideNotice()if(IsValid(self.notice)and!self.notice:GetHidden())then self.notice:Slide("up",0.5,true)end end function A:OnCharacterDeleted(D)if(#ix.characters==0)then self.mainPanel.loadButton:SetDisabled(true)self.mainPanel:Undim()else self.mainPanel.loadButton:SetDisabled(false)end self.loadCharacterPanel:OnCharacterDeleted(D)end function A:OnCharacterLoadFailed(D)if IsValid(self.loadCharacterPanel)then self.loadCharacterPanel:SetMouseInputEnabled(true)self.loadCharacterPanel:SlideUp(0)end self:ShowNotice(3,D)end function A:IsClosing()return self.bClosing end function A:Close(D)self.bClosing=true self.bFromMenu=D local E=self:GetChildren()for F,G in next,E do if IsValid(G)then G:Remove()end end self:SetMouseInputEnabled(false)self:SetKeyboardInputEnabled(false)k(false)self:Remove()end function A:Paint(D,E)if self.mainPanel:IsVisible()==false then return end local F,G=ScrW(),ScrH()local H,I=F/1920,G/1080 local J,K=input.GetCursorPos()J=math.Clamp(J,0,D)K=math.Clamp(K,0,E)J=J/D K=K/E local M=25 surface.SetDrawColor(color_white)surface.SetMaterial(ix.util.GetMaterial("purp/stalker/ui/mainmenu/server/"..game.GetMap()..".png"))surface.DrawTexturedRect(-J*20,-K*20,D+40,E+40)d(color_white)h(s)surface.DrawTexturedRect(0,0,D,E)end function A:PaintOver(D,E)local F=self:IsMouseInputEnabled()if(self.bClosing and self.bFromMenu)or F==false then d(color_black)e(0,0,D,E)end end function A:OnRemove()if(self.channel)then self.channel:Stop()self.channel=nil end end f("ixCharMenu",A,"EditablePanel")if(IsValid(ix.gui.characterMenu))then ix.gui.characterMenu:Remove()ix.gui.characterMenu=g("ixCharMenu")end local C={}function C:Init()self:Remove()end vgui.Register("ixIntro",C,"EditablePanel")if IsValid(ix.gui.characterMenu)then ix.gui.characterMenu=g("ixCharMenu")end