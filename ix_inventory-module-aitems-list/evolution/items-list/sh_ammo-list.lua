-- <|> Hello, fucker | Taxin2012 and PURP was here | Mysterious Zone Project | mzrp.ru <|>
local a=ix.plugin.list["inventory-module-aitems-list"]local b=ix.itemsListMaterials ix.itemsList.data.ammo={["_Tooltip"]=function(c,d)end,["mz_ammo_9x18"]={name="Патроны 9x18 мм",description="Советский пистолетный патрон, созданный в конце 1940-х годов для использования в оружии ближнего боя. Применяется в пистолетах и пистолетах-пулемётах. Отличается простой конструкцией и невысокой пробиваемостью. Широко распространён в странах постсоветского пространства.",model="models/wick/wrbstalker/anomaly/items/wick_ammo_9x18_fmj.mdl",ammoTypeRegister={name="mz_ammo_9x18",plydmg=0,npcdmg=0,force=40,minsplash=10,maxsplash=5},ammoType="mz_ammo_9x18",ammoAmount=40,weight=0.01,width=2,height=1,itemIcon={material=b.ui_icon_equipment_anomaly,x=2900,y=0,width=100,height=50,},},["mz_ammo_9x19"]={name="Патроны 9x19 мм FMJ",description="Пистолетный патрон, разработанный в Германии в начале XX века. Один из самых массово применяемых боеприпасов в мире. Используется как в гражданском, так и в военном оружии. Обладает хорошей универсальностью и стабильной баллистикой.",model="models/wick/wrbstalker/anomaly/items/wick_ammo_9x19_fmj.mdl",ammoTypeRegister={name="mz_ammo_9x19",plydmg=0,npcdmg=0,force=40,minsplash=10,maxsplash=5},ammoType="mz_ammo_9x19",ammoAmount=30,weight=0.014,width=2,height=1,itemIcon={material=b.ui_icon_equipment_anomaly,x=3200,y=0,width=100,height=50,},},["mz_ammo_762x25"]={name="Патроны 7.62×25 мм",description="Советский пистолетный патрон, разработанный в 1930-х годах на основе 7,63×25 мм Маузер. Использовался в пистолетах ТТ и ППШ. Обладает высокой пробивной способностью и высокой скоростью пули. Распространён в военном оружии времён Второй мировой.",model="models/wick/wrbstalker/anomaly/items/wick_ammo_762x25_p.mdl",ammoTypeRegister={name="mz_ammo_762x25",plydmg=0,npcdmg=0,force=40,minsplash=10,maxsplash=5},ammoType="mz_ammo_762x25",ammoAmount=40,weight=0.02,width=1,height=1,itemIcon={material=b.ui_icon_equipment_misc_01,x=2950,y=2350,width=50,height=50,},},["mz_ammo_45acp"]={name="Патроны .45 ACP",description="Американский пистолетный патрон, разработанный в начале XX века для пистолета Colt M1911. Отличается тяжёлой пулей и выраженной останавливающей способностью. Широко используется в гражданском и армейском оружии.",model="models/wick/wrbstalker/anomaly/items/wick_ammo_1143x23_fmj.mdl",ammoTypeRegister={name="mz_ammo_45acp",plydmg=0,npcdmg=0,force=30,minsplash=10,maxsplash=5},ammoType="mz_ammo_45acp",ammoAmount=30,weight=0.02,width=2,height=1,itemIcon={material=b.ui_icon_equipment_anomaly,x=2750,y=550,width=100,height=50,},},["mz_ammo_57x28"]={name="Патроны 5,7x28 мм",description="Бельгийский малокалиберный патрон, разработанный компанией FN Herstal. Предназначен для использования в компактном оружии с высокой пробиваемостью и низкой отдачей. Применяется в пистолетах-пулемётах и пистолетах, преимущественно в спецподразделениях.",model="models/wick/wrbstalker/anomaly/items/wick_ammo_792x33_ap.mdl",ammoTypeRegister={name="mz_ammo_57x28",plydmg=0,npcdmg=0,force=40,minsplash=10,maxsplash=5},ammoType="mz_ammo_57x28",ammoAmount=50,weight=0.01,width=1,height=1,itemIcon={material=b.ui_icon_equipment_misc_01,x=3150,y=2250,width=50,height=50,},},["mz_ammo_9x21"]={name="Патроны 9х21 мм",description="Российский пистолетный патрон, разработанный в конце 1980-х НИИточмаш для оружия с повышенной пробиваемостью. Предназначен для поражения целей в бронежилетах 2–3 классов. Применяется в пистолете СПС «Гюрза», СР-2 «Вереск» и других образцах. Используется спецподразделениями и силовыми структурами.",model="models/wick/wrbstalker/anomaly/items/wick_ammo_762x51_fmj_old.mdl",ammoTypeRegister={name="mz_ammo_9x21",plydmg=0,npcdmg=0,force=40,minsplash=10,maxsplash=5},ammoType="mz_ammo_9x21",ammoAmount=10,weight=0.02,width=2,height=1,itemIcon={material=b.ui_icon_equipment_anomaly,x=3050,y=1800,width=100,height=50,},},["mz_ammo_50ae"]={name="Патроны .50 AE",description="Американский пистолетный патрон крупного калибра, разработанный для мощных самозарядных пистолетов. Обладает высокой энергией и останавливающим действием. Наиболее известен по применению в пистолете Desert Eagle.",model="models/wick/wrbstalker/anomaly/items/wick_ammo_50_ae.mdl",ammoTypeRegister={name="mz_ammo_50ae",plydmg=0,npcdmg=0,force=40,minsplash=10,maxsplash=5},ammoType="mz_ammo_50ae",ammoAmount=30,weight=0.035,width=2,height=1,itemIcon={material=b.ui_icon_equipment_anomaly,x=2750,y=650,width=100,height=50,},},["mz_ammo_12x70"]={name="Патроны 12x70 дробь",description="Универсальный гладкоствольный патрон с гильзой длиной 70 мм. Оснащается различными зарядами дроби, пуль или картечи. Применяется в охоте, самообороне и специальных операциях. Один из самых распространённых калибров для дробовиков.",model="models/wick/wrbstalker/anomaly/items/wick_ammo_12x70_buck_2.mdl",ammoTypeRegister={name="mz_ammo_12x70",plydmg=0,npcdmg=0,force=0,minsplash=10,maxsplash=5},ammoType="mz_ammo_12x70",ammoAmount=30,weight=0.04,width=2,height=1,itemIcon={material=b.ui_icon_equipmentfin,x=1600,y=1100,width=100,height=50,},},["mz_ammo_23x75"]={name="Патроны 23x75 картечь",description="Российский крупнокалиберный патрон для гладкоствольного оружия, применяемый для охоты и спецопераций. Обладает высокой останавливающей силой на малых дистанциях. Применяется для поражения крупного зверя и целей за укрытиями.",model="models/wick/wrbstalker/anomaly/items/wick_ammo_12x76_zhekan_old.mdl",ammoTypeRegister={name="mz_ammo_23x75",plydmg=0,npcdmg=0,force=0,minsplash=10,maxsplash=5},ammoType="mz_ammo_23x75",ammoAmount=30,weight=0.2,width=2,height=1,itemIcon={material=b.ui_icon_equipmentfin,x=1600,y=1150,width=100,height=50,},},["mz_ammo_545x39"]={name="Патроны 5.45x39 мм",description="Советский автоматный патрон, разработанный в 1970-х годах как замена 7,62×39 мм. Отличается высокой начальной скоростью и низкой отдачей. Основной боеприпас для АК-74 и его модификаций. Используется в армиях стран бывшего СССР.",model="models/wick/wrbstalker/anomaly/items/wick_ammo_545x39_fmj.mdl",ammoTypeRegister={name="mz_ammo_545x39",plydmg=0,npcdmg=0,force=40,minsplash=10,maxsplash=5},ammoType="mz_ammo_545x39",ammoAmount=30,weight=0.012,width=2,height=1,itemIcon={material=b.ui_icon_equipment_anomaly,x=2750,y=700,width=100,height=50,},},["mz_ammo_556x45"]={name="Патроны 5.56×45 мм",description="Автоматный патрон стандарта НАТО, принятый в 1980-х годах. Применяется в оружии западного образца, включая винтовки серии M16 и M4. Обладает высокой точностью и настильной траекторией. Широко распространён в армиях стран НАТО.",model="models/wick/wrbstalker/anomaly/items/wick_ammo_556x45_ss190.mdl",ammoTypeRegister={name="mz_ammo_556x45",plydmg=0,npcdmg=0,force=40,minsplash=10,maxsplash=5},ammoType="mz_ammo_556x45",ammoAmount=30,weight=0.012,width=2,height=1,itemIcon={material=b.ui_icon_equipment_anomaly,x=2750,y=800,width=100,height=50,},},["mz_ammo_762x39"]={name="Патроны 7.62x39 мм",description="Советский автоматный патрон, созданный в 1940-х годах. Основной боеприпас для автоматов АК и их модификаций. Отличается сбалансированными характеристиками по мощности, пробиваемости и отдаче. Один из самых массово производимых патронов в мире.",model="models/wick/wrbstalker/anomaly/items/wick_ammo_762x39_fmj.mdl",ammoTypeRegister={name="mz_ammo_762x39",plydmg=0,npcdmg=0,force=40,minsplash=10,maxsplash=5},ammoType="mz_ammo_762x39",ammoAmount=30,weight=0.02,width=2,height=1,itemIcon={material=b.ui_icon_equipment_anomaly,x=2750,y=1250,width=100,height=50,},},["mz_ammo_762x51"]={name="Патроны 7.62x51 мм",description="Патрон стандарта НАТО, предназначенный для автоматического и ручного оружия. Обладает высокой мощностью и настильной траекторией. Используется в боевом и тактическом оружии, рассчитан на уверенное поражение целей в средне-дальнем бою.",model="models/wick/wrbstalker/anomaly/items/wick_ammo_762x51_fmj.mdl",ammoTypeRegister={name="mz_ammo_762x51",plydmg=0,npcdmg=0,force=40,minsplash=10,maxsplash=5},ammoType="mz_ammo_762x51",ammoAmount=30,weight=0.025,width=2,height=1,itemIcon={material=b.ui_icon_equipment_anomaly,x=2750,y=1350,width=100,height=50,},},["mz_ammo_9x39"]={name="Патроны 9x39 мм",description="Советский специализированный патрон, разработанный для бесшумного оружия. Обладает увеличенной массой пули и дозвуковой скоростью. Применяется в автоматах и снайперских винтовках с интегрированными глушителями. Эффективен при скрытном ведении огня.",model="models/wick/wrbstalker/anomaly/items/wick_ammo_9x39_pab9.mdl",ammoTypeRegister={name="mz_ammo_9x39",plydmg=0,npcdmg=0,force=40,minsplash=10,maxsplash=5},ammoType="mz_ammo_9x39",ammoAmount=30,weight=0.024,width=2,height=1,itemIcon={material=b.ui_icon_equipmentfin,x=1600,y=1000,width=100,height=50,},},["mz_ammo_300"]={name="Патроны .300 Blackout",description="Американский патрон, разработанный для использования в оружии на базе AR-15. Предназначен для эффективной стрельбы как с дозвуковыми, так и с обычными зарядами. Подходит для компактных платформ и использования с глушителями.",model="models/wick/wrbstalker/anomaly/items/wick_ammo_762x51_ap.mdl",ammoTypeRegister={name="mz_ammo_300",plydmg=0,npcdmg=0,force=40,minsplash=10,maxsplash=5},ammoType="mz_ammo_300",ammoAmount=30,weight=0.02,width=2,height=1,itemIcon={material=b.ui_icon_equipment_anomaly,x=2750,y=1500,width=100,height=50,},},["mz_ammo_308"]={name="Патроны .308",description="Винтовочный патрон американского производства, распространённый в гражданской и охотничьей сфере, а также в снайперском вооружении. Обеспечивает устойчивую баллистику, хорошую точность и надёжную работу в различных условиях.",model="models/wick/wrbstalker/anomaly/items/wick_ammo_792x33_ap.mdl",ammoTypeRegister={name="mz_ammo_308",plydmg=0,npcdmg=0,force=40,minsplash=10,maxsplash=5},ammoType="mz_ammo_308",ammoAmount=30,weight=0.025,width=2,height=1,itemIcon={material=b.ui_icon_equipment_anomaly,x=2750,y=1450,width=100,height=50,},},["mz_ammo_762x54"]={name="Патроны 7.62x54 мм 7Н1",description="Советский винтовочный патрон с ободковой гильзой. Используется в пулемётах и снайперских винтовках. Обладает высокой дальностью и мощностью. Один из старейших боеприпасов, всё ещё находящихся на вооружении.",model="models/wick/wrbstalker/anomaly/items/wick_ammo_762x54_7h1.mdl",ammoTypeRegister={name="mz_ammo_762x54",plydmg=0,npcdmg=0,force=40,minsplash=10,maxsplash=5},ammoType="mz_ammo_762x54",ammoAmount=30,weight=0.025,width=2,height=1,itemIcon={material=b.ui_icon_equipment_anomaly,x=2750,y=950,width=100,height=50,},},["mz_ammo_338"]={name="Патроны .338 Lapua Magnum",description="Снайперский патрон крупного калибра, разработанный для стрельбы на дальние дистанции. Предназначен для поражения целей на предельных рубежах стрельбы с высокой точностью. Используется как в военном, так и спортивном снайпинге.",model="models/wick/wrbstalker/anomaly/items/wick_ammo_762x51_fmj_old.mdl",ammoTypeRegister={name="mz_ammo_338",plydmg=0,npcdmg=0,force=40,minsplash=10,maxsplash=5},ammoType="mz_ammo_338",ammoAmount=10,weight=0.05,width=2,height=1,itemIcon={material=b.ui_icon_equipment_anomaly,x=3050,y=1800,width=100,height=50,},},["mz_ammo_127x55s"]={name="Патроны 12.7x55 мм СЦ-130",description="Специальный снайперский патрон российского производства, разработанный для высокоточной стрельбы с пониженной скоростью. Используется в винтовке ВССК «Выхлоп» и аналогичных системах. Обладает мощной экспансивной пулей и высокой поражающей способностью.",model="models/wick/wrbstalker/anomaly/items/wick_ammo_77x57_fmj.mdl",ammoTypeRegister={name="mz_ammo_127x55s",plydmg=0,npcdmg=0,force=40,minsplash=10,maxsplash=5},ammoType="mz_ammo_127x55s",ammoAmount=10,weight=0.06,width=2,height=1,itemIcon={material=b.ui_icon_equipment_misc_01,x=3100,y=2150,width=100,height=50,},},["mz_ammo_50bmg"]={name="Патроны .50 BMG",description="Крупнокалиберный патрон военного назначения, созданный для применения в пулемётах и дальнобойных винтовках. Отличается высокой пробиваемостью, дальностью и мощностью. Используется для поражения техники, укреплений и живой силы.",model="models/wick/wrbstalker/anomaly/items/wick_ammo_77x57_fmj_old.mdl",ammoTypeRegister={name="mz_ammo_50bmg",plydmg=0,npcdmg=0,force=40,minsplash=10,maxsplash=5},ammoType="mz_ammo_50bmg",ammoAmount=10,weight=0.11,width=2,height=1,itemIcon={material=b.ui_icon_equipment_misc_01,x=3100,y=2200,width=100,height=50,},},["mz_ammo_127x55p"]={name="Патроны 12.7x55 мм ПС12",description="Тяжёлый боевой патрон, предназначенный для автоматического оружия ближнего боя. Применяется в автомате АШ-12. Обеспечивает высокое останавливающее действие на коротких дистанциях, преимущественно в условиях городского боя.",model="models/wick/wrbstalker/anomaly/items/wick_ammo_77x57_ap.mdl";ammoTypeRegister={name="mz_ammo_127x55p",dmgtype=DMG_BULLET,tracer=TRACER_LINE,plydmg=0,npcdmg=0,force=40,minsplash=10,maxsplash=5},ammoType="mz_ammo_127x55p",ammoAmount=20,weight=0.05,width=2,height=1,itemIcon={material=b.ui_icon_equipment_misc_01,x=3100,y=2150,width=100,height=50,},},["mz_ammo_50beo"]={name="Патроны .50 Beowulf",description="Американский крупнокалиберный патрон, разработанный для платформ на базе AR-15. Предназначен для стрельбы по бронированным целям и транспортным средствам на короткой дистанции. Обладает высокой останавливающей силой и тяжёлой пулей.",model="models/wick/wrbstalker/anomaly/items/wick_ammo_50_ae.mdl",ammoTypeRegister={name="mz_ammo_50beo",plydmg=0,npcdmg=0,force=40,minsplash=10,maxsplash=5},ammoType="mz_ammo_50beo",ammoAmount=1,weight=0.045,width=2,height=1,itemIcon={material=b.ui_icon_equipment_anomaly,x=2750,y=650,width=100,height=50,},},["mz_ammo_launcher_203"]={name="Граната для M203",description="Низкоскоростной выстрел к подствольному гранатомёту американского образца. Используется в системах на базе M16 и аналогичных. Оснащается осколочными, дымовыми и светошумовыми боеприпасами. Эффективна при ведении огня по открытой пехоте на ближней и средней дистанции.",model="models/wick/wrbstalker/anomaly/items/wick_ammo_m209.mdl",ammoTypeRegister={name="mz_ammo_launcher_203",plydmg=0,npcdmg=0,force=40,minsplash=10,maxsplash=5},ammoType="mz_ammo_launcher_203",ammoAmount=1,weight=0.23,width=1,height=1,itemIcon={material=b.ui_icon_equipment_misc_01,x=4050,y=2350,width=50,height=50,},},["mz_ammo_launcher_vog25"]={name="Граната ВОГ-25",description="Советская выстрел-граната к подствольным гранатомётам ГП-25 и ГП-30. Снаряжена осколочной боевой частью с дистанционным взрывателем. Предназначена для поражения живой силы и укрытий на малых дистанциях. Применяется в пехотном оружии АК-платформ.",model="models/wick/wrbstalker/anomaly/items/wick_ammo_vog_25.mdl",ammoTypeRegister={name="mz_ammo_launcher_vog25",plydmg=0,npcdmg=0,force=40,minsplash=10,maxsplash=5},ammoType="mz_ammo_launcher_vog25",ammoAmount=1,weight=0.23,width=1,height=1,itemIcon={material=b.ui_icon_equipment_misc_01,x=3900,y=2450,width=50,height=50,},},["mz_ammo_rpg_og7b"]={name="Граната ОГ-7В",description="Советский осколочный выстрел к РПГ-7, предназначенный для поражения живой силы и лёгких укрытий. Имеет вытянутую форму без кумулятивного заряда. Эффективен против открытых целей и вражеской пехоты на средней дистанции.",model="models/mz/weapons/ammo/mz_ammo_rpg7_01.mdl",ammoTypeRegister={name="mz_ammo_rpg_og7b",plydmg=0,npcdmg=0,force=40,minsplash=10,maxsplash=5},ammoType="mz_ammo_rpg_og7b",ammoAmount=1,weight=2,width=3,height=1,itemIcon={material=b.ui_icon_equipment_misc_01,x=1550,y=2200,width=150,height=50,},},["mz_ammo_acum"]={name="Аккумуляторы",description="Энергетические элементы, использующие в качестве источника энергии капсулированный фрагмент артефакта «Вспышка». Изготовлены в заводских условиях при помощи высокотехнологичного оборудования.",model="models/stalker/ammo/gauss.mdl",ammoTypeRegister={name="mz_ammo_acum",plydmg=0,npcdmg=0,force=40,minsplash=10,maxsplash=5},ammoType="mz_ammo_acum",ammoAmount=10,weight=0.01,width=0.7,height=1,itemIcon={material=b.ui_icon_equipment_misc_03,x=1350,y=1800,width=50,height=50,},},}if IX_PLUGINS_LOADED and ix.itemsList and ix.itemsList.CoreItemsRegistration then ix.itemsList.CoreItemsRegistration()end