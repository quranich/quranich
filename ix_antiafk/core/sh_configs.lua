-- <|> Hello, fucker | Taxin2012 and PURP was here | Mysterious Zone Project | mzrp.ru <|>
local a=ix.plugin.list["antiafk"]ix.config.Add("afkTime",200,"The amount of seconds it takes for someone to be flagged as AFK.",function(b,c)if SERVER then for d,e in next,player.GetAll()do timer.Adjust("ixAntiAFK"..e:SteamID64(),c)end end end,{data={min=60,max=3600},category="antiafk"})