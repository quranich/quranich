-- <|> Hello, fucker | Taxin2012 and PURP was here | Mysterious Zone Project | mzrp.ru <|>
local a=ix.plugin.list["inventory-module-aitems-list"]local b=ix.itemsListMaterials local c=ix.protectStatsIcons ix.itemsList.data.backpack={["_slot"]=true,["_Loadout"]=true,["_Tooltip"]=function(d,e)e:SizeToContents()local f=e:AddRow("protection_panel")f:SetText("")f:SetTall(0)a:TooltipProtectStats(d,e,f)a:TooltipRenderTable(d,e,f,45,220,Vector(0,5,0))f:InvalidateLayout(true)f:SizeToChildren(false,true)end}ix.itemsList.data.backpack["actors_backpack_01"]={name="Поясные подсумки",description="Небольшие брезентовые подсумки с креплениями для ношения на поясе. Хотя и не разгрузят спину, весьма неплохо справляются со своей прямой задачей, не занимая много места.",actorsNoPaint=true,weightModify=5,weight=0.5,durabilityQuality=3.5,durabilityPrice=1680,actorsTier=1,protectStats={[DMG_BULLET]=0,[DMG_GENERIC]=0,[DMG_BURN]=0,[DMG_SHOCK]=0,[DMG_ACID]=0,[DMG_RADIATION]=0,[DMG_CLUB]=0,},model="models/mz/loners/back_01_outfit.mdl",actorsBodyGroup={["back"]=1,},actorsBlackListTier={["slotArmor"]={[2]=true,[4]=true,},},itemIcon={material=b.ui_icon_armorlist_mz,x=4000,y=0,width=50,height=100,},}ix.itemsList.data.backpack["actors_backpack_02"]={name="Рюкзак «Хабар»",description="Небольшой, но вместительный рюкзак. Пользуется настолько высоким спросом среди сталкеров за прочные материалы и удобство, что стал ассоциироваться с удачной ходкой за богатствами Зоны.",weightModify=9,weight=1,durabilityQuality=3.5,durabilityPrice=3600,actorsTier=2,protectStats={[DMG_BULLET]=0,[DMG_GENERIC]=0,[DMG_BURN]=0,[DMG_SHOCK]=0,[DMG_ACID]=0,[DMG_RADIATION]=0,[DMG_CLUB]=0,},model="models/mz/loners/loners_back_02.mdl",actorsRenderTable={model="models/mz/loners/loners_back_02.mdl",bone="bip01_spine1",position=Vector(-0.5,-4,0),angles=Angle(-5,-90,90),size=1,},actorsBlackListTier={["slotHelmet"]={[99]=true,},},itemIcon={material=b.ui_icon_armorlist_mz,x=4100,y=0,width=100,height=100,},}ix.itemsList.data.backpack["actors_backpack_05a"]={name="Вещмешок",description="Обычный вещмешок, предназначенный для переноски большого количества припасов. Несмотря на свои объемы, пользуется спросом среди многих опытных сталкеров, особенно работающих на ученых, по причине постоянного переноса тяжелого оборудования.",weightModify=17,weight=1,durabilityQuality=3,durabilityPrice=4800,actorsTier=3,protectStats={[DMG_BULLET]=0,[DMG_GENERIC]=0,[DMG_BURN]=0,[DMG_SHOCK]=0,[DMG_ACID]=0,[DMG_RADIATION]=0,[DMG_CLUB]=0,},model="models/mz/loners/loners_back_05a.mdl",actorsRenderTable={model="models/mz/loners/loners_back_05a.mdl",bone="bip01_spine1",position=Vector(0.0,-4,0),angles=Angle(-5,-90,90),size=1,},actorsBlackListTier={["slotHelmet"]={[99]=true,},},itemIcon={material=b.ui_icon_armorlist_mz,x=4400,y=100,width=100,height=100,},}ix.itemsList.data.backpack["actors_backpack_05"]={name="Рюкзак «Привал»",description="Вместительный походный рюкзак, позволяющий переносить тяжелые и крупногабаритные грузы. Многослойная ткань защищает вещи от промокания и повышает износостойкость, а дополнительные кармашки позволяют удобно распределять мелкие предметы.",actorsNoPaint=true,weightModify=24,weight=2,durabilityQuality=2.45,durabilityPrice=7200,actorsTier=5,protectStats={[DMG_BULLET]=0,[DMG_GENERIC]=0,[DMG_BURN]=0,[DMG_SHOCK]=0,[DMG_ACID]=0,[DMG_RADIATION]=0,[DMG_CLUB]=0,},model="models/mz/loners/loners_back_05.mdl",actorsRenderTable={model="models/mz/loners/loners_back_05.mdl",bone="bip01_spine1",position=Vector(0.0,-4,0),angles=Angle(-5,-90,90),size=1,},actorsBlackListTier={["slotArmor"]={},["slotHelmet"]={[99]=true,},},itemIcon={material=b.ui_icon_armorlist_mz,x=4400,y=0,width=100,height=100,},}ix.itemsList.data.backpack["actors_backpack_03"]={name="Походный рюкзак",description="Довольно вместительный походный рюкзак. Высоко ценится многими сталкерами за счет большого объема и одновременно не очень большим габаритам. Износостойкие материалы еще больше повышают пригодность рюкзака в тяжелых условиях ЧЗО.",weightModify=32,weight=3,actorsTier=3,durabilityQuality=1.8,durabilityPrice=24000,protectStats={[DMG_BULLET]=0,[DMG_GENERIC]=0,[DMG_BURN]=0,[DMG_SHOCK]=0,[DMG_ACID]=0,[DMG_RADIATION]=0,[DMG_CLUB]=0,},model="models/mz/loners/loners_back_03.mdl",actorsRenderTable={model="models/mz/loners/loners_back_03.mdl",bone="bip01_spine1",position=Vector(0.0,-4,0),angles=Angle(-5,-90,90),size=1,},actorsBlackListTier={["slotArmor"]={},["slotHelmet"]={[99]=true,},},itemIcon={material=b.ui_icon_armorlist_mz,x=4200,y=0,width=100,height=100,},}ix.itemsList.data.backpack["actors_backpack_02a"]={name="Тактический рюкзак «Ellis»",description="Маленький тактический рюкзак, используется в основном военнослужащими западных стран для переноса различных устройств и питания. Имеет множество кармашков и карабинов, что делает его хорошей альтернативой популярным среди сталкеров рюкзакам.",weightModify=9,weight=0.7,actorsTier=2,durabilityQuality=3,durabilityPrice=3600,protectStats={[DMG_BULLET]=0,[DMG_GENERIC]=0,[DMG_BURN]=0,[DMG_SHOCK]=0,[DMG_ACID]=0,[DMG_RADIATION]=0,[DMG_CLUB]=0,},model="models/mz/loners/loners_back_02a.mdl",actorsRenderTable={model="models/mz/loners/loners_back_02a.mdl",bone="bip01_spine1",position=Vector(-0.5,-4,0),angles=Angle(-5,-90,90),size=1,},actorsBlackListTier={["slotHelmet"]={[99]=true,},},itemIcon={material=b.ui_icon_armorlist_mz,x=4100,y=100,width=100,height=100,},}ix.itemsList.data.backpack["actors_backpack_02b"]={name="Армейский рюкзак",description="Простой армейский рюкзак небольшой вместимости. Имеет один большой отсек и несколько маленьких кармашков. В Зону попадает с утечек военных поставок, после чего и расходится по рукам сталкеров, однако ввиду высокой ответственности за утерю гос. имущества достать такой выходит редко.",weightModify=17,weight=1,actorsTier=2,durabilityQuality=2.5,durabilityPrice=4800,protectStats={[DMG_BULLET]=0,[DMG_GENERIC]=0,[DMG_BURN]=0,[DMG_SHOCK]=0,[DMG_ACID]=0,[DMG_RADIATION]=0,[DMG_CLUB]=0,},model="models/mz/loners/loners_back_02b.mdl",actorsRenderTable={model="models/mz/loners/loners_back_02b.mdl",bone="bip01_spine1",position=Vector(-0.5,-4,0),angles=Angle(-5,-90,90),size=1,},actorsBlackListTier={["slotHelmet"]={[99]=true,},},itemIcon={material=b.ui_icon_armorlist_mz,x=4100,y=200,width=100,height=100,},}ix.itemsList.data.backpack["actors_backpack_03a"]={name="Рюкзак «Бигфут»",description="Вместительный тактический рюкзак. Основа выполнена из качественной брезентовой ткани, что позволяет не беспокоиться о износостойкости, а конструкция рюкзака, включая удобные крепления и оси жесткости, повышают комфорт при переносе тяжелых грузов.",weightModify=25,weight=1.55,actorsTier=5,durabilityQuality=2.2,durabilityPrice=7200,protectStats={[DMG_BULLET]=0,[DMG_GENERIC]=0,[DMG_BURN]=0,[DMG_SHOCK]=0,[DMG_ACID]=0,[DMG_RADIATION]=0,[DMG_CLUB]=0,},model="models/mz/loners/loners_back_03a.mdl",actorsRenderTable={model="models/mz/loners/loners_back_03a.mdl",bone="bip01_spine1",position=Vector(0.0,-4,0),angles=Angle(-5,-90,90),size=1,},actorsBlackListTier={["slotArmor"]={[0]=true,},["slotHelmet"]={[99]=true,},},itemIcon={material=b.ui_icon_armorlist_mz,x=4200,y=100,width=100,height=100,},}ix.itemsList.data.backpack["actors_backpack_05b"]={name="Рюкзак «Пегас»",description="Вместительный тактический рюкзак, позволяющий переносить большие и тяжелые предметы. Хорошая выкройка и внутренний каркас позволяют равномерно распределить нагрузку на спину, повышая комфорт владельца.",weightModify=32,weight=1.5,actorsTier=5,durabilityQuality=1.5,durabilityPrice=24000,protectStats={[DMG_BULLET]=0,[DMG_GENERIC]=0,[DMG_BURN]=0,[DMG_SHOCK]=0,[DMG_ACID]=0,[DMG_RADIATION]=0,[DMG_CLUB]=0,},model="models/mz/loners/loners_back_05b.mdl",actorsRenderTable={model="models/mz/loners/loners_back_05b.mdl",bone="bip01_spine1",position=Vector(0.0,-4,0),angles=Angle(-5,-90,90),size=1,},actorsBlackListTier={["slotArmor"]={[0]=true,},["slotHelmet"]={[99]=true,},},itemIcon={material=b.ui_icon_armorlist_mz,x=4400,y=200,width=100,height=100,},}ix.itemsList.data.backpack["actors_backpack_05d"]={name="Рюкзак «Спартанец»",description="Удобный и вместительный рюкзак с множеством отделений для хранения. Брезентовая основа помогает сохранить вещи в целости и сохранности, а внутренний каркас оказывает поддержку носителю, позволяя переносить большие грузы с комфортом.",weightModify=45,weight=2,durabilityQuality=1.0,durabilityPrice=30000,actorsTier=5,protectStats={[DMG_BULLET]=0,[DMG_GENERIC]=0,[DMG_BURN]=0,[DMG_SHOCK]=0,[DMG_ACID]=0,[DMG_RADIATION]=0,[DMG_CLUB]=0,},model="models/mz/loners/loners_back_05d.mdl",actorsRenderTable={model="models/mz/loners/loners_back_05d.mdl",bone="bip01_spine1",position=Vector(0.0,-4,0),angles=Angle(-5,-90,90),size=1,},actorsBlackListTier={["slotArmor"]={[0]=true,},["slotHelmet"]={[99]=true,},},itemIcon={material=b.ui_icon_armorlist_mz,x=4400,y=300,width=100,height=100,},}ix.itemsList.data.backpack["actors_backpack_04"]={name="Самодельный кислородный баллон",description="Попытка местных техников создания примитивной системы замкнутого дыхания. Если не учитывать многие технические огрехи и невозможность повышения давления даже до 150 атмосфер, то такую попытку можно считать удачной. Несмотря на все недостатки, такой баллон действительно справляется со своей задачей - помогает сталкеру дольше находиться в неблагоприятных условиях.",actorsNoPaint=true,weight=3,actorsTier=4,durabilityQuality=3.5,durabilityPrice=1920,protectStats={[DMG_BULLET]=0,[DMG_GENERIC]=0,[DMG_BURN]=0,[DMG_SHOCK]=0,[DMG_ACID]=10,[DMG_RADIATION]=10,[DMG_DIRECT]=15,[DMG_CLUB]=0,},model="models/mz/loners/back_04_outfit.mdl",actorsBodyGroup={["back"]=5,},actorsBlackListTier={["slotHelmet"]={[99]=true,},["slotMask"]={[0]=true,[1]=true,[2]=true,},["slotArmor"]={[0]=true,},},itemIcon={material=b.ui_icon_armorlist_mz,x=4300,y=0,width=100,height=100,},}ix.itemsList.data.backpack["actors_backpack_04a"]={name="Кислородный баллон",description="Кислородный баллон системы КИП заводского производства, предназначенный для подключения к противогазу для изоляции органов дыхания от неблагоприятной окружающей среды в виде загрязнения воздуха. Имеет огромное количество преимуществ в сравнении с фильтрами, но и главный недостаток — высокую цену.",actorsNoPaint=true,weight=2,actorsTier=4,durabilityQuality=3,durabilityPrice=2400,protectStats={[DMG_BULLET]=0,[DMG_GENERIC]=0,[DMG_BURN]=0,[DMG_SHOCK]=0,[DMG_ACID]=12,[DMG_RADIATION]=12,[DMG_DIRECT]=30,[DMG_CLUB]=0,},model="models/mz/loners/back_04a_outfit.mdl",actorsBodyGroup={["back"]=6,},actorsBlackListTier={["slotHelmet"]={[99]=true,},["slotMask"]={[0]=true,[1]=true,[2]=true,},["slotArmor"]={[0]=true,},},itemIcon={material=b.ui_icon_armorlist_mz,x=4300,y=100,width=100,height=100,},}ix.itemsList.data.backpack["actors_backpack_06"]={name="Самодельные кислородные баллоны",description="Спаренные самодельные баллоны все также не лишены недостатков своего «младшего брата», но тем не менее оказывают большую помощь даже опытным артхантерам. Кустарное производство имеет главное преимущество — небольшую цену, которая с лихвой компенсирует скромные характеристики данных баллонов.",actorsNoPaint=true,weight=5,actorsTier=4,durabilityQuality=2.45,durabilityPrice=4800,protectStats={[DMG_BULLET]=0,[DMG_GENERIC]=0,[DMG_BURN]=0,[DMG_SHOCK]=0,[DMG_ACID]=15,[DMG_RADIATION]=15,[DMG_CLUB]=0,[DMG_DIRECT]=50,},model="models/mz/loners/back_06_outfit.mdl",actorsBodyGroup={["back"]=8,},actorsBlackListTier={["slotHelmet"]={[99]=true,},["slotMask"]={[0]=true,[1]=true,[2]=true,},["slotArmor"]={[0]=true,},},itemIcon={material=b.ui_icon_armorlist_mz,x=4500,y=0,width=100,height=100,},}ix.itemsList.data.backpack["actors_backpack_06a"]={name="Кислородные баллоны",description="Заводской комплекс из двух спаренных кислородных баллонов. Рабочее давление в 200 атмосфер в каждом из баллонов предоставляет сталкерам, у которых хватило средств на их приобретение, огромную помощь в преодолении очагов радиации с витающей в воздухе фонящей пылью и зон высокой кислотности.",actorsNoPaint=true,weight=4,actorsTier=6,durabilityQuality=1.8,durabilityPrice=16000,protectStats={[DMG_BULLET]=0,[DMG_GENERIC]=0,[DMG_BURN]=0,[DMG_SHOCK]=0,[DMG_ACID]=20,[DMG_RADIATION]=20,[DMG_CLUB]=0,[DMG_DIRECT]=75,},model="models/mz/loners/back_06a_outfit.mdl",actorsBodyGroup={["back"]=9,},actorsBlackListTier={["slotHelmet"]={[99]=true,},["slotMask"]={[0]=true,[1]=true,[2]=true,},["slotArmor"]={[0]=true,},},itemIcon={material=b.ui_icon_armorlist_mz,x=4500,y=100,width=100,height=100,},}ix.itemsList.data.backpack["actors_backpack_servo"]={name="Сервоприводы",description="Прототип экоскелета, разработанный в Киевском оборонном НИИ для облегчения логистических работ военных на передовой. В Зону поступили ограниченными партиями для негласного тестирования. Хотя само устройство имеет большой вес, оно действительно помогает человеку поднимать больше тяжестей без дискомфорта и вреда для здоровья. Главный недостаток заключается в батарее высокой мощности, которая не позволяет долго находиться в зонах статического электричества.",actorsNoPaint=true,weightModify=55,weight=10,durabilityQuality=1.8,durabilityPrice=72000,actorsTier=99,protectStats={[DMG_BULLET]=0,[DMG_GENERIC]=7,[DMG_BURN]=0,[DMG_SHOCK]=-5,[DMG_ACID]=0,[DMG_RADIATION]=0,[DMG_CLUB]=5,},model="models/wick/wrbstalker/anomaly/items/wick_exo_repair_kit.mdl",actorsBodyGroup={["body"]=2,["back"]=0,},actorsBlackListTier={["slotArmor"]={[0]=true,[1]=true,[2]=true,[4]=true,[9]=true,},},itemIcon={material=b.ui_icon_armorlist_mz,x=4700,y=0,width=100,height=100,},}ix.itemsList.data.backpack["actors_backpack_exo"]={name="Экзоскелет",description="Одна из немногих опытных моделей экзоскелета военного назначения. Данный образец предназначен для повышения собственных способностей бойца на поле боя. Достать такой очень непросто и дорого, к тому же разрабатываются такие устройства для установки на ограниченное число бронекостюмов, одним из которых является тяжелый бронекостюм, разрабатываемый в том же НИИ.",actorsNoPaint=true,weightModify=65,weight=20,durabilityQuality=1.5,durabilityPrice=300000,actorsTier=100,protectStats={[DMG_BULLET]=5,[DMG_GENERIC]=0,[DMG_BURN]=3,[DMG_SHOCK]=-20,[DMG_ACID]=3,[DMG_RADIATION]=-10,[DMG_CLUB]=10,},model="models/mz/loners/exo_outfit.mdl",actorsBodyGroup={["body"]=2,["back"]=0,},actorsBlackListTier={["slotArmor"]={[0]=true,[1]=true,[2]=true,[3]=true,[4]=true,[5]=true,[6]=true,[7]=true,[8]=true,},},itemIcon={material=b.ui_icon_armorlist_mz,x=4700,y=100,width=100,height=100,},}if IX_PLUGINS_LOADED and ix.itemsList and ix.itemsList.CoreItemsRegistration then ix.itemsList.CoreItemsRegistration()end