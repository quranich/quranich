local PLUGIN = ix.plugin.list["inventory-module-aitems-list"]
local itemsListMaterials = ix.itemsListMaterials

--[[ Materials ]]
    --[[ PNG ]]
        local mat_LaserFlareMat = Material("models/mz/weapons/addons/laser/laserdot")
        local mat_LaserTraceMat = Material("models/mz/weapons/addons/laser/lasertrace")
        local HoloSight_SRS_02 = Material("vgui/arc9_eft_shared/reticles/scope_base_aimpoint_micro_t1_mark.png", "mips smooth")
        HoloSight_SRS_02:SetInt("$additive", 1)
        local mz_1p78_day = Material("png/mz/weapons/reticles/mz_scope_optical_1p78_day.png", "mips smooth")
        mz_1p78_day:SetInt("$additive", 1)
        local mz_1p78_green = Material("png/mz/weapons/reticles/mz_scope_optical_1p78_green.png", "mips smooth")
        mz_1p78_green:SetInt("$additive", 1)
        local mz_compact25_day = Material("png/mz/weapons/reticles/mz_scope_optical_compact25_day.png", "mips smooth")
        mz_compact25_day:SetInt("$additive", 1)
        local mz_compact25_red = Material("png/mz/weapons/reticles/mz_scope_optical_compact25_red.png", "mips smooth")
        mz_compact25_red:SetInt("$additive", 1)
        local mz_spiritfire25_day = Material("png/mz/weapons/reticles/mz_scope_optical_spiritfire25_day.png", "mips smooth")
        mz_spiritfire25_day:SetInt("$additive", 1)
        local mz_spiritfire25_red = Material("png/mz/weapons/reticles/mz_scope_optical_spiritfire25_red.png", "mips smooth")
        mz_spiritfire25_red:SetInt("$additive", 1)
        local mz_germanpost_red = Material("png/mz/weapons/reticles/mz_scope_optical_germanpost.png", "mips smooth")
        mz_germanpost_red:SetInt("$additive", 1)
        local mz_rakurs_a = Material("png/mz/weapons/reticles/mz_scope_reflex_rakurs_a.png", "mips smooth")
        mz_rakurs_a:SetInt("$additive", 1)
        local mz_bigdot_red = Material("png/mz/weapons/reticles/mz_scope_reflex_bigdot_red.png", "mips smooth")
        mz_bigdot_red:SetInt("$additive", 1)
        local mz_bigdot_green = Material("png/mz/weapons/reticles/mz_scope_reflex_bigdot_green.png", "mips smooth")
        mz_bigdot_green:SetInt("$additive", 1)
        local mz_bigdot_blue = Material("png/mz/weapons/reticles/mz_scope_reflex_bigdot_blue.png", "mips smooth")
        mz_bigdot_blue:SetInt("$additive", 1)
        local mz_bigdot_yellow = Material("png/mz/weapons/reticles/mz_scope_reflex_bigdot_yellow.png", "mips smooth")
        mz_bigdot_yellow:SetInt("$additive", 1)
        local mat_RTScopeReticle = Material("vgui/arc9_eft_shared/reticles/scope_all_elcan_specter_DR_marks.png", "mips smooth")
        mat_RTScopeReticle:SetInt("$additive", 1)
    --[[ VMT ]]
        local mz_bigdot_red2 = Material("sprites/mz/weapons/reticles/mz_scope_collimator_bigdot_red.png", "mips smooth")
        --mz_1p78_day:SetInt("$additive", 1)

--[[
    AttachmentsList
        :Scopes
        :Muzzles
        :Magazines
        :ForeArms
]]

ix.itemsList.data.weaponsAtt = {
    ["_Tooltip"] = function(item, tooltip)
        PLUGIN:TooltipAttachmentsStats(item, tooltip)
    end
}

---------------------------------------------------АТТАЧМЕНТЫ----------------------------------------------------
            ix.itemsList.data.weaponsAtt["mz_add_test_01"] = {
                    name = "TESTAtt",
                    description = "Тестовый аттачмент",
                    model = "models/healthvial.mdl",

                    attData = {
                        CompactName = "FHP-9", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Pistols", -- Категория, в которой будет отображаться модуль в меню.
                        --MuzzleDevice = true,
                        --MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_flh_9_01.mdl", -- Модель модуля на оружии.
                        Category = {"mz_scope_small"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        DamageMult = 0.5,
                        RangeMult = 0.5,
                        SpreadMult = 0.5,
                        FlatnessMult = 0.5,
                        RecoilMult = 0.5,
                        RPMMult = 0.5,
                        MalfunctionMeanShotsToFailMult = 0.5,
                        AimDownSightsTimeMult = 0.5,
                        ReloadTimeMult = 0.5,
                        ErgonomicsMult = 0.5,
                        WeightAdd = 1,
                        --CustomPros = {
                        --        Вспышка = "нет",
                        --    },
                        --MuzzleParticle = "muzzleflash_suppressed",

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3400,
                            y = 0,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ТЕСТ",
                            textBOTTOM_RIGHT = "ТЕСТ",
                        },
                    }
                }
    -------------------------------------------------ПРИЦЕЛЫ-------------------------------------------------
        ---------------------------------------Закрытые колииматоры--------------------------------------
            ------------------------------------------ТИР-1------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_add_scope_ccmt_01"] = {
                    name = "Коллиматор Aimpoint Micro T-2",
                    description = "Компактный коллиматорный прицел швейцарского производства. Корпус из анодированного алюминия обеспечивает высокую устойчивать к механическим повреждениям, а качественная сборка защищает от влаги и пыли. Однако, несмотря на все достоинства, не позволяет быстро прицелиться из за маленького размера.",

                    attData = {
                        PrintName = "Коллиматор Aimpoint Micro T-2",
                        CompactName = "Aimpoint Micro T-2",
                        Folder = "Коллиматоры",

                        Model = "models/mz/weapons/addons/scope/add_scope_ccmt_01.mdl",
                        Category = {"mz_scope_small"},

                        FoldSights = true, -- Модифицирует Bodygroup модели
                        Sights = {
                            {
                                Pos = Vector(0, 7.01795, -0.453143),
                                Ang = Angle(0, 0, 0),
                                AimDownSightsTimeMult = 1.2,
                                -- Magnification = 13.25,
                                -- ViewModelFOV = 30
                            },
                        },
                        HoloSight = true,
                        HoloSightReticle = mz_bigdot_red,
                        HoloSightSize = 180,
                        HoloSightColorable = false,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2550,
                            y = 50,
                            width = 50,
                            height = 50,
                            textBOTTOM_LEFT = "М",
                            textTOP_RIGHT = "К",
                            textBOTTOM_RIGHT = "П",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_scope_ccmt_01a"] = {
                    name = "Коллиматор «Ракурс-А» (ласт. хвост)",
                    description = "Прочный безлинзовый прицел белорусского производства, отличающийся устойчивостью к повреждениям и простотой в обслуживании. Использует механический маркер в виде стрелки или точки, не требует источника питания. Несмотря на достоинства, особенности конструкции увеличивают время прицеливания.",

                    attData = {
                        PrintName = "Коллиматор «Ракурс-А» (ласт. хвост)",
                        CompactName = "«Ракурс-А»",
                        Folder = "Коллиматоры",

                        Model = "models/mz/weapons/addons/scope/add_scope_ccmt_01a.mdl",
                        Category = {"mz_dovetale_mid"},

                        FoldSights = true, -- Модифицирует Bodygroup модели
                        Sights = {
                            {
                                Pos = Vector(-1.29473, 8.07506, -3.7756),
                                Ang = Angle(0, 0, 0),
                                RTScopeFOV = (2/1)*1.227, -- Формула: (2/кратность)*размер линзы(Compact25 относительно текущей)
                                AimDownSightsTimeMult = 1.2,
                                ViewModelFOV = 55,
                            },
                        },
                        DrawFunc = function(swep, model, wm)
                            if !wm then
                                local bodygroupLence = swep:GetInSights() and 1 or 0
                                local bodygroupFactor = swep:GetMultiSight() - 1

                                model:SetBodygroup(1, bodygroupLence)
                                model:SetBodygroup(2, bodygroupFactor)
                            end
                        end,

                        RTScope = true,
                        RTScopeSubmatIndex = 2,
                        RTScopeReticle = mz_rakurs_a, -- Материал перекрестия
                        RTScopeReticleScale = 1.04,
                        RTScopeColorable = true,
                        RTScopeShadowIntensity = 5, -- интенсивность "залунения" (тени в линзе при движении)
                        RTScopeBlackBox = false,
                        RTScopeBlackBoxShadow = false,

                        ScopeScreenRatio = 4.5,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2750,
                            y = 0,
                            width = 50,
                            height = 100,
                            textBOTTOM_LEFT = "С",
                            textTOP_RIGHT = "1х",
                            textBOTTOM_RIGHT = "ЛХ",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_scope_ccmt_01b"] = {
                    name = "Коллиматор «Ракурс-А» (пикатинни)",
                    description = "Прочный безлинзовый прицел белорусского производства, отличающийся устойчивостью к повреждениям и простотой в обслуживании. Использует механический маркер в виде стрелки или точки, не требует источника питания. Несмотря на достоинства, особенности конструкции увеличивают время прицеливания.",

                    attData = {
                        PrintName = "Коллиматор «Ракурс-А» (пикатинни)",
                        CompactName = "«Ракурс-А»",
                        Folder = "Коллиматоры",

                        Model = "models/mz/weapons/addons/scope/add_scope_ccmt_01b.mdl",
                        Category = {"mz_scope_mid"},

                        FoldSights = true, -- Модифицирует Bodygroup модели
                        Sights = {
                            {
                                Pos = Vector(0.00001, 8.17, -0.75405),
                                Ang = Angle(0, 0, 0),
                                RTScopeFOV = (2/1)*1.227, -- Формула: (2/кратность)*размер линзы(Compact25 относительно текущей)
                                AimDownSightsTimeMult = 1.2,
                                ViewModelFOV = 55,
                            },
                        },
                        DrawFunc = function(swep, model, wm)
                            if !wm then
                                local bodygroupLence = swep:GetInSights() and 1 or 0
                                local bodygroupFactor = swep:GetMultiSight() - 1

                                model:SetBodygroup(1, bodygroupLence)
                                model:SetBodygroup(2, bodygroupFactor)
                            end
                        end,

                        RTScope = true,
                        RTScopeSubmatIndex = 2,
                        RTScopeReticle = mz_rakurs_a, -- Материал перекрестия
                        RTScopeReticleScale = 1.04,
                        RTScopeColorable = true,
                        RTScopeShadowIntensity = 5, -- интенсивность "залунения" (тени в линзе при движении)
                        RTScopeBlackBox = false,
                        RTScopeBlackBoxShadow = false,

                        ScopeScreenRatio = 4.5,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2550,
                            y = 0,
                            width = 50,
                            height = 50,
                            textBOTTOM_LEFT = "С",
                            textTOP_RIGHT = "1х",
                            textBOTTOM_RIGHT = "П",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_scope_ccmt_01c"] = {
                    name = "Коллиматор «WISPON Quadro Mini»",
                    description = "Компактный коллиматорный прицел закрытого типа от компании WISPON. Прочная коснтрукция и возможность переключения цвета точки полюбились профессионалам в Зоне. Несмотря на достоинства, особенности конструкции увеличивают время прицеливания.",

                    attData = {
                        CompactName = "WISPON Quadro Mini",
                        Folder = "Коллиматоры",

                        Model = "models/mz/weapons/addons/scope/add_scope_ccmt_01c.mdl",
                        Category = {"mz_scope_small"},

                        FoldSights = true, -- Модифицирует Bodygroup модели
                        Sights = {
                            {
                                Pos = Vector(0.000741, 6.70634, -0.802164),
                                Ang = Angle(0, 0, 0),
                                AimDownSightsTimeMult = 1.2,
                                -- Magnification = 13.25,
                                -- ViewModelFOV = 30
                                Reticle = mz_bigdot_red,
                            },
                            {
                                Pos = Vector(0.000741, 6.70634, -0.802164),
                                Ang = Angle(0, 0, 0),
                                AimDownSightsTimeMult = 1.2,
                                -- Magnification = 13.25,
                                -- ViewModelFOV = 30
                                Reticle = mz_bigdot_green,
                            },
                        },
                        HoloSight = true,
                        HoloSightReticle = Material("png/mz/weapons/reticles/mz_scope_reflex_bigdot_red.png", "mips smooth"),
                        --HoloSightReticle:SetInt("$additive", 1),
                        HoloSightSize = 180,
                        HoloSightColorable = false,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2600,
                            y = 100,
                            width = 50,
                            height = 50,
                            textBOTTOM_LEFT = "М",
                            textTOP_RIGHT = "К",
                            textBOTTOM_RIGHT = "П",
                        },
                    }
                }
        ---------------------------------------Открытые колииматоры--------------------------------------
            ------------------------------------------ТИР-1------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_add_scope_ocmt_01"] = {
                    name = "ЭКП «Кобра» (ласт. хвост)",
                    description = "Электронный коллиматорный прицел открытого типа производства ЦКИБ. Предназначен для упрощения прицеливания на близких дистанциях. Надежность, простота эксплуатации и низкая цена сделали этот прицел фаворитом среди новичков. Большой размер немного замедляет скорость прицеливания.",

                    attData = {
                        PrintName = "ЭКП «Кобра» (ласт. хвост)",
                        CompactName = "ЭКП «Кобра»",
                        Folder = "Коллиматоры",

                        Model = "models/mz/weapons/addons/scope/add_scope_ocmt_01.mdl",
                        Category = {"mz_dovetale_mid"},

                        AimDownSightsTimeMult = 1.05,

                        FoldSights = true, -- Модифицирует Bodygroup модели
                        Sights = {
                            {
                                Pos = Vector(-1.29586, 8.44307, -3.94062),
                                Ang = Angle(0, 0, 0),
                                AimDownSightsTimeMult = 1.1,
                                ViewModelFOV = 55,
                            },
                        },
                        HoloSight = true,
                        HoloSightReticle = mz_bigdot_red,
                        HoloSightSize = 180,
                        HoloSightColorable = false,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2700,
                            y = 0,
                            width = 50,
                            height = 100,
                            textBOTTOM_LEFT = "С",
                            textTOP_RIGHT = "К",
                            textBOTTOM_RIGHT = "ЛХ",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_scope_ocmt_01a"] = {
                    name = "ЭКП «Кобра» (пикатинни)",
                    description = "Электронный коллиматорный прицел открытого типа производства ЦКИБ. Предназначен для упрощения прицеливания на близких дистанциях. Надежность, простота эксплуатации и низкая цена сделали этот прицел фаворитом среди новичков. Большой размер немного замедляет скорость прицеливания.",

                    attData = {
                        PrintName = "ЭКП «Кобра» (пикатинни)",
                        CompactName = "ЭКП «Кобра»",
                        Folder = "Коллиматоры",

                        Model = "models/mz/weapons/addons/scope/add_scope_ocmt_01a.mdl",
                        Category = {"mz_scope_big"},

                        FoldSights = true, -- Модифицирует Bodygroup модели
                        Sights = {
                            {
                                Pos = Vector(-0.000009, 7.89322, -1.47685),
                                Ang = Angle(0, 0, 0),
                                AimDownSightsTimeMult = 1.1,
                                ViewModelFOV = 55,
                            },
                        },
                        HoloSight = true,
                        HoloSightReticle = mz_bigdot_red,
                        HoloSightSize = 180,
                        HoloSightColorable = false,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2600,
                            y = 0,
                            width = 50,
                            height = 50,
                            textBOTTOM_LEFT = "Б",
                            textTOP_RIGHT = "К",
                            textBOTTOM_RIGHT = "П",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_scope_ocmt_01b"] = {
                    name = "Коллиматор «C-More»",
                    description = "Коллиматорный прицел с открытой конструкцией от американской компании C-More Systems. Предназначен для упрощения наведения на близких дистанциях, однако особенности конструкции немного снижают скорость перехода в прицел.",

                    attData = {
                        PrintName = "Коллиматор «C-More»",
                        CompactName = "C-More",
                        Folder = "Коллиматоры",

                        Model = "models/mz/weapons/addons/scope/add_scope_ocmt_01b.mdl",
                        Category = {"mz_scope_big"},
                        CustomCons = {
                            Ergonomics = "-1",
                        },

                        FoldSights = true, -- Модифицирует Bodygroup модели
                        Sights = {
                            {
                                Pos = Vector(-0.000001, 6.83528, -1.07531),
                                Ang = Angle(0, 0, 0),
                                AimDownSightsTimeMult = 1.1,
                                ViewModelFOV = 55,
                            },
                        },
                        HoloSight = true,
                        HoloSightReticle = mz_bigdot_red,
                        HoloSightSize = 180,
                        HoloSightColorable = false,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2600,
                            y = 50,
                            width = 50,
                            height = 50,
                            textBOTTOM_LEFT = "Б",
                            textTOP_RIGHT = "К",
                            textBOTTOM_RIGHT = "П",
                        },
                    }
                }
        ---------------------------------------Мелкократная оптика---------------------------------------
            ------------------------------------------ТИР-1------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_add_scope_mscope_01"] = {
                    name = "Прицел оптический 1П78 «Каштан»",
                    description = "Оптический прицел с фиксированным 2.5-кратным увеличением, разработанный на Новосибирском приборостроительном заводе. Отлично показывает себя при стрельбе на средних дистанциях, несмотря на размер, снижающий скорость прицеливания.",

                    attData = {
                        PrintName = "Прицел оптический 1П78 «Каштан»",
                        CompactName = "1П78 «Каштан»",
                        Folder = "Оптика",

                        Model = "models/mz/weapons/addons/scope/add_scope_mscope_01.mdl",
                        Category = {"mz_dovetale_mid"},

                        FoldSights = true, -- Модифицирует Bodygroup модели
                        Sights = {
                            {
                                Pos = Vector(-1.20487, 9.60495, -3.65604), --Середина лизны -6 юнитов
                                Ang = Angle(0, 0, 0),
                                RTScopeFOV = (2/2.5)*1.228, -- Формула: (2/кратность)*размер линзы(Compact25 относительно текущей)
                                AimDownSightsTimeMult = 1.2,
                                ViewModelFOV = 55,
                                Reticle = mz_1p78_day, -- Материал перекрестия
                            },

                            {
                                Pos = Vector(-1.20487, 9.60495, -3.65604), --Середина лизны -6 юнитов
                                Ang = Angle(0, 0, 0),
                                RTScopeFOV = (2/2.5)*1.228, -- Формула: (2/кратность)*размер линзы(Compact25 относительно текущей)
                                AimDownSightsTimeMult = 1.2,
                                ViewModelFOV = 55,
                                Reticle = mz_1p78_green, -- Материал перекрестия
                            },
                        },
                        DrawFunc = function(swep, model, wm)
                            if !wm then
                                local bodygroupLence = swep:GetInSights() and 1 or 0
                                local bodygroupFactor = swep:GetMultiSight() - 1

                                model:SetBodygroup(1, bodygroupLence)
                                model:SetBodygroup(2, bodygroupFactor)
                            end
                        end,

                        RTScope = true,
                        RTScopeSubmatIndex = 2,
                        RTScopeReticle = mz_1p78_day, -- Материал перекрестия
                        RTScopeReticleScale = 3,
                        RTScopeShadowIntensity = 5, -- интенсивность "залунения" (тени в линзе при движении)
                        RTScopeBlackBox = false,
                        RTScopeBlackBoxShadow = false,

                        ScopeScreenRatio = 6.75,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2800,
                            y = 0,
                            width = 50,
                            height = 100,
                            textBOTTOM_LEFT = "С",
                            textTOP_RIGHT = "2.5х",
                            textBOTTOM_RIGHT = "ЛХ",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_scope_mscope_01a"] = {
                    name = "Прицел оптический «Monstrum Compact 2.5x32»",
                    description = "Оптический прицел с 2.5-кратным увеличением. Прочный корпус защищён от коррозии и механических повреждений, что делает прицел бюджетным, но эффективным вариантом для начинающих сталкеров и охотников. Скорость прицеливания снижена в сравнении с механическими приспособлениями.",

                    attData = {
                        CompactName = "Compact 2.5x32",
                        Folder = "Оптика",

                        Model = "models/mz/weapons/addons/scope/add_scope_mscope_01a.mdl",
                        Category = {"mz_scope_mid"},

                        FoldSights = true, -- Модифицирует Bodygroup модели
                        Sights = {
                            {
                                Pos = Vector(-0.004855, 8.18297, -0.894918), --Середина лизны -6 юнитов
                                Ang = Angle(0, 0, 0),
                                RTScopeFOV = (2/2.5)*1, -- Формула: (2/кратность)*размер линзы(Compact25 относительно текущей)
                                AimDownSightsTimeMult = 1.2,
                                ViewModelFOV = 55,
                                Reticle = mz_compact25_day, -- Материал перекрестия
                            },

                            {
                                Pos = Vector(-0.004855, 8.18297, -0.894918), --Середина лизны -6 юнитов
                                Ang = Angle(0, 0, 0),
                                RTScopeFOV = (2/2.5)*1, -- Формула: (2/кратность)*размер линзы(Compact25 относительно текущей)
                                AimDownSightsTimeMult = 1.2,
                                ViewModelFOV = 55,
                                Reticle = mz_compact25_red, -- Материал перекрестия
                            },
                        },
                        DrawFunc = function(swep, model, wm)
                            if !wm then
                                local bodygroupLence = swep:GetInSights() and 1 or 0
                                local bodygroupFactor = swep:GetMultiSight() - 1

                                model:SetBodygroup(1, bodygroupLence)
                                model:SetBodygroup(2, bodygroupFactor)
                            end
                        end,

                        RTScope = true,
                        RTScopeSubmatIndex = 2,
                        RTScopeReticle = mz_compact25_day, -- Материал перекрестия
                        RTScopeReticleScale = 0.5,
                        RTScopeShadowIntensity = 5, -- интенсивность "залунения" (тени в линзе при движении)
                        RTScopeBlackBox = false,
                        RTScopeBlackBoxShadow = false,

                        ScopeScreenRatio = 6.75,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2650,
                            y = 50,
                            width = 50,
                            height = 50,
                            textBOTTOM_LEFT = "С",
                            textTOP_RIGHT = "2.5х",
                            textBOTTOM_RIGHT = "П",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_scope_mscope_01b"] = {
                    name = "Прицел оптический ПУ",
                    description = "Оптический прицел с кратностью увеличения 3.5x, разработанный Ижмаш для установки на винтовки Мосина и другие образцы с кронштейном Кочетова. Компактный, лёгкий и достаточно прочный, однако устаревшая конструкция и материалы оказывают сильное негативное влияние на скорость прицеливания.",

                    attData = {
                        CompactName = "ПУ",
                        Folder = "Оптика",

                        Model = "models/mz/weapons/addons/scope/add_scope_mscope_01b.mdl",
                        Category = {"mz_scope_24mm"},

                        FoldSights = true, -- Модифицирует Bodygroup модели
                        Sights = {
                            {
                                Pos = Vector(-0.00005, 9.52342, -0.000363), --Середина лизны -6 юнитов
                                Ang = Angle(0, 0, 0),
                                RTScopeFOV = (2/3.5)*0.999, -- Формула: (2/кратность)*размер линзы(Compact25 относительно текущей)
                                AimDownSightsTimeMult = 1.3,
                                ViewModelFOV = 55,
                            },
                        },
                        DrawFunc = function(swep, model, wm)
                            if !wm then
                                local bodygroupLence = swep:GetInSights() and 1 or 0
                                local bodygroupFactor = swep:GetMultiSight() - 1

                                model:SetBodygroup(1, bodygroupLence)
                                model:SetBodygroup(2, bodygroupFactor)
                            end
                        end,

                        RTScope = true,
                        RTScopeSubmatIndex = 2,
                        --RTScopeFOV = 2/2.5, -- Формула: 2/кратность
                        RTScopeReticle = mz_germanpost_red, -- Материал перекрестия
                        RTScopeReticleScale = 1.5,
                        RTScopeColorable = true,
                        RTScopeShadowIntensity = 7.5, -- интенсивность "залунения" (тени в линзе при движении)
                        RTScopeBlackBox = false,
                        RTScopeBlackBoxShadow = false,

                        ScopeScreenRatio = 6.75,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2850,
                            y = 0,
                            width = 100,
                            height = 50,
                            textBOTTOM_LEFT = "Б",
                            textTOP_RIGHT = "3.5х",
                            textBOTTOM_RIGHT = "24мм",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_scope_mscope_01c"] = {
                    name = "Прицел оптический ZF-41",
                    description = "Оптический прицел с увеличением 3.5x, созданный для винтовок Kar98k. Очень лёгкий и компактный, но имеет узкое поле зрения, что делает его менее универсальным и оказывает сильное негативное влияние на скорость прицеливания. Тем не менее, надёжность конструкции и простота настройки компенсируют эти недостатки.",

                    attData = {
                        CompactName = "ZF-41",
                        Folder = "Оптика",

                        Model = "models/mz/weapons/addons/scope/add_scope_mscope_01c.mdl",
                        Category = {"mz_scope_24mm"},

                        FoldSights = true, -- Модифицирует Bodygroup модели
                        Sights = {
                            {
                                Pos = Vector(-0.000054, 8.8358, -0.000666), --Середина лизны -6 юнитов
                                Ang = Angle(0, 0, 0),
                                RTScopeFOV = (2/3.5)*0.801, -- Формула: (2/кратность)*размер линзы(Compact25 относительно текущей)
                                AimDownSightsTimeMult = 1.3,
                                ViewModelFOV = 55,
                            },
                        },
                        DrawFunc = function(swep, model, wm)
                            if !wm then
                                local bodygroupLence = swep:GetInSights() and 1 or 0
                                local bodygroupFactor = swep:GetMultiSight() - 1

                                model:SetBodygroup(1, bodygroupLence)
                                model:SetBodygroup(2, bodygroupFactor)
                            end
                        end,

                        RTScope = true,
                        RTScopeSubmatIndex = 2,
                        --RTScopeFOV = 2/2.5, -- Формула: 2/кратность
                        RTScopeReticle = mz_germanpost_red, -- Материал перекрестия
                        RTScopeReticleScale = 1.7,
                        RTScopeColorable = true,
                        RTScopeShadowIntensity = 7.5, -- интенсивность "залунения" (тени в линзе при движении)
                        RTScopeBlackBox = false,
                        RTScopeBlackBoxShadow = false,

                        ScopeScreenRatio = 6.75,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2850,
                            y = 50,
                            width = 100,
                            height = 50,
                            textBOTTOM_LEFT = "Б",
                            textTOP_RIGHT = "3.5х",
                            textBOTTOM_RIGHT = "24мм",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_scope_mscope_01d"] = {
                    name = "Прицел оптический «Vortex Spitfire 2.5x»",
                    description = "Компактный и надежный прицел, имеющий 2.5-кратное увеличение. Прочный корпус из алюминия выдерживает жёсткие условия Зоны, а прицельная сетка с подсветкой обеспечивает удобство использования в любое время суток. Хотя скорость прицеливания уступает коллиматорам, прицел является хорошим выбором для тех, кто ищет баланс между ценой, качеством и функциональностью.",

                    attData = {
                        CompactName = "Vortex Spitfire 2.5x",
                        Folder = "Оптика",

                        Model = "models/mz/weapons/addons/scope/add_scope_mscope_01d.mdl",
                        Category = {"mz_scope_mid"},

                        FoldSights = true, -- Модифицирует Bodygroup модели
                        Sights = {
                            {
                                Pos = Vector(-0.000003, 6.93841, -1.18802), --Середина лизны -6 юнитов
                                Ang = Angle(0, 0, 0),
                                RTScopeFOV = (2/2.5)*1.06211, -- Формула: (2/кратность)*размер линзы(Compact25 относительно текущей)
                                AimDownSightsTimeMult = 1.2,
                                ViewModelFOV = 55,
                                Reticle = mz_spiritfire25_day, -- Материал перекрестия
                            },

                            {
                                Pos = Vector(-0.000003, 6.93841, -1.18802), --Середина лизны -6 юнитов
                                Ang = Angle(0, 0, 0),
                                RTScopeFOV = (2/2.5)*1.06211, -- Формула: (2/кратность)*размер линзы(Compact25 относительно текущей)
                                AimDownSightsTimeMult = 1.2,
                                ViewModelFOV = 55,
                                Reticle = mz_spiritfire25_red, -- Материал перекрестия
                            },
                        },
                        DrawFunc = function(swep, model, wm)
                            if !wm then
                                local bodygroupLence = swep:GetInSights() and 1 or 0
                                local bodygroupFactor = swep:GetMultiSight() - 1

                                model:SetBodygroup(1, bodygroupLence)
                                model:SetBodygroup(2, bodygroupFactor)
                            end
                        end,

                        RTScope = true,
                        RTScopeSubmatIndex = 2,
                        RTScopeReticle = mz_spiritfire25_day, -- Материал перекрестия
                        RTScopeReticleScale = 0.8,
                        RTScopeShadowIntensity = 5, -- интенсивность "залунения" (тени в линзе при движении)
                        RTScopeBlackBox = false,
                        RTScopeBlackBoxShadow = false,

                        ScopeScreenRatio = 6.75,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2650,
                            y = 0,
                            width = 50,
                            height = 50,
                            textBOTTOM_LEFT = "С",
                            textTOP_RIGHT = "2.5х",
                            textBOTTOM_RIGHT = "П",
                        },
                    }
                }
        ---------------------------------------Высокократная оптика--------------------------------------
                ix.itemsList.data.weaponsAtt["mz_add_scope_bscope_01"] = {
                    name = "Прицел оптический ПЕ",
                    description = "Советский оптический прицел с увеличением 5x, разработанный для винтовок Мосина. Отличается надёжностью и простотой конструкции. Узкое поле зрения и устаревшая конструкция и материалы оказывают сильное негативное влияние на скорость прицеливания.",

                    attData = {
                        CompactName = "ПЕ",
                        Folder = "Оптика",

                        Model = "models/mz/weapons/addons/scope/add_scope_bscope_01.mdl",
                        Category = {"mz_scope_24mm"},

                        ActivateElements = {"nobscope"},

                        FoldSights = true, -- Модифицирует Bodygroup модели
                        Sights = {
                            {
                                Pos = Vector(-0.000023, 6.91057, -0.000665), --Середина лизны -3 юнитов (высокократка)
                                Ang = Angle(0, 0, 0),
                                RTScopeFOV = (8/5)*0.957, -- Формула: ((4*Magnification)/кратность)*размер линзы(Compact25 относительно текущей) (высокократка)
                                AimDownSightsTimeMult = 1.4,
                                Magnification = 2,
                                ViewModelFOV = 55
                            },
                        },
                        DrawFunc = function(swep, model, wm)
                            if !wm then
                                local bodygroupLence = swep:GetInSights() and 1 or 0
                                local bodygroupFactor = swep:GetMultiSight() - 1

                                model:SetBodygroup(1, bodygroupLence)
                                model:SetBodygroup(2, bodygroupFactor)
                            end
                        end,

                        RTScope = true,
                        RTScopeSubmatIndex = 2,
                        RTScopeReticle = mz_germanpost_red, -- Материал перекрестия
                        RTScopeReticleScale = 1.04,
                        RTScopeColorable = true,
                        RTScopeShadowIntensity = 10, -- интенсивность "залунения" (тени в линзе при движении)
                        RTScopeBlackBox = false,
                        RTScopeBlackBoxShadow = false,

                        ScopeScreenRatio = 6.75,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2950,
                            y = 0,
                            width = 100,
                            height = 50,
                            textBOTTOM_LEFT = "Б",
                            textTOP_RIGHT = "5х",
                            textBOTTOM_RIGHT = "24мм",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_scope_bscope_01a"] = {
                    name = "Прицел оптический ZF-39",
                    description = "Классический немецкий оптический прицел времен Второй мировой войны с кратностью увеличения 5x. Прочный металлический корпус выдерживает серьёзные нагрузки, однако устаревшая конструкция и материалы оказывают сильное негативное влияние на скорость прицеливания.",

                    attData = {
                        CompactName = "ZF-39",
                        Folder = "Оптика",

                        Model = "models/mz/weapons/addons/scope/add_scope_bscope_01a.mdl",
                        Category = {"mz_scope_24mm"},

                        ActivateElements = {"nobscope"},

                        FoldSights = true, -- Модифицирует Bodygroup модели
                        Sights = {
                            {
                                Pos = Vector(0.000049, 7.68241, -0.000663), --Середина лизны -3 юнитов (высокократка)
                                Ang = Angle(0, 0, 0),
                                RTScopeFOV = (8/5)*1.320, -- Формула: ((4*Magnification)/кратность)*размер линзы(Compact25 относительно текущей) (высокократка)
                                AimDownSightsTimeMult = 1.4,
                                Magnification = 2,
                                ViewModelFOV = 55
                            },
                        },
                        DrawFunc = function(swep, model, wm)
                            if !wm then
                                local bodygroupLence = swep:GetInSights() and 1 or 0
                                local bodygroupFactor = swep:GetMultiSight() - 1

                                model:SetBodygroup(1, bodygroupLence)
                                model:SetBodygroup(2, bodygroupFactor)
                            end
                        end,

                        RTScope = true,
                        RTScopeSubmatIndex = 2,
                        RTScopeReticle = mz_germanpost_red, -- Материал перекрестия
                        RTScopeReticleScale = 1,
                        RTScopeColorable = true,
                        RTScopeShadowIntensity = 10, -- интенсивность "залунения" (тени в линзе при движении)
                        RTScopeBlackBox = false,
                        RTScopeBlackBoxShadow = false,

                        ScopeScreenRatio = 6.75,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2950,
                            y = 0,
                            width = 100,
                            height = 50,
                            textBOTTOM_LEFT = "Б",
                            textTOP_RIGHT = "5х",
                            textBOTTOM_RIGHT = "24мм",
                        },
                    }
                }
    -------------------------------------------------ПЛАНКИ--------------------------------------------------
        ----------------------------------------------ТИР-1----------------------------------------------
            ix.itemsList.data.weaponsAtt["mz_add_plank_picatinny_01"] = {
                name = "Поднимающая планка (малая)",
                description = "Маленькая поднимающая планка. Позволяет немного увеличить высоту расположения прицела с креплением под планку пикатинни.",

                attData = {
                    CompactName = "Поднимающая планка (малая)",
                    Folder = "Планки",
                    SortOrder = 1,
                    MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                    CustomPros = {
                        -- Ergonomics = "+6",
                    },
                    Model = "models/mz/weapons/addons/add_plank_picatinny_01.mdl",
                    Category = {"mz_picatinny_small"},
                    Attachments = {
                        {
                            PrintName = "Косая планка",
                            Category = {
                                "mz_laser_small",
                                "mz_scope_small",
                            },
                            Pos = Vector(0, 0, -0.783935),
                            Ang = Angle(0, 0, 0),
                            Icon_Offset = Vector(0, 0, 0),
                        },
                    },

                    itemIcon = {
                        material = itemsListMaterials.ui_icon_mz_gunpack,
                        x = 3100,
                        y = 0,
                        width = 50,
                        height = 50,
                        textBOTTOM_LEFT = "М",
                        textTOP_RIGHT = "П",
                        textBOTTOM_RIGHT = "П",
                    },
                },
            }

            ix.itemsList.data.weaponsAtt["mz_add_plank_picatinny_02"] = {
                name = "Поднимающая планка (средняя)",
                description = "Средняя поднимающая планка. Позволяет немного увеличить высоту расположения прицела с креплением под планку пикатинни.",

                attData = {
                    CompactName = "Поднимающая планка (средняя)",
                    Folder = "Планки",
                    SortOrder = 2,
                    MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                    CustomPros = {
                        -- Ergonomics = "+6",
                    },
                    Model = "models/mz/weapons/addons/add_plank_picatinny_02.mdl",
                    Category = {"mz_picatinny_mid"},
                    Attachments = {
                        {
                            PrintName = "Косая планка",
                            Category = {
                                "mz_laser_small",
                                "mz_scope_small",
                                "mz_laser_mid",
                                "mz_scope_mid",
                            },
                            Pos = Vector(0, 0, -0.842268),
                            Ang = Angle(0, 0, 0),
                            Icon_Offset = Vector(0, 0, 0),
                        },
                    },

                    itemIcon = {
                        material = itemsListMaterials.ui_icon_mz_gunpack,
                        x = 3100,
                        y = 50,
                        width = 50,
                        height = 50,
                        textBOTTOM_LEFT = "С",
                        textTOP_RIGHT = "П",
                        textBOTTOM_RIGHT = "П",
                    },
                },
            }

            ix.itemsList.data.weaponsAtt["mz_add_plank_dovetale_01"] = {
                name = "Кронштейн НПЗ «Ласточкин Хвост»",
                description = "Типичный кронштейн-переходник с креплением типа «ласточкин хвост» для установки прицельных приспособлений и дополнительной гарнитуры под крепления Пикатинни. Легкий и компактный, однако все равно снижает удобность, а незначительные изъяны конструкции утяжеляют прицеливание.",

                attData = {
                    CompactName = "Кронштейн НПЗ",
                    Folder = "Планки",
                    SortOrder = 1,
                    MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                    CustomPros = {
                        -- Ergonomics = "+6",
                    },
                    Model = "models/mz/weapons/addons/add_plank_dovetail_01.mdl",
                    Category = {"mz_dovetale_mid"},
                    Attachments = {
                        {
                            PrintName = "Кронштейн",
                            Category = {
                                "mz_laser_small",
                                "mz_scope_small",
                                "mz_picatinny_small",
                                "mz_laser_mid",
                                "mz_scope_mid",
                                "mz_picatinny_mid",
                                "mz_laser_big",
                                "mz_scope_big",
                                "mz_picatinny_big",
                            },
                            Pos = Vector(-0.116126, 1.2968, -3.14764),
                            Ang = Angle(0, 0, 0),
                            Icon_Offset = Vector(0, 0, 0),
                        },
                    },

                    itemIcon = {
                        material = itemsListMaterials.ui_icon_mz_gunpack,
                        x = 3150,
                        y = 0,
                        width = 50,
                        height = 50,
                        textBOTTOM_LEFT = "C",
                        textTOP_RIGHT = "П",
                        textBOTTOM_RIGHT = "ЛХ",
                    },
                },
            }

            ix.itemsList.data.weaponsAtt["mz_add_plank_kochetov_01"] = {
                name = "Кронштейн Кочетова 24мм",
                description = "Кронштейн Кочетова с кольцами 24мм для крепления соответсвующей оптики.",

                attData = {
                    CompactName = "Кронштейн Кочетова",
                    Folder = "Планки",
                    SortOrder = 1,
                    MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                    CustomPros = {
                        -- Ergonomics = "+6",
                    },
                    Model = "models/mz/weapons/addons/add_plank_kochetov_24mm.mdl",
                    Category = {"mz_kochetov"},
                    Attachments = {
                        {
                            PrintName = "Кронштейн 24мм",
                            Category = {
                                "mz_scope_24mm",
                            },
                            Pos = Vector(1.42057, 1.17645, -2.10533),
                            Ang = Angle(0, 0, 0),
                            Icon_Offset = Vector(0, 0, 0),
                        },
                    },

                    itemIcon = {
                        material = itemsListMaterials.ui_icon_mz_gunpack,
                        x = 2550,
                        y = 100,
                        width = 50,
                        height = 50,
                        textBOTTOM_LEFT = "Б",
                        textTOP_RIGHT = "24мм",
                        textBOTTOM_RIGHT = "Кочет.",
                    },
                },
            }

            ix.itemsList.data.weaponsAtt["mz_add_plank_zf39_01"] = {
                name = "Кронштейн ZF-39",
                description = "Кронштейн ZF-39 разработанный для винтовки Kar98k с кольцами 24мм для крепления соответсвующей оптики.",

                attData = {
                    CompactName = "Кронштейн ZF-39",
                    Folder = "Планки",
                    SortOrder = 1,
                    MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                    CustomPros = {
                        -- Ergonomics = "+6",
                    },
                    Model = "models/mz/weapons/addons/add_plank_zf39_24mm.mdl",
                    Category = {"mz_zf39"},
                    Attachments = {
                        {
                            PrintName = "Кронштейн 24мм",
                            Category = {
                                "mz_scope_24mm",
                            },
                            Pos = Vector(0.31276, 0.967696, -1.4755),
                            Ang = Angle(0, 0, 0),
                            Icon_Offset = Vector(0, 0, 0),
                        },
                    },

                    itemIcon = {
                        material = itemsListMaterials.ui_icon_mz_gunpack,
                        x = 2550,
                        y = 150,
                        width = 50,
                        height = 50,
                        textBOTTOM_LEFT = "Б",
                        textTOP_RIGHT = "24мм",
                        textBOTTOM_RIGHT = "ZF-39",
                    },
                },
            }

            ix.itemsList.data.weaponsAtt["mz_add_plank_galil_01"] = {
                name = "Кронштейн GalilAR",
                description = "Кронштейн-преходник на планку Пикатинни, разработанный под крепление винтовки Galil. Конструкция не отличается излишней тяжестью, однако все равно снижает удобность, а незначительные изъяны конструкции утяжеляют прицеливание.",

                attData = {
                    CompactName = "Кронштейн GalilAR",
                    Folder = "Планки",
                    SortOrder = 1,
                    MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                    CustomPros = {
                        -- Ergonomics = "+6",
                    },
                    Model = "models/mz/weapons/addons/add_plank_galilar_01.mdl",
                    Category = {"mz_plank_galil"},
                    Attachments = {
                        {
                            PrintName = "Кронштейн GalilAR",
                            Category = {
                                "mz_laser_small",
                                "mz_scope_small",
                                "mz_picatinny_small",
                                "mz_laser_mid",
                                "mz_scope_mid",
                                "mz_picatinny_mid",
                                "mz_laser_big",
                                "mz_scope_big",
                                "mz_picatinny_big",
                            },
                            Pos = Vector(2.20531, 0.742292, -2.54267),
                            Ang = Angle(0, 0, 0),
                            Icon_Offset = Vector(0, 0, 0),
                        },
                    },

                    itemIcon = {
                        material = itemsListMaterials.ui_icon_mz_gunpack,
                        x = 3250,
                        y = 0,
                        width = 50,
                        height = 50,
                        textBOTTOM_LEFT = "Б",
                        textTOP_RIGHT = "П",
                        textBOTTOM_RIGHT = "Galil",
                    },
                },
            }

            ix.itemsList.data.weaponsAtt["mz_add_plank_vpo101_01"] = {
                name = "Кронштейн «ВПО-Арбалет»",
                description = "Кронштейн производства завода «Молот» для ВПО-101. Предназначен для установки оптических и коллиматорных прицелов на тактические винтовки. Обеспечивает надежное крепление и точную фиксацию, что улучшает прицеливание и эффективность стрельбы. Устанавливается только на ВПО-101 и ее модификациями.",

                attData = {
                    CompactName = "ВПО-Арбалет",
                    Folder = "Планки",
                    SortOrder = 1,
                    MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                    CustomPros = {
                        -- Ergonomics = "+6",
                    },
                    Model = "models/mz/weapons/addons/add_plank_vpo101_01.mdl",
                    Category = {"mz_plank_vpo101"},
                    Attachments = {
                        {
                            PrintName = "ВПО-Арбалет",
                            Category = {
                                "mz_laser_small",
                                "mz_scope_small",
                                "mz_picatinny_small",
                                "mz_laser_mid",
                                "mz_scope_mid",
                                "mz_picatinny_mid",
                                "mz_laser_big",
                                "mz_scope_big",
                                "mz_picatinny_big",
                            },
                            Pos = Vector(-0.767703, 1.5281, -2.33583),
                            Ang = Angle(0, 0, 0),
                            Icon_Offset = Vector(0, 0, 0),
                        },
                    },

                    itemIcon = {
                        material = itemsListMaterials.ui_icon_mz_gunpack,
                        x = 3250,
                        y = 100,
                        width = 50,
                        height = 50,
                        textBOTTOM_LEFT = "Б",
                        textTOP_RIGHT = "П",
                        textBOTTOM_RIGHT = "ВПО",
                    },
                },
            }
        ----------------------------------------------ТИР-2----------------------------------------------
            ix.itemsList.data.weaponsAtt["mz_add_plank_side_01"] = {
                name = "Косая планка (малая)",
                description = "Косая металлическая планка-переходник малого размера, позволяет устанавливать допонительную гарнитуру без конфликтов с уже установленными обвесами.",

                attData = {
                    CompactName = "Косая планка (малая)",
                    Folder = "Планки",
                    SortOrder = 3,
                    MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                    CustomPros = {
                        -- Ergonomics = "+6",
                    },
                    Model = "models/mz/weapons/addons/add_plank_side_01.mdl",
                    Category = {"mz_picatinny_small"},
                    Attachments = {
                        {
                            PrintName = "Косая планка",
                            Category = {
                                "mz_laser_small",
                                "mz_scope_small",
                            },
                            Pos = Vector(0, 0.982165, -0.14619),
                            Ang = Angle(0, -45, 0),
                            Icon_Offset = Vector(0, 0, 0),
                        },
                    },

                    itemIcon = {
                        material = itemsListMaterials.ui_icon_mz_gunpack,
                        x = 3050,
                        y = 0,
                        width = 50,
                        height = 50,
                        textBOTTOM_LEFT = "М",
                        textTOP_RIGHT = "П",
                        textBOTTOM_RIGHT = "П",
                    },
                },
            }

            ix.itemsList.data.weaponsAtt["mz_add_plank_dovetale_02"] = {
                name = "Кронштейн ПР-02 «Ласточкин Хвост»",
                description = "Универсальный переходник с крепления «ласточкин хвост» на Пикатинни белорусского производства. Излишний вес конструкции снижает удобность, что является единственным недостатком.",

                attData = {
                    CompactName = "Кронштейн ПР-02",
                    Folder = "Планки",
                    SortOrder = 2,
                    MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                    CustomPros = {
                        -- Ergonomics = "+6",
                    },
                    Model = "models/mz/weapons/addons/add_plank_dovetail_02.mdl",
                    Category = {"mz_dovetale_mid"},
                    Attachments = {
                        {
                            PrintName = "Кронштейн",
                            Category = {
                                "mz_laser_small",
                                "mz_scope_small",
                                "mz_picatinny_small",
                                "mz_laser_mid",
                                "mz_scope_mid",
                                "mz_picatinny_mid",
                                "mz_laser_big",
                                "mz_scope_big",
                                "mz_picatinny_big",
                            },
                            Pos = Vector(-0.631038, 1.29801, -3.10291 ),
                            Ang = Angle(0, 0, 0),
                            Icon_Offset = Vector(0, 0, 0),
                        },
                    },

                    itemIcon = {
                        material = itemsListMaterials.ui_icon_mz_gunpack,
                        x = 3150,
                        y = 50,
                        width = 50,
                        height = 50,
                        textBOTTOM_LEFT = "Б",
                        textTOP_RIGHT = "П",
                        textBOTTOM_RIGHT = "ЛХ",
                    },
                },
            }
        ----------------------------------------------ТИР-3----------------------------------------------
            ix.itemsList.data.weaponsAtt["mz_add_plank_side_02"] = {
                name = "Косая планка (средняя)",
                description = "Косая металлическая планка-переходник среднего размера, позволяет устанавливать допонительную гарнитуру без конфликтов с уже установленными обвесами.",

                attData = {
                    CompactName = "Косая планка (средняя)",
                    Folder = "Планки",
                    SortOrder = 4,
                    MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                    CustomPros = {
                        -- Ergonomics = "+6",
                    },
                    Model = "models/mz/weapons/addons/add_plank_side_02.mdl",
                    Category = {"mz_picatinny_mid"},
                    Attachments = {
                        {
                            PrintName = "Косая планка",
                            Category = {
                                "mz_laser_small",
                                "mz_laser_mid",
                                "mz_scope_small",
                                "mz_scope_mid",
                            },
                            Pos = Vector(0, 0.982165, -0.14619),
                            Ang = Angle(0, -45, 0),
                            Icon_Offset = Vector(0, 0, 0),
                        },
                    },

                    itemIcon = {
                        material = itemsListMaterials.ui_icon_mz_gunpack,
                        x = 3050,
                        y = 50,
                        width = 50,
                        height = 50,
                        textBOTTOM_LEFT = "С",
                        textTOP_RIGHT = "П",
                        textBOTTOM_RIGHT = "П",
                    },
                },
            }
    ---------------------------------------------ДУЛЬНЫЕ НАСАДКИ---------------------------------------------
        ------------------------------------------Пламегасители------------------------------------------
            ------------------------------------------ТИР-1------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_add_flh_9_01"] = {
                    name = "Пламегаситель FHP-9",
                    description = "Распространенный пистолетный пламегаситель под стандартную резьбу 9 мм. Выпускается различными оборонными предприятиями. Гасит вспышку выстрела и незначительно повышает точность огня, однако негативно сказывается на износостойкости оружия и слегка усиливает отдачу.",

                    attData = {
                        CompactName = "FHP-9", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Pistols", -- Категория, в которой будет отображаться модуль в меню.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_flh_9_01.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_9"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        SpreadMult = 0.95,
                        RecoilMult = 1.05,
                        MalfunctionMeanShotsToFailMult = 0.9,
                        CustomPros = {
                                Вспышка = "нет",
                            },
                        MuzzleParticle = "muzzleflash_suppressed",

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3400,
                            y = 0,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ПГ",
                            textBOTTOM_RIGHT = "9мм",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_flh_12x70_01"] = {
                    name = "Чок цилиндрический",
                    description = "Литой цилиндрический чок под внутренний нарез 12мм производства Ижмаш. Сужает дульное отверстие, тем самым повышая кучность стрельбы, однако использование повышает скорость износа ствола и слегка усиливает отдачу.",

                    attData = {
                        CompactName = "Чок цилиндрический", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Pistols", -- Категория, в которой будет отображаться модуль в меню.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_flh_12x70_01.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_12x70"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        SpreadMult = 0.95,
                        RecoilMult = 1.05,
                        MalfunctionMeanShotsToFailMult = 0.9,
                        CustomPros = {
                                Вспышка = "нет",
                            },
                        MuzzleParticle = "muzzleflash_suppressed",

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3800,
                            y = 200,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ПГ",
                            textBOTTOM_RIGHT = "9мм",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_flh_545_01"] = {
                    name = "Пламегаситель АКС-74у",
                    description = "Штатный пламегаситель АКС-74у производства Ижмаш, также известен как 6П26 под индексом ГРАУ. Маскирует вспышку выстрела, помогая стрелку при ведении прицельного огня, но слегка усложняет контроль отдачи. Длительное использование сказывается на состоянии оружия.",

                    attData = {
                        CompactName = "Пламегаситель АКС-74у", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_flh_545_01.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_545"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        SpreadMult = 0.95,
                        RecoilMult = 1.05,

                        MalfunctionMeanShotsToFailMult = 0.9,
                        CustomPros = {
                            Вспышка = "нет",
                        },
                        MuzzleParticle = "muzzleflash_suppressed",

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3600,
                            y = 0,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ПГ",
                            textBOTTOM_RIGHT = "5.45",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_flh_556_01"] = {
                    name = "Пламегаситель «SiG Sauer VM-88»",
                    description = "Выпускаемый компанией SiG Sauer пламегаситель. Широко используется для установки на винтовки NATO калибра 5.56. Маскирует вспышку выстрела, помогая стрелку при ведении прицельного огня, но слегка усложняет контроль отдачи. Длительное использование сказывается на состоянии оружия.",

                    attData = {
                        CompactName = "VM-88", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        -- CustomPros = {
                        --     Отдача = "-6"

                        -- }, -- Список положительных эффектов модуля.
                        -- CustomCons = {
                        --     Ergonomics = "-1",
                        -- },
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_flh_556_01.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_556"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        SpreadMult = 0.95,
                        RecoilMult = 1.05,
                        MalfunctionMeanShotsToFailMult = 0.9,
                        CustomPros = {
                            Вспышка = "нет",
                        },
                        MuzzleParticle = "muzzleflash_suppressed",

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3800,
                            y = 0,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ПГ",
                            textBOTTOM_RIGHT = "5.56",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_flh_556_01a"] = {
                    name = "Пламегаситель «Colt A2»",
                    description = "Штатный пламегаситель винтовки M4A1, выпускаемый Colt’s Manufacturing Company. Также является штатной дульной насадкой для многих оружий, используемых в странах NATO. Маскирует вспышку выстрела, помогая стрелку при ведении прицельного огня, но слегка усложняет контроль отдачи. Длительное использование сказывается на состоянии оружия.",

                    attData = {
                        CompactName = "Colt A2", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_flh_556_01a.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_556"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        SpreadMult = 0.95,
                        RecoilMult = 1.05,
                        MalfunctionMeanShotsToFailMult = 0.9,
                        CustomPros = {
                            Вспышка = "нет",
                        },
                        MuzzleParticle = "muzzleflash_suppressed",

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3800,
                            y = 50,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ПГ",
                            textBOTTOM_RIGHT = "5.56",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_flh_556_01b"] = {
                    name = "Пламегаситель «CNC Warrior»",
                    description = "Пламегаситель от американской компании CNC Warrior. Маскирует вспышку выстрела, помогая стрелку при ведении прицельного огня, но слегка усложняет контроль отдачи. Длительное использование сказывается на состоянии оружия.",

                    attData = {
                        CompactName = "Пламегаситель «CNC Warrior»", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_flh_556_01b.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_556"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        SpreadMult = 0.95,
                        RecoilMult = 1.05,
                        MalfunctionMeanShotsToFailMult = 0.9,
                        CustomPros = {
                            Вспышка = "нет",
                        },
                        MuzzleParticle = "muzzleflash_suppressed",

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3900,
                            y = 50,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ПГ",
                            textBOTTOM_RIGHT = "5.56",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_flh_762x39_01"] = {
                    name = "Пламегаситель АК-762",
                    description = "Дульное устройство, разработанное на базе штатного пламегасителя АКС-74у. Место крепления было сужено, а выходное отверстие расширено согласно требованиям образцов семейства АК под калибр 7.62 и соответствующий нарез. Пламегаситель маскирует вспышку выстрела, незначительно повышая точность, отдачу и скорость износа ствола.",

                    attData = {
                        CompactName = "Пламегаситель АК-762", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        -- CustomPros = {
                        --     Отдача = "-6"

                        -- }, -- Список положительных эффектов модуля.
                        -- CustomCons = {
                        --     Ergonomics = "-1",
                        -- },
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_flh_762x39_01.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_762x39"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        SpreadMult = 0.95,
                        RecoilMult = 1.05,
                        MalfunctionMeanShotsToFailMult = 0.9,
                        CustomPros = {
                            Вспышка = "нет",
                        },
                        MuzzleParticle = "muzzleflash_suppressed",

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3400,
                            y = 200,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ПГ",
                            textBOTTOM_RIGHT = "7.62П",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_flh_762x51_01"] = {
                    name = "Пламегаситель TBA 20C",
                    description = "Пламегаситель для классического нареза AR-10, выпускаемый серийно в странах-участниках НАТО. Являлся штатной насадкой на многих образцах вплоть до 2010-х годов. Маскирует вспышку выстрела, облегчая обзор во время стрельбы, а также незначительно повышает точность, однако слегка усложняет контроль отдачи. Длительное использование сказывается на состоянии оружия.",

                    attData = {
                        CompactName = "TBA 20C", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        -- CustomPros = {
                        --     Отдача = "-6"

                        -- }, -- Список положительных эффектов модуля.
                        -- CustomCons = {
                        --     Ergonomics = "-1",
                        -- },
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_flh_762x51_01.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_762x51"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        SpreadMult = 0.95,
                        RecoilMult = 1.05,
                        MalfunctionMeanShotsToFailMult = 0.9,
                        CustomPros = {
                            Вспышка = "нет",
                        },
                        MuzzleParticle = "muzzleflash_suppressed",

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3600,
                            y = 200,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ПГ",
                            textBOTTOM_RIGHT = ".308H",
                        },
                    }
                }
            ------------------------------------------ТИР-2------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_add_flh_9_02"] = {
                    name = "Пламегаситель «Vector 9x»",
                    description = "Пламегаситель, разработанный компанией TDI для комплектации ПП Kriss Vector. Имеет стандартный нарез 9мм. Использование насадки позволяет маскировать вспышку выстрела и слегка повышает точность, однако незначительно ускоряет износ оружия.",

                    attData = {
                        CompactName = "Vector 9x", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_flh_9_02.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_9"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        SpreadMult = 0.9,
                        MalfunctionMeanShotsToFailMult = 0.95,
                        CustomPros = {
                            Вспышка = "нет",
                        },
                        MuzzleParticle = "muzzleflash_suppressed",

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3400,
                            y = 50,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ПГ",
                            textBOTTOM_RIGHT = "9мм",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_flh_12x70_02"] = {
                    name = "Пламегаситель «Remington Tactical Choke»",
                    description = "Насадка на ствол 12мм производства компании Remington, сочетающая в себе цилиндрический чок и пламегаситель. Гасит вспышку выстрела и повышает кучность стрельбы, однако немного понижает износостойкость.",

                    attData = {
                        CompactName = "Remington Tactical Choke", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_flh_12x70_02.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_12x70"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        SpreadMult = 0.9,
                        MalfunctionMeanShotsToFailMult = 0.95,
                        CustomPros = {
                            Вспышка = "нет",
                        },
                        MuzzleParticle = "muzzleflash_suppressed",

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3800,
                            y = 250,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ПГ",
                            textBOTTOM_RIGHT = "12x70",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_flh_545_02"] = {
                    name = "Пламегаситель «Вий»",
                    description = "Пламегаситель «Вий», производимый одноименной оружейной компанией, под калибр 5.45. Тип резьбы соответствует АК-74. Гасит вспышку выстрела и слегка повышает точность оружия за счет фактического удлинения ствола. Использование незначительно ускоряет износ оружия.",

                    attData = {
                        CompactName = "Вий", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_flh_545_02.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_545"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        SpreadMult = 0.9,
                        MalfunctionMeanShotsToFailMult = 0.95,
                        CustomPros = {
                            Вспышка = "нет",
                        },
                        MuzzleParticle = "muzzleflash_suppressed",

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3600,
                            y = 50,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ПГ",
                            textBOTTOM_RIGHT = "5.45",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_flh_556_02"] = {
                    name = "Пламегаситель KAC M4-15",
                    description = "Дульный насадка от американской Knight's Armament Company под нарез 5.56, призванная ликвидировать вспышку выстрела. Слегка повышает точность. Использование незначительно ускоряет износ оружия.",

                    attData = {
                        CompactName = "KAC M4-15", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_flh_556_02.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_556"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        SpreadMult = 0.9,
                        MalfunctionMeanShotsToFailMult = 0.95,
                        CustomPros = {
                            Вспышка = "нет",
                        },
                        MuzzleParticle = "muzzleflash_suppressed",

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3850,
                            y = 0,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ПГ",
                            textBOTTOM_RIGHT = "5.56",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_flh_762x39_02"] = {
                    name = "Пламегаситель НС-7",
                    description = "Пламегаситель от отечественной оружейной компании ЭСТ для оружий калибра 7.62х39, имеющих нарез, аналогичный АКМ. Маскирует вспышку выстрела и повышает точность, однако немного ускоряет износ ствола.",

                    attData = {
                        CompactName = "НС-7", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_flh_762x39_02.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_762x39"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        SpreadMult = 0.9,
                        MalfunctionMeanShotsToFailMult = 0.95,
                        CustomPros = {
                            Вспышка = "нет",
                        },
                        MuzzleParticle = "muzzleflash_suppressed",

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3400,
                            y = 250,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ПГ",
                            textBOTTOM_RIGHT = "7.62П",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_flh_762x51_02"] = {
                    name = "ДТКП BMD-7",
                    description = "Дульная насадка под нарез .308 NATO, хорошо маскирующая выстрел, а также слегка повышающая точность благодаря современной конструкции. Использование незначительно ускоряет износ оружия.",

                    attData = {
                        CompactName = "BMD-7", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_flh_762x51_02.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_762x51"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        SpreadMult = 0.9,
                        MalfunctionMeanShotsToFailMult = 0.95,
                        CustomPros = {
                            Вспышка = "нет",
                        },
                        MuzzleParticle = "muzzleflash_suppressed",

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3600,
                            y = 250,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ПГ",
                            textBOTTOM_RIGHT = ".308H",
                        },
                    }
                }
            ------------------------------------------ТИР-3------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_add_flh_9_03"] = {
                    name = "Пламегаситель «UB-Flash»",
                    description = "Современный отечественный пламегаситель Uno-Brake под калибры 9мм. Помимо ликвидации вспышки, повышает точность ведения прицельного огня за счет конструкции.",

                    attData = {
                        CompactName = "UB-Flash", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_flh_9_03.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_9"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        SpreadMult = 0.8,
                        CustomPros = {
                            Вспышка = "нет",
                        },
                        MuzzleParticle = "muzzleflash_suppressed",

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3450,
                            y = 0,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ПГ",
                            textBOTTOM_RIGHT = "9мм",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_flh_12x70_03"] = {
                    name = "Пламегаситель «Termite-12K»",
                    description = "Пламегаситель от компании SilencerCo, предназначенный для установки на ружья 12-го калибра. Гасит вспышку и заметно повышает кучность и дальность полета дроби.",

                    attData = {
                        CompactName = "Termite-12K", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_flh_12x70_03.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_12x70"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        SpreadMult = 0.8,
                        CustomPros = {
                            Вспышка = "нет",
                        },
                        MuzzleParticle = "muzzleflash_suppressed",

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3850,
                            y = 200,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ПГ",
                            textBOTTOM_RIGHT = "12x70",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_flh_545_03"] = {
                    name = "ДТКП РПК-16",
                    description = "Дульное устройство, предназначенное для установки на РПК-16 и семейство АК-74. Маскирует вспышку выстрела и повышает точность выстрела благодаря конструкционным особенностям.",

                    attData = {
                        CompactName = "ДТКП РПК-16", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_flh_545_03.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_545"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        SpreadMult = 0.8,
                        CustomPros = {
                            Вспышка = "нет",
                        },
                        MuzzleParticle = "muzzleflash_suppressed",

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3650,
                            y = 0,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ПГ",
                            textBOTTOM_RIGHT = "5.45",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_flh_556_03"] = {
                    name = "Пламегаситель «Phantom»",
                    description = "Пламегаситель для винтовок калибра 5.56x45, предназначенный для установки на систему AR-15. Маскирует вспышку выстрела и повышает точность выстрела благодаря конструкционным особенностям.",

                    attData = {
                        CompactName = "Phantom", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_flh_556_03.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_556"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        SpreadMult = 0.8,
                        CustomPros = {
                            Вспышка = "нет",
                        },
                        MuzzleParticle = "muzzleflash_suppressed",

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3850,
                            y = 50,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ПГ",
                            textBOTTOM_RIGHT = "5.56",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_flh_762x39_03"] = {
                    name = "Пламегаситель АКМЛ",
                    description = "Специальная дульная насадка, разработанная для стрелкового комплекса АКМ, призванная снизить засвет от вспышки при стрельбе. Помимо ликвидации вспышки, значительно повышает точность огня.",

                    attData = {
                        CompactName = "Пламегаситель АКМЛ", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_flh_762x39_03.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_762x39"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        SpreadMult = 0.8,
                        CustomPros = {
                            Вспышка = "нет",
                        },
                        MuzzleParticle = "muzzleflash_suppressed",

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3450,
                            y = 200,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ПГ",
                            textBOTTOM_RIGHT = "7.62П",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_flh_762x51_03"] = {
                    name = "Пламегаситель «Uno-Brake L»",
                    description = "Современный отечественный пламегаситель Uno-Brake L под калибр .308 NATO. Помимо ликвидации вспышки, заметно повышает точность ведения прицельного огня за счет собственной длины.",

                    attData = {
                        CompactName = "Uno-Brake L", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_flh_762x51_03.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_762x51"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        SpreadMult = 0.8,
                        CustomPros = {
                            Вспышка = "нет",
                        },
                        MuzzleParticle = "muzzleflash_suppressed",

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3650,
                            y = 200,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ПГ",
                            textBOTTOM_RIGHT = ".308H",
                        },
                    }
                }
            ------------------------------------------ТИР-4------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_add_flh_9_04"] = {
                    name = "Дульное устройство XR-9",
                    description = "Современное камерное дульное устройство для оружия 9мм калибров. Гасит вспышку выстрела, повышает точность и немного ослабляет отдачу выстрела за счет стабилизирующей конструкции.",

                    attData = {
                        CompactName = "XR-9", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 4,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_flh_9_04.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_9"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        SpreadMult = 0.7,
                        RecoilMult = 0.9,
                        CustomPros = {
                            Вспышка = "нет",
                        },
                        MuzzleParticle = "muzzleflash_suppressed",

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3450,
                            y = 50,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ПГ",
                            textBOTTOM_RIGHT = "9мм",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_flh_12x70_04"] = {
                    name = "Пламегаситель 12-03М",
                    description = "Пламегаситель, производимый оружейным заводом «Молот», для установки на ружья 12-го калибра. Гасит вспышку выстрела и значительно повышает кучность, при этом немного снижая отдачу выстрела.",

                    attData = {
                        CompactName = "12-03М", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 4,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_flh_12x70_04.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_12x70"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        SpreadMult = 0.7,
                        RecoilMult = 0.9,
                        CustomPros = {
                            Вспышка = "нет",
                        },
                        MuzzleParticle = "muzzleflash_suppressed",

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3850,
                            y = 250,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ПГ",
                            textBOTTOM_RIGHT = "12x70",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_flh_545_04"] = {
                    name = "Пламегаситель «Марев»",
                    description = "Пламегаситель калибра 5.45х39 для семейства АК-74 производства оружейного завода «Молот». Убирает вспышку при стрельбе, значительно повышает точность огня и немного ослабляет отдачу.",

                    attData = {
                        CompactName = "Марев", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 4,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_flh_545_04.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_545"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        SpreadMult = 0.7,
                        RecoilMult = 0.9,
                        CustomPros = {
                            Вспышка = "нет",
                        },
                        MuzzleParticle = "muzzleflash_suppressed",

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3650,
                            y = 50,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ПГ",
                            textBOTTOM_RIGHT = "5.45",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_flh_556_04"] = {
                    name = "Пламегаситель FH-QD",
                    description = "Современный пламегаситель от израильской компании IWI. Подходит для всех оружий со стандартным нарезом AR-15 и калибром 5.56x45. Особая конструкция не только гасит вспышку и повышает точность стрельбы, но еще и слегка снижает отдачу.",

                    attData = {
                        CompactName = "FH-QD", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 4,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_flh_556_04.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_556"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        SpreadMult = 0.7,
                        RecoilMult = 0.9,
                        CustomPros = {
                            Вспышка = "нет",
                        },
                        MuzzleParticle = "muzzleflash_suppressed",

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3900,
                            y = 0,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ПГ",
                            textBOTTOM_RIGHT = "5.56",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_flh_762x39_04"] = {
                    name = "Пламегаситель «Antidote»",
                    description = "Дульный тормоз-компенсатор от компании Venom Tactical, предназначен для установки на АКМ и оружия с аналогичным калибром и нарезом. Благодаря конструкционным решениям не только качественно маскирует вспышку, но и заметно облегчает ведение прицельного огня, как в одиночном режиме, так и в автоматическом.",

                    attData = {
                        CompactName = "Antidote", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 4,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_flh_762x39_04.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_762x39"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        SpreadMult = 0.7,
                        RecoilMult = 0.9,
                        CustomPros = {
                            Вспышка = "нет",
                        },
                        MuzzleParticle = "muzzleflash_suppressed",

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3450,
                            y = 250,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ПГ",
                            textBOTTOM_RIGHT = "7.62П",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_flh_762x51_04"] = {
                    name = "Пламегаситель «A-Fort 7.62»",
                    description = "Современный пламегаситель, выпускаемый военно-промышленными компаниями под стандартизацией STANAG под систему AR-10. Благодаря конструкционным решениям не только качественно маскирует вспышку, но и заметно облегчает ведение прицельного огня как в одиночном режиме, так и в автоматическом.",

                    attData = {
                        CompactName = "A-Fort 7.62", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 4,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_flh_762x51_04.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_762x51"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        SpreadMult = 0.7,
                        RecoilMult = 0.9,
                        CustomPros = {
                            Вспышка = "нет",
                        },
                        MuzzleParticle = "muzzleflash_suppressed",

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3650,
                            y = 250,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ПГ",
                            textBOTTOM_RIGHT = ".308H",
                        },
                    }
                }
        -----------------------------------------------ДТК-----------------------------------------------
            ------------------------------------------ТИР-1------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_add_dtk_9_01"] = {
                    name = "ДТК «Молот-9»",
                    description = "Выпускаемый на одноименном заводе дульный тормоз «Молот-9». Гасит отдачу, облегчая контроль при выстреле, однако стрельба с установленным ДТК негативно сказывается на состоянии оружия и слегка снижает точность.",

                    attData = {
                        CompactName = "Молот-9", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Pistols", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_dtk_9_01.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_9"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        RecoilMult = 0.95,
                        SpreadMult = 1.05,
                        MalfunctionMeanShotsToFailMult = 0.9,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3300,
                            y = 0,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ДТК",
                            textBOTTOM_RIGHT = "9мм",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_dtk_12x70_01"] = {
                    name = "Чок плосский «Alligator»",
                    description = "Чок для ствола 12мм со сплющенным выходным отверстием и продольными разрезами, равномерно распределяет отдачу выстрела, немного облегчая контроль оружия. Установка негативно сказывается на износостойкости оружия и слегка снижает точность выстрела.",

                    attData = {
                        CompactName = "Alligator", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Pistols", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_dtk_12x70_01.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_12x70"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        RecoilMult = 0.95,
                        SpreadMult = 1.05,
                        MalfunctionMeanShotsToFailMult = 0.9,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3700,
                            y = 200,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ДТК",
                            textBOTTOM_RIGHT = "12x70",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_dtk_545_01"] = {
                    name = "ДТК АК-74",
                    description = "Штатный дульный тормоз АК-74 производства Ижмаш, также известен как 6П20 под индексом ГРАУ. Слегка снижает отдачу, позволяя стрелку легче контролировать оружие, но незначительно снижает точность. Длительное использование ускоряет износ оружия.",

                    attData = {
                        CompactName = "ДТК АК-74", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_dtk_545_01.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_545"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        RecoilMult = 0.95,
                        SpreadMult = 1.05,
                        MalfunctionMeanShotsToFailMult = 0.9,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3500,
                            y = 0,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ДТК",
                            textBOTTOM_RIGHT = "5.45",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_dtk_556_01"] = {
                    name = "ДТК TBI 223C",
                    description = "Дульный тормоз-компенсатор под калибр 5.56 NATO от компании Thunder Beast. Слегка гасит отдачу выстрела, упрощая стрельбу длинными очередями, но незначительно снижает точность. Длительное использование ускоряет износ оружия.",

                    attData = {
                        CompactName = "TBI 223C", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_dtk_556_01.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_556"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        RecoilMult = 0.95,
                        SpreadMult = 1.05,
                        MalfunctionMeanShotsToFailMult = 0.9,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3700,
                            y = 0,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ДТК",
                            textBOTTOM_RIGHT = "5.45",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_dtk_762x39_01"] = {
                    name = "ДТК АКМ",
                    description = "Штатный дульный тормоз АКМ, призванный немного снизить отдачу при стрельбе небольшими очередями. Устанавливается на все оружия с аналогичным нарезом. Использование данной насадки усиливает износ ствола и немного снижает точность.",

                    attData = {
                        CompactName = "ДТК АКМ", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_dtk_762x39_01.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_762x39"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        RecoilMult = 0.95,
                        SpreadMult = 1.05,
                        MalfunctionMeanShotsToFailMult = 0.9,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3300,
                            y = 200,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ДТК",
                            textBOTTOM_RIGHT = "7.62П",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_dtk_762x51_01"] = {
                    name = "ДТК KAC MB-10",
                    description = "Дульный тормоз, разработанный американской Knight's Armament Company, предназначенный установки на автоматические винтовки системы АР-10. Незначительно гасит отдачу, упрощая ведение автоматического огня, но слегка снижает точность. Длительное использование ускоряет износ оружия.",

                    attData = {
                        CompactName = "KAC MB-10", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_dtk_762x51_01.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_762x51"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        RecoilMult = 0.95,
                        SpreadMult = 1.05,
                        MalfunctionMeanShotsToFailMult = 0.9,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3500,
                            y = 200,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ДТК",
                            textBOTTOM_RIGHT = ".308H",
                        },
                    }
                }
            ------------------------------------------ТИР-2------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_add_dtk_9_02"] = {
                    name = "ДТК ПП-9-01",
                    description = "Штатный дульный тормоз пистолета-пулемета «Витязь» производства Ижмаш. Имеет нарез под ствол 9мм. Компенсирует отдачу выстрела, но незначительно ускоряет износ оружия.",

                    attData = {
                        CompactName = "ПП-9-01", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Pistols", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_dtk_9_02.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_9"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        RecoilMult = 0.9,
                        MalfunctionMeanShotsToFailMult = 0.95,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3300,
                            y = 50,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ДТК",
                            textBOTTOM_RIGHT = "9мм",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_dtk_12x70_02"] = {
                    name = "ДТК ТОЗ-12",
                    description = "Дульный тормоз, выпускаемый Тульским оружейным заводом для различных образцов оружия 12-го калибра. Гасит отдачу, однако использование насадки немного ускоряет износ ствола.",

                    attData = {
                        CompactName = "ТОЗ-12", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Pistols", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_dtk_12x70_02.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_12x70"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        RecoilMult = 0.9,
                        MalfunctionMeanShotsToFailMult = 0.95,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3700,
                            y = 250,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ДТК",
                            textBOTTOM_RIGHT = "12x70",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_dtk_545_02"] = {
                    name = "ДТК «Вектор-5»",
                    description = "Дульный тормоз для семейства АК-74 от компании «Вектор». Снижает отдачу выстрела, облегчая контроль оружия, особенно при ведении автоматического огня. Стрельба с установленным ДТК «Вектор» незначительно сказывается на состоянии оружия.",

                    attData = {
                        CompactName = "Вектор-5", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_dtk_545_02.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_545"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        RecoilMult = 0.9,
                        MalfunctionMeanShotsToFailMult = 0.95,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3500,
                            y = 50,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ДТК",
                            textBOTTOM_RIGHT = "5.45",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_dtk_556_02"] = {
                    name = "ДТК «TPI Compact»",
                    description = "Дульный тормоз-компенсатор для установки на системы AR-15 и оружие, имеющее аналогичный нарез. Конструкция позволяет снизить отдачу выстрела, но незначительно ускоряет износ оружия.",

                    attData = {
                        CompactName = "TPI Compact", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_dtk_556_02.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_556"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        RecoilMult = 0.9,
                        MalfunctionMeanShotsToFailMult = 0.95,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3700,
                            y = 50,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ДТК",
                            textBOTTOM_RIGHT = "5.56",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_dtk_762x39_02"] = {
                    name = "ДТК АК-762",
                    description = "Дульное устройство, разработанное на базе штатного ДТК АК-74. Место крепления было сужено, а выходное отверстие расширено согласно требованиям образцов семейства АК под калибр 7.62 и соответствующий нарез. Дульный тормоз снижает отдачу, обеспечивая легкий контроль оружия при стрельбе длинными очередями. Стрельба с установленной насадкой незначительно сказывается на состоянии оружия.",

                    attData = {
                        CompactName = "ДТК АК-762", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_dtk_762x39_02.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_762x39"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        RecoilMult = 0.9,
                        MalfunctionMeanShotsToFailMult = 0.95,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3300,
                            y = 250,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ДТК",
                            textBOTTOM_RIGHT = "7.62П",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_dtk_762x51_02"] = {
                    name = "ДТК DA-AR10",
                    description = "Дульный тормоз-компенсатор, выпускаемый дочерним отделением SilencerCo для установки на винтовки типа AR-10. Снижает отдачу, обеспечивая легкий контроль оружия при стрельбе длинными очередями. Стрельба с установленной насадкой незначительно сказывается на состоянии оружия.",

                    attData = {
                        CompactName = "DA-AR10", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_dtk_762x51_02.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_762x51"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        RecoilMult = 0.9,
                        MalfunctionMeanShotsToFailMult = 0.95,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3500,
                            y = 250,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ДТК",
                            textBOTTOM_RIGHT = ".308H",
                        },
                    }
                }
            ------------------------------------------ТИР-3------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_add_dtk_9_03"] = {
                    name = "ДТК «Strike Ind. G4»",
                    description = "Широко распространенный пистолетный дульный тормоз от компании Stike Indastis под калибры 9мм. Заметно компенсирует отдачу оружия.",

                    attData = {
                        CompactName = "Strike Ind. G4", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Pistols", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_dtk_9_03.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_9"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        RecoilMult = 0.8,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3350,
                            y = 0,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ДТК",
                            textBOTTOM_RIGHT = "9мм",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_dtk_12x70_03"] = {
                    name = "Дульный тормоз «Зенит-12»",
                    description = "Дульный тормоз «Зенит», выпускаемый одноименной оружейной компанией. Подходит к оружию со стволом 12мм, имеющим внутренний нарез. Хорошо компенсирует отдачу выстрела, облегчая контроль над оружием.",

                    attData = {
                        CompactName = "Зенит-12", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Pistols", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_dtk_12x70_03.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_12x70"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        RecoilMult = 0.8,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3750,
                            y = 200,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ДТК",
                            textBOTTOM_RIGHT = "12x70",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_dtk_545_03"] = {
                    name = "ДТК АК-12",
                    description = "Штатный дульный тормоз АК-12 производства Ижмаш, устанавливается на стандартный нарез АК-74. Значительно компенсирует отдачу выстрела, позволяя стрелку комфортно вести стрельбу большими очередями и в автоматическом режиме.",

                    attData = {
                        CompactName = "ДТК АК-12", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_dtk_545_03.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_545"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        RecoilMult = 0.8,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3550,
                            y = 0,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ДТК",
                            textBOTTOM_RIGHT = "5.45",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_dtk_556_03"] = {
                    name = "ДТК B-MB223",
                    description = "Дульный тормоз для оружия калибра 5.56 со стандартным нарезом, произведенный компанией Bulltec. Значительно компенсирует отдачу выстрела, позволяя стрелку комфортно вести стрельбу большими очередями и в автоматическом режиме.",

                    attData = {
                        CompactName = "B-MB223", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_dtk_556_03.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_556"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        RecoilMult = 0.8,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3750,
                            y = 0,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ДТК",
                            textBOTTOM_RIGHT = "5.56",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_dtk_762x39_03"] = {
                    name = "ДТК «Буран»",
                    description = "Дульный тормоз производства Ижмаш для АКМ и семейства АК под 7.62 с аналогичным нарезом. Значительно компенсирует отдачу выстрела, позволяя стрелку комфортно вести стрельбу большими очередями и в автоматическом режиме.",

                    attData = {
                        CompactName = "Буран", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_dtk_762x39_03.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_762x39"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        RecoilMult = 0.8,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3350,
                            y = 200,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ДТК",
                            textBOTTOM_RIGHT = "7.62П",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_dtk_762x51_03"] = {
                    name = "ДТК LR308",
                    description = "Выпускаемый компанией DPMS для собственной серии винтовок под калибр .308 Win дульный тормоз. Значительно компенсирует отдачу, обеспечивая комфортную автоматическую стрельбу.",

                    attData = {
                        CompactName = "LR308", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_dtk_762x51_03.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_762x51"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        RecoilMult = 0.8,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3550,
                            y = 200,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ДТК",
                            textBOTTOM_RIGHT = ".308H",
                        },
                    }
                }
            ------------------------------------------ТИР-4------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_add_dtk_9_04"] = {
                    name = "ДТК «Lone Wolf CP-9»",
                    description = "Дульный тормоз-компенсатор производства Lone Wolf под стандартный нарез 9мм. Значительно облегчает контроль отдачи и немного повышает точность стрельбы.",

                    attData = {
                        CompactName = "Lone Wolf CP-9", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 4,
                        MenuCategory = "ARC9 MZ - Attachments Pistols", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_dtk_9_04.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_9"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        SpreadMult = 0.9,
                        RecoilMult = 0.7,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3350,
                            y = 50,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ДТК",
                            textBOTTOM_RIGHT = "9мм",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_dtk_12x70_04"] = {
                    name = "Чок SGM-T «Shark»",
                    description = "Ружейный глушитель для оружий калибра 12мм, выпускаемый Ижевским механическим заводом. Изначально предназначался для установки на ружия MP-133. Маскирует выспышку и снижает громкость хлопка при выстреле, хотя негативно сказывается на скорости износа оружия.",

                    attData = {
                        CompactName = "SGM-T «Shark»", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 4,
                        MenuCategory = "ARC9 MZ - Attachments Pistols", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_dtk_12x70_04.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_12x70"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        SpreadMult = 0.9,
                        RecoilMult = 0.7,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3750,
                            y = 250,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ДТК",
                            textBOTTOM_RIGHT = "12x70",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_dtk_545_04"] = {
                    name = "ДТК «Зенит-01»",
                    description = "Дульный тормоз «Зенит», выпускаемый одноименной оружейной компанией. Подходит к оружию с типом нареза АК-74, обеспечивая отличный контроль над отдачей оружия и слегка повышая точность стрельбы.",

                    attData = {
                        CompactName = "Зенит-01", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 4,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_dtk_545_04.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_545"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        SpreadMult = 0.9,
                        RecoilMult = 0.7,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3550,
                            y = 50,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ДТК",
                            textBOTTOM_RIGHT = "5.45",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_dtk_556_04"] = {
                    name = "ДТК «Сhimera AC155»",
                    description = "Дульный тормоз-компенсатор, произведенный SilencerCo для винтовок семейства AR-15. Обеспечивает отличный контроль над отдачей оружия и слегка повышает точность стрельбы.",

                    attData = {
                        CompactName = "Сhimera AC155", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 4,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_dtk_556_04.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_556"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        SpreadMult = 0.9,
                        RecoilMult = 0.7,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3750,
                            y = 50,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ДТК",
                            textBOTTOM_RIGHT = "5.56",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_dtk_762x39_04"] = {
                    name = "ДТК «Цитадель-7»",
                    description = "Современный отечественный ДТК для АКМ и аналогичных, под калибр 7.62х39. Обеспечивает отличный контроль над отдачей оружия и слегка повышает точность стрельбы.",

                    attData = {
                        CompactName = "Цитадель-7", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 4,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_dtk_762x39_04.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_762x39"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        SpreadMult = 0.9,
                        RecoilMult = 0.7,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3350,
                            y = 250,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ДТК",
                            textBOTTOM_RIGHT = "7.62П",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_dtk_762x51_04"] = {
                    name = "ДТК M11",
                    description = "Дульный тормоз-компенсатор, предназначенный для крупнокалиберных винтовок и пулеметов. Подходит под стандартный нарез 7.62x51 NATO. Отлично минимизирует отдачу, значительно снижая усилия стрелка для контроля оружия, а также положительно сказывается на точности даже при продолжительном автоматическом огне.",

                    attData = {
                        CompactName = "M11", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 4,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_dtk_762x51_04.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_762x51"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        SpreadMult = 0.9,
                        RecoilMult = 0.7,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3550,
                            y = 250,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "ДТК",
                            textBOTTOM_RIGHT = ".308H",
                        },
                    }
                }
        --------------------------------------------Глушители--------------------------------------------
            ------------------------------------------ТИР-1------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_add_silencer_9_01"] = {
                    name = "Глушитель ПБС-9",
                    description = "Советский однокамерный прибор для бесшумной стрельбы. Предназначен для калибра 9х18 ПМ, однако совместим со всем оружием 9мм, имеющим стандартный нарез. Маскирует вспышку и снижает громкость хлопка при выстреле, хотя негативно сказывается на скорости износа оружия.",

                    attData = {
                        PrintName = "Глушитель ПБС-9", -- Имя модуля, отображаемое в меню.
                        CompactName = "ПБС-9", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        MuzzleParticle = "muzzleflash_suppressed",
                        Silencer = true,
                        Model = "models/mz/weapons/addons/muzzle/add_silencer_9_01.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_9"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        MalfunctionMeanShotsToFailMult = 0.85,
                        CustomPros = {
                            Вспышка = "нет",
                            Звук = "приглушен",
                        },

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3300,
                            y = 100,
                            width = 100,
                            height = 50,
                            textTOP_RIGHT = "ПБС",
                            textBOTTOM_RIGHT = "9мм",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_silencer_12x70_01"] = {
                    name = "Глушитель MP-12-06",
                    description = "Ружейный глушитель для оружий калибра 12мм, выпускаемый Ижевским механическим заводом. Изначально предназначался для установки на ружия MP-133. Маскирует выспышку и снижает громкость хлопка при выстреле, хотя негативно сказывается на скорости износа оружия.",

                    attData = {
                        CompactName = "MP-12-06", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        MuzzleParticle = "muzzleflash_suppressed",
                        Silencer = true,
                        Model = "models/mz/weapons/addons/muzzle/add_silencer_12x70_01.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_12x70_silencer"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        MalfunctionMeanShotsToFailMult = 0.85,
                        CustomPros = {
                            Вспышка = "нет",
                            Звук = "приглушен",
                        },

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3700,
                            y = 300,
                            width = 100,
                            height = 50,
                            textTOP_RIGHT = "ПБС",
                            textBOTTOM_RIGHT = "12x70",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_silencer_12x70_01a"] = {
                    name = "Глушитель «Monolith-DS»",
                    description = "Глушитель производимый компанией Advanced Armament Corporation, для установки на двуствольные ружья. Устанавливается на внутренний нарез ствола 12мм. Маскирует выспышку и снижает громкость хлопка при выстреле, хотя негативно сказывается на скорости износа оружия.",

                    attData = {
                        CompactName = "Monolith-DS", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        MuzzleParticle = "muzzleflash_suppressed",
                        Silencer = true,
                        Model = "models/mz/weapons/addons/muzzle/add_silencer_12x70_01a.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_12x70_duo"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        ActivateElements = {"nomuzzle12x70"},

                        MalfunctionMeanShotsToFailMult = 0.75,
                        CustomPros = {
                            Вспышка = "нет",
                            Звук = "приглушен",
                        },

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3900,
                            y = 200,
                            width = 100,
                            height = 50,
                            textTOP_RIGHT = "ПБС",
                            textBOTTOM_RIGHT = "12x70",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_silencer_545_01"] = {
                    name = "Глушитель ПБС-4",
                    description = "Советский многокамерный глушитель, производства НИИ «Точмаш». Маскирует выспышку и снижает громкость хлопка при выстреле, хотя негативно сказывается на скорости износа оружия.",

                    attData = {
                        CompactName = "ПБС-4", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        MuzzleParticle = "muzzleflash_suppressed",
                        Silencer = true,
                        Model = "models/mz/weapons/addons/muzzle/add_silencer_545_01.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_545"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        MalfunctionMeanShotsToFailMult = 0.85,
                        CustomPros = {
                            Вспышка = "нет",
                            Звук = "приглушен",
                        },

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3500,
                            y = 100,
                            width = 100,
                            height = 50,
                            textTOP_RIGHT = "ПБС",
                            textBOTTOM_RIGHT = "5.45",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_silencer_556_01"] = {
                    name = "Глушитель «Airsoft A556»",
                    description = "Советский многокамерный глушитель, производства НИИ «Точмаш». Маскирует выспышку и снижает громкость хлопка при выстреле, хотя негативно сказывается на скорости износа оружия.",

                    attData = {
                        CompactName = "Airsoft A556", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        MuzzleParticle = "muzzleflash_suppressed",
                        Silencer = true,
                        Model = "models/mz/weapons/addons/muzzle/add_silencer_556_01.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_556"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        MalfunctionMeanShotsToFailMult = 0.85,
                        CustomPros = {
                            Вспышка = "нет",
                            Звук = "приглушен",
                        },

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3700,
                            y = 100,
                            width = 100,
                            height = 50,
                            textTOP_RIGHT = "ПБС",
                            textBOTTOM_RIGHT = "5.56",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_silencer_762x39_01"] = {
                    name = "Глушитель РОТОР 7.62",
                    description = "Компактный глушитель от компании «РОТОР-43» для АК под калибр 7.62x39. Маскирует вспышку и снижает громкость хлопка при выстреле, хотя негативно сказывается на скорости износа оружия.",

                    attData = {
                        CompactName = "РОТОР 7.62", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        MuzzleParticle = "muzzleflash_suppressed",
                        Silencer = true,
                        Model = "models/mz/weapons/addons/muzzle/add_silencer_762x39_01.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_762x39"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        MalfunctionMeanShotsToFailMult = 0.85,
                        CustomPros = {
                            Вспышка = "нет",
                            Звук = "приглушен",
                        },

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3300,
                            y = 300,
                            width = 100,
                            height = 50,
                            textTOP_RIGHT = "ПБС",
                            textBOTTOM_RIGHT = "7.62П",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_silencer_762x51_01"] = {
                    name = "Глушитель «РОТОР-N»",
                    description = "Экспортный вариант российского глушителя под нарез 7,62х51 NATO. От оригинала отличается типом крепления, а также длинной, что повлияло на характеристики. Маскирует вспышку и снижает громкость хлопка при выстреле, хотя негативно сказывается на скорости износа оружия.",

                    attData = {
                        CompactName = "РОТОР-N", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        MuzzleParticle = "muzzleflash_suppressed",
                        Silencer = true,
                        Model = "models/mz/weapons/addons/muzzle/add_silencer_762x51_01.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_762x51"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        MalfunctionMeanShotsToFailMult = 0.85,
                        CustomPros = {
                            Вспышка = "нет",
                            Звук = "приглушен",
                        },

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3500,
                            y = 300,
                            width = 100,
                            height = 50,
                            textTOP_RIGHT = "ПБС",
                            textBOTTOM_RIGHT = ".308H",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_silencer_762_mult_01"] = {
                    name = "Глушитель «Jet-U Mult 7.62»",
                    description = "Глушитель, разработанный финляндской компанией Ase Utra для использования с калибрами до .308 win. Его конструкция обеспечивает значительное снижение громкости выстрела и маскировку дульной вспышки, что делает его идеальным для тактических операций. Благодаря универсальному креплению, он совместим с широким спектром оружия, хотя его использование может ускорить износ ствола из-за повышенного давления.",

                    attData = {
                        CompactName = "Jet-U", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        MuzzleParticle = "muzzleflash_suppressed",
                        Silencer = true,
                        Model = "models/mz/weapons/addons/muzzle/mz_add_silencer_762_mult_01.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_762_mult"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        MalfunctionMeanShotsToFailMult = 0.85,
                        CustomPros = {
                            Вспышка = "нет",
                            Звук = "приглушен",
                        },

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3900,
                            y = 150,
                            width = 100,
                            height = 50,
                            textTOP_RIGHT = "ПБС",
                            textBOTTOM_RIGHT = "7.62M",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_silencer_vpo101_01"] = {
                    name = "Глушитель ВПО-101",
                    description = "Глушитель производства завода «Молот» для ВПО-101. Может устанавливаться только на винтовки с соответствующим типом крепления и калибром 7.62x51 мм. Эффективно снижает громкость выстрела, устраняет дульную вспышку и немного улучшает точность, однако ускоряет износ оружия из-за повышенного давления и усложняет контроль отдачи относительно ствола без данного устройства.",

                    attData = {
                        CompactName = "Глушитель ВПО-101", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        MuzzleParticle = "muzzleflash_suppressed",
                        Silencer = true,
                        Model = "models/mz/weapons/addons/muzzle/add_silencer_vpo101_01.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_vpo101"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        SpreadMult = 0.95,
                        RecoilMult = 1.05,
                        CustomPros = {
                            Вспышка = "нет",
                            Звук = "приглушен",
                        },

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3900,
                            y = 300,
                            width = 150,
                            height = 50,
                            textTOP_RIGHT = "ПБС",
                            textBOTTOM_RIGHT = "ВПО",
                        },
                    }
                }
            ------------------------------------------ТИР-2------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_add_silencer_9_02"] = {
                    name = "Глушитель SRD9",
                    description = "Глушитель, созданный компанией Sig Sauer для пистолетов калибра 9 мм, устанавливается на стандартную резьбу. Он эффективно снижает громкость выстрела, устраняет вспышку, незначительно повышает точность и уменьшает отдачу, но при этом ускоряет износ оружия.",

                    attData = {
                        CompactName = "SRD9", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Pistols", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        MuzzleParticle = "muzzleflash_suppressed",
                        Silencer = true,
                        Model = "models/mz/weapons/addons/muzzle/add_silencer_9_02.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_9"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        MalfunctionMeanShotsToFailMult = 0.9,
                        SpreadMult = 0.95,
                        RecoilMult = 0.95,
                        CustomPros = {
                            Вспышка = "нет",
                            Звук = "приглушен",
                        },

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3300,
                            y = 150,
                            width = 100,
                            height = 50,
                            textTOP_RIGHT = "ПБС",
                            textBOTTOM_RIGHT = "9мм",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_silenсer_pb_01"] = {
                    name = "Глушитель ПБ интегрированный",
                    description = "Стандартный глушитель для советского бесшумного пистолета, созданный для КГБ и отрядов специального назначения. Эффективно скрывает вспышку выстрела и исключает громкий хлопок. Использование глушителя не снижает ресурс самого пистолета, однако стрельба без него может негативно сказаться на точности и отдаче.",

                    attData = {
                        PrintName = "Глушитель ПБ интегрированный", -- Имя модуля, отображаемое в меню.
                        CompactName = "Глушитель ПБ интегрированный", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        MuzzleParticle = "muzzleflash_suppressed",
                        Silencer = true,
                        Model = "models/mz/weapons/addons/muzzle/add_silencer_9_05.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_pb"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        SpreadMult = 0.95,
                        RecoilMult = 0.95,
                        CustomPros = {
                            Вспышка = "нет",
                            Звук = "приглушен",
                        },

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3300,
                            y = 100,
                            width = 100,
                            height = 50,
                            textTOP_RIGHT = "ПБС",
                            textBOTTOM_RIGHT = "9мм",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_silencer_12x70_02"] = {
                    name = "Глушитель A12",
                    description = "Глушитель от компании A-Tec. Устанавливается на внутреннюю резьбу 12мм, снижает громкость выстрела, убирает вспышку, незначительно повышает точность и снижает отдачу, но ускоряет износ оружия.",

                    attData = {
                        CompactName = "A12", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Pistols", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        MuzzleParticle = "muzzleflash_suppressed",
                        Silencer = true,
                        Model = "models/mz/weapons/addons/muzzle/add_silencer_12x70_02.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_12x70_silencer"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        MalfunctionMeanShotsToFailMult = 0.9,
                        SpreadMult = 0.95,
                        RecoilMult = 0.95,
                        CustomPros = {
                            Вспышка = "нет",
                            Звук = "приглушен",
                        },

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3700,
                            y = 350,
                            width = 100,
                            height = 50,
                            textTOP_RIGHT = "ПБС",
                            textBOTTOM_RIGHT = "12x70",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_silencer_12x70_02a"] = {
                    name = "Глушитель B112",
                    description = "Глушитель для двухствольных дробовиков 12-го калибра, выпускаемый компанией Browning. Снижает громкость выстрела, убирает вспышку, незначительно повышает точность и снижает отдачу, но ускоряет износ оружия.",

                    attData = {
                        CompactName = "B112", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Pistols", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        MuzzleParticle = "muzzleflash_suppressed",
                        Silencer = true,
                        Model = "models/mz/weapons/addons/muzzle/add_silencer_12x70_02a.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_12x70_duo"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        ActivateElements = {"nomuzzle12x70"},

                        MalfunctionMeanShotsToFailMult = 0.8,
                        SpreadMult = 0.8,
                        RecoilMult = 0.8,
                        CustomPros = {
                            Вспышка = "нет",
                            Звук = "приглушен",
                        },

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3900,
                            y = 250,
                            width = 100,
                            height = 50,
                            textTOP_RIGHT = "ПБС",
                            textBOTTOM_RIGHT = "12x70",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_silencer_545_02"] = {
                    name = "Глушитель ТГП-А",
                    description = "Тактический глушитель-пламегаситель, разработанный ГУ НПО «СТиС» для обеспечения специальных сил МВД. Снижает громкость выстрела, убирает вспышку, незначительно повышает точность и снижает отдачу, но ускоряет износ оружия.",

                    attData = {
                        PrintName = "Глушитель ТГП-А", -- Имя модуля, отображаемое в меню.
                        CompactName = "ТГП-А", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        MuzzleParticle = "muzzleflash_suppressed",
                        Silencer = true,
                        Model = "models/mz/weapons/addons/muzzle/add_silencer_545_02.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_545"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        MalfunctionMeanShotsToFailMult = 0.9,
                        SpreadMult = 0.95,
                        RecoilMult = 0.95,
                        CustomPros = {
                            Вспышка = "нет",
                            Звук = "приглушен",
                        },

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3500,
                            y = 150,
                            width = 100,
                            height = 50,
                            textTOP_RIGHT = "ПБС",
                            textBOTTOM_RIGHT = "5.45",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_silencer_556_02"] = {
                    name = "Глушитель OSS",
                    description = "Тактический глушитель калибра 5.56, призванный ликвидировать вспышку выстрела и рассеять звук. Незначительно повышает точность и снижает отдачу, но ускоряет износ оружия.",

                    attData = {
                        CompactName = "OSS", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        MuzzleParticle = "muzzleflash_suppressed",
                        Silencer = true,
                        Model = "models/mz/weapons/addons/muzzle/add_silencer_556_02.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_556"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        MalfunctionMeanShotsToFailMult = 0.9,
                        SpreadMult = 0.95,
                        RecoilMult = 0.95,
                        CustomPros = {
                            Вспышка = "нет",
                            Звук = "приглушен",
                        },

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3700,
                            y = 150,
                            width = 100,
                            height = 50,
                            textTOP_RIGHT = "ПБС",
                            textBOTTOM_RIGHT = "5.56",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_silencer_762x39_02"] = {
                    name = "Глушитель ПБС-1",
                    description = "Глушитель производства ЦНИИ Точмаш для АКМ. Может устанавливаться на все оружия с подобным типом резьбы и калибром. Снижает громкость выстрела, убирает вспышку, незначительно повышает точность и снижает отдачу, но ускоряет износ оружия.",

                    attData = {
                        CompactName = "ПБС-1", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        MuzzleParticle = "muzzleflash_suppressed",
                        Silencer = true,
                        Model = "models/mz/weapons/addons/muzzle/add_silencer_762x39_02.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_762x39"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        MalfunctionMeanShotsToFailMult = 0.9,
                        SpreadMult = 0.95,
                        RecoilMult = 0.95,
                        CustomPros = {
                            Вспышка = "нет",
                            Звук = "приглушен",
                        },

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3300,
                            y = 350,
                            width = 100,
                            height = 50,
                            textTOP_RIGHT = "ПБС",
                            textBOTTOM_RIGHT = "7.62П",
                        },
                    }
                }
            ------------------------------------------ТИР-3------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_add_silencer_9_03"] = {
                    name = "Глушитель «Gemtech-Nine»",
                    description = "Тактический глушитель от компании Gemtech разработан специально для нарезного оружия калибра 9 мм и других подобных моделей. Он не только скрывает звук и вспышку, но и немного уменьшает отдачу, что повышает точность стрельбы. Однако стоит отметить, что использование глушителя незначительно ускоряет износ оружия.",

                    attData = {
                        CompactName = "Gemtech-Nine", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Pistols", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        MuzzleParticle = "muzzleflash_suppressed",
                        Silencer = true,
                        Model = "models/mz/weapons/addons/muzzle/add_silencer_9_03.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_9"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        MalfunctionMeanShotsToFailMult = 0.95,
                        SpreadMult = 0.9,
                        RecoilMult = 0.9,
                        CustomPros = {
                            Вспышка = "нет",
                            Звук = "приглушен",
                        },

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3400,
                            y = 100,
                            width = 100,
                            height = 50,
                            textTOP_RIGHT = "ПБС",
                            textBOTTOM_RIGHT = "9мм",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_silencer_12x70_03"] = {
                    name = "Глушитель «Гексагон-12»",
                    description = "Ружейный глушитель от компании Гексагон, под нарез 12мм. Помимо маскировки звука и вспышки, немного снижает отдачу и повышает точность, однако стрельба с установленным глушителем незначительно ускоряет износ оружия.",

                    attData = {
                        CompactName = "Гексагон-12", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Pistols", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        MuzzleParticle = "muzzleflash_suppressed",
                        Silencer = true,
                        Model = "models/mz/weapons/addons/muzzle/add_silencer_12x70_03.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_12x70_silencer"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        MalfunctionMeanShotsToFailMult = 0.95,
                        SpreadMult = 0.9,
                        RecoilMult = 0.9,
                        CustomPros = {
                            Вспышка = "нет",
                            Звук = "приглушен",
                        },

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3800,
                            y = 300,
                            width = 100,
                            height = 50,
                            textTOP_RIGHT = "ПБС",
                            textBOTTOM_RIGHT = "12x70",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_silencer_545_03"] = {
                    name = "Глушитель АК-12",
                    description = "Глушитель, предназначенный для АК-12 и семейства АК-74, производства Ижмаш. Помимо маскировки звука и вспышки, немного снижает отдачу и повышает точность, однако стрельба с установленным глушителем незначительно ускоряет износ оружия.",

                    attData = {
                        PrintName = "Глушитель АК-12", -- Имя модуля, отображаемое в меню.
                        CompactName = "Глушитель АК-12", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        MuzzleParticle = "muzzleflash_suppressed",
                        Silencer = true,
                        Model = "models/mz/weapons/addons/muzzle/add_silencer_545_03.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_545"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        MalfunctionMeanShotsToFailMult = 0.95,
                        SpreadMult = 0.9,
                        RecoilMult = 0.9,
                        CustomPros = {
                            Вспышка = "нет",
                            Звук = "приглушен",
                        },

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3600,
                            y = 100,
                            width = 100,
                            height = 50,
                            textTOP_RIGHT = "ПБС",
                            textBOTTOM_RIGHT = "5.45",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_silencer_556_03"] = {
                    name = "Глушитель QDSS NT4",
                    description = "Глушитель, предназначенный для систем AR-15 и аналогичных винтовок, производства Knight's Armament Company. Помимо маскировки звука и вспышки, немного снижает отдачу и повышает точность, однако стрельба с установленным глушителем незначительно ускоряет износ оружия.",

                    attData = {
                        CompactName = "QDSS NT4", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        MuzzleParticle = "muzzleflash_suppressed",
                        Silencer = true,
                        Model = "models/mz/weapons/addons/muzzle/add_silencer_556_03.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_556"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        MalfunctionMeanShotsToFailMult = 0.95,
                        SpreadMult = 0.9,
                        RecoilMult = 0.9,
                        CustomPros = {
                            Вспышка = "нет",
                            Звук = "приглушен",
                        },

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3800,
                            y = 100,
                            width = 100,
                            height = 50,
                            textTOP_RIGHT = "ПБС",
                            textBOTTOM_RIGHT = "5.56",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_silencer_762x39_03"] = {
                    name = "Глушитель ПБС-5",
                    description = "Специальная разработка по заказу Советского КГБ должна была установить новый стандарт многокамерных глушителей, однако глушитель не попал в серийное производство. Подходит для семейства АК калибра 7.62х39. Помимо маскировки звука и вспышки, немного снижает отдачу и повышает точность, однако стрельба с установленным глушителем незначительно ускоряет износ оружия.",

                    attData = {
                        CompactName = "ПБС-5", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        MuzzleParticle = "muzzleflash_suppressed",
                        Silencer = true,
                        Model = "models/mz/weapons/addons/muzzle/add_silencer_762x39_03.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_762x39"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        MalfunctionMeanShotsToFailMult = 0.95,
                        SpreadMult = 0.9,
                        RecoilMult = 0.9,
                        CustomPros = {
                            Вспышка = "нет",
                            Звук = "приглушен",
                        },

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3400,
                            y = 300,
                            width = 100,
                            height = 50,
                            textTOP_RIGHT = "ПБС",
                            textBOTTOM_RIGHT = "7.62П",
                        },
                    }
                }
            ------------------------------------------ТИР-4------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_add_silencer_9_04"] = {
                    name = "Глушитель «Osprey-9»",
                    description = "Глушитель от компании SilencerCo предназначен для установки на стволы диаметром 9 мм со стандартным нарезом. Эффективно скрывает звук и вспышку от выстрела, обеспечивая надежную маскировку стрелка. Кроме того, глушитель снижает отдачу и улучшает точность стрельбы.",

                    attData = {
                        CompactName = "Osprey-9", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 4,
                        MenuCategory = "ARC9 MZ - Attachments Pistols", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        MuzzleParticle = "muzzleflash_suppressed",
                        Silencer = true,
                        Model = "models/mz/weapons/addons/muzzle/add_silencer_9_04.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_9"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        SpreadMult = 0.8,
                        RecoilMult = 0.8,
                        CustomPros = {
                            Вспышка = "нет",
                            Звук = "приглушен",
                        },

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3400,
                            y = 150,
                            width = 100,
                            height = 50,
                            textTOP_RIGHT = "ПБС",
                            textBOTTOM_RIGHT = "9мм",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_silencer_12x70_04"] = {
                    name = "Глушитель «Salvo-12»",
                    description = "Глушитель от компании SilencerCo для ружей 12-го калибра. Убирает звук и вспышку от выстрела, надежно маскируя стрелка. Также снижает отдачу и повышает точность стрельбы.",

                    attData = {
                        CompactName = "Salvo-12", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 4,
                        MenuCategory = "ARC9 MZ - Attachments Pistols", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        MuzzleParticle = "muzzleflash_suppressed",
                        Silencer = true,
                        Model = "models/mz/weapons/addons/muzzle/add_silencer_12x70_04.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_12x70_silencer"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        SpreadMult = 0.8,
                        RecoilMult = 0.8,
                        CustomPros = {
                            Вспышка = "нет",
                            Звук = "приглушен",
                        },

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3800,
                            y = 350,
                            width = 100,
                            height = 50,
                            textTOP_RIGHT = "ПБС",
                            textBOTTOM_RIGHT = "12x70",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_silencer_545_04"] = {
                    name = "Глушитель «Гексагон» МК.2",
                    description = "Современный глушитель от оружейной компании «Гексагон». Убирает звук и вспышку от выстрела, надежно маскируя стрелка. Также снижает отдачу и повышает точность стрельбы.",

                    attData = {
                        CompactName = "Гексагон» МК.2", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 4,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        MuzzleParticle = "muzzleflash_suppressed",
                        Silencer = true,
                        Model = "models/mz/weapons/addons/muzzle/add_silencer_545_04.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_545"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        SpreadMult = 0.8,
                        RecoilMult = 0.8,
                        CustomPros = {
                            Вспышка = "нет",
                            Звук = "приглушен",
                        },

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3600,
                            y = 150,
                            width = 100,
                            height = 50,
                            textTOP_RIGHT = "ПБС",
                            textBOTTOM_RIGHT = "5.45",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_silencer_556_04"] = {
                    name = "Глушитель «Alpha-MS»",
                    description = "Современный многокамерный глушитель для калибра 5.56x45 производства SilencerCo под систему AR-15. Убирает звук и вспышку от выстрела, надежно маскируя стрелка. Также снижает отдачу и повышает точность стрельбы.",

                    attData = {
                        CompactName = "Alpha-MS", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 4,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        MuzzleParticle = "muzzleflash_suppressed",
                        Silencer = true,
                        Model = "models/mz/weapons/addons/muzzle/add_silencer_556_04.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_556"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        SpreadMult = 0.8,
                        RecoilMult = 0.8,
                        CustomPros = {
                            Вспышка = "нет",
                            Звук = "приглушен",
                        },

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3800,
                            y = 150,
                            width = 100,
                            height = 50,
                            textTOP_RIGHT = "ПБС",
                            textBOTTOM_RIGHT = "5.56",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_add_silencer_762x39_04"] = {
                    name = "Глушитель «Гексагон - 7.62»",
                    description = "Современный глушитель от оружейной компании Гексагон. Убирает звук и вспышку от выстрела, надежно маскируя стрелка. Также снижает отдачу и повышает точность стрельбы.",

                    attData = {
                        CompactName = "Гексагон-7.62", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 4,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        MuzzleParticle = "muzzleflash_suppressed",
                        Silencer = true,
                        Model = "models/mz/weapons/addons/muzzle/add_silencer_762x39_04.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_762x39"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        SpreadMult = 0.8,
                        RecoilMult = 0.8,
                        CustomPros = {
                            Вспышка = "нет",
                            Звук = "приглушен",
                        },

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3400,
                            y = 350,
                            width = 100,
                            height = 50,
                            textTOP_RIGHT = "ПБС",
                            textBOTTOM_RIGHT = "7.62П",
                        },
                    }
                }
        --------------------------------------------Адаптеры---------------------------------------------
            ------------------------------------------ТИР-1------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_add_adp_556_01"] = {
                    name = "Адаптер под 5.56 «CNC Warrior»",
                    description = "Адаптер для автоматов серии АК-74, произведенный американскй компанией CNC Warrior. Обеспечивает возможность установки дульных насадок с типовой резьбой AR-15 на оружия питающиеся патроном 5.45x39. Никак не влияет на ведение стрельбы.",

                    attData = {
                        CompactName = "Адаптер «CNC Warrior»", -- Краткое имя для отображения в интерфейсе.
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Pistols", -- Категория, в которой будет отображаться модуль в меню.
                        CustomPros = {}, -- Список положительных эффектов модуля.
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 5,
                        Model = "models/mz/weapons/addons/muzzle/add_adp_556_01.mdl", -- Модель модуля на оружии.
                        Category = {"mz_muzzle_545"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                        Attachments = {
                            {
                                PrintName = "Адаптер",
                                Category = {
                                    "mz_muzzle_556",
                                },
                                Pos = Vector(-0.697192, 0.001125, -0.002107), -- y, x, z
                                Ang = Angle(0, 0, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },
                        },

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3950,
                            y = 0,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "5.56",
                            textBOTTOM_RIGHT = "5.45",
                        },
                    }
                }
    --------------------------------------------------ЛАЗЕРЫ-------------------------------------------------
        ----------------------------------------------ТИР-1----------------------------------------------
            ix.itemsList.data.weaponsAtt["mz_add_laser_01"] = {
                name = "ЛЦУ «Torch SL»",
                description = "Лазерный целеуказатель маленького размера с точкой красного цвета. Облегчает ведение боя при стрельбе от бедра.",

                attData = {
                    CompactName = "Torch SL", -- Краткое имя для отображения в интерфейсе.
                    Folder = "ЛЦУ",
                    MenuCategory = "ARC9 MZ - Attachments Shared", -- Категория, в которой будет отображаться модуль в меню.
                    Model = "models/mz/weapons/addons/laser/add_laser_01.mdl", -- Модель модуля на оружии.
                    Category = {"mz_laser_small"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                    ToggleOnF = true,
                    ToggleStats = {
                        {
                            PrintName = "Выкл.",
                        },
                        {
                            PrintName = "ЛЦУ (К)",
                            Laser = true,
                            LaserStrength = 2,
                            LaserFlareMat = mat_LaserFlareMat,
                            LaserTraceMat = mat_LaserTraceMat,--mat_LaserTraceMatGrad,
                            LaserColor = Color(236, 0, 0),
                            LaserAttachment = 1,
                            RecoilMultHipFire = 0.8,
                            SpreadMultHipFire = 0.8,
                        },
                    },

                    itemIcon = {
                        material = itemsListMaterials.ui_icon_mz_gunpack,
                        x = 2650,
                        y = 800,
                        width = 50,
                        height = 50,
                        textBOTTOM_LEFT = "М",
                        textTOP_RIGHT = "ЛЦУ",
                        textBOTTOM_RIGHT = "П",
                    },
                }
            }

            ix.itemsList.data.weaponsAtt["mz_add_laser_01a"] = {
                name = "ЛЦУ «Nightcore Micro TL-2»",
                description = "Лазерный целеуказатель маленького размера с точкой зеленого цвета. Облегчает ведение боя при стрельбе от бедра.",

                attData = {
                    CompactName = "Nightcore Micro TL-2", -- Краткое имя для отображения в интерфейсе.
                    Folder = "ЛЦУ",
                    MenuCategory = "ARC9 MZ - Attachments Shared", -- Категория, в которой будет отображаться модуль в меню.
                    Model = "models/mz/weapons/addons/laser/add_laser_01a.mdl", -- Модель модуля на оружии.
                    Category = {"mz_laser_small"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                    ToggleOnF = true,
                    ToggleStats = {
                        {
                            PrintName = "Выкл.",
                        },
                        {
                            PrintName = "ЛЦУ (З)",
                            Laser = true,
                            LaserStrength = 2,
                            LaserFlareMat = mat_LaserFlareMat,
                            LaserTraceMat = mat_LaserTraceMat,
                            LaserColor = Color(8, 236, 0),
                            LaserAttachment = 1,
                            RecoilMultHipFire = 0.8,
                            SpreadMultHipFire = 0.8,
                        },
                    },

                    itemIcon = {
                        material = itemsListMaterials.ui_icon_mz_gunpack,
                        x = 2550,
                        y = 800,
                        width = 50,
                        height = 50,
                        textBOTTOM_LEFT = "М",
                        textTOP_RIGHT = "ЛЦУ",
                        textBOTTOM_RIGHT = "П",
                    },
                }
            }

            ix.itemsList.data.weaponsAtt["mz_add_laser_01b"] = {
                name = "ЛЦУ X5L-190",
                description = "Лазерный целеуказатель маленького размера с точкой синего цвета. Облегчает ведение боя при стрельбе от бедра.",

                attData = {
                    CompactName = "X5L-190", -- Краткое имя для отображения в интерфейсе.
                    Folder = "ЛЦУ",
                    MenuCategory = "ARC9 MZ - Attachments Shared", -- Категория, в которой будет отображаться модуль в меню.
                    Model = "models/mz/weapons/addons/laser/add_laser_01b.mdl", -- Модель модуля на оружии.
                    Category = {"mz_laser_small"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                    ToggleOnF = true,
                    ToggleStats = {
                        {
                            PrintName = "Выкл.",
                        },
                        {
                            PrintName = "ЛЦУ (С)",
                            Laser = true,
                            LaserStrength = 2,
                            LaserFlareMat = mat_LaserFlareMat,
                            LaserTraceMat = mat_LaserTraceMat,
                            LaserColor = Color(0, 39, 236),
                            LaserAttachment = 1,
                            RecoilMultHipFire = 0.8,
                            SpreadMultHipFire = 0.8,
                        },
                    },

                    itemIcon = {
                        material = itemsListMaterials.ui_icon_mz_gunpack,
                        x = 2600,
                        y = 800,
                        width = 50,
                        height = 50,
                        textBOTTOM_LEFT = "М",
                        textTOP_RIGHT = "ЛЦУ",
                        textBOTTOM_RIGHT = "П",
                    },
                }
            }
    --------------------------------------------------ФОНАРИ-------------------------------------------------
        ----------------------------------------------ТИР-1----------------------------------------------
            ix.itemsList.data.weaponsAtt["mz_add_flashlight_01"] = {
                name = "Фонарик «Surefire x400 FL»",
                description = "Мощный тактический фонарь, созданный для работы в самых сложных условиях. Яркий луч фонаря освещает путь в темноте, помогая ориентироваться в туннелях, заброшенных зданиях и других опасных местах.",

                attData = {
                    CompactName = "Surefire x400 FL", -- Краткое имя для отображения в интерфейсе.
                    Folder = "Фонарики",
                    MenuCategory = "ARC9 MZ - Attachments Shared", -- Категория, в которой будет отображаться модуль в меню.
                    Model = "models/mz/weapons/addons/laser/add_flashlight_01.mdl", -- Модель модуля на оружии.
                    Category = {"mz_laser_small"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

                    ToggleOnF = true,
                    ToggleStats = {
                        {
                            PrintName = "Выкл.",
                        },
                        {
                            PrintName = "Фонарик",
                            Flashlight = true,
                            FlashlightColor = Color(255, 255, 255),
                            FlashlightMaterial = "effects/arc9_eft/weapon_flashlight_cookie",
                            FlashlightDistance = 3000,
                            FlashlightFOV = 85,
                            FlashlightAttachment = 1,
                            Flare = true,
                            FlareColor = Color(255, 255, 255),
                            FlareSize = 125,
                            FlareAttachment = 1,
                        },
                    },

                    itemIcon = {
                        material = itemsListMaterials.ui_icon_mz_gunpack,
                        x = 2550,
                        y = 900,
                        width = 100,
                        height = 50,
                        textBOTTOM_LEFT = "М",
                        textTOP_RIGHT = "Фон.",
                        textBOTTOM_RIGHT = "П",
                    },
                }
            }
    -------------------------------------------------МАГАЗИНЫ------------------------------------------------
        -----------------------------------------------ПМ------------------------------------------------
            ------------------------------------------ТИР-1------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_pistols_magazine_def_pm_02"] = {
                    name = "Штатный магазин ПМ",
                    description = "Стандартный магазин для Пистолета Макарова. Вмещает в себя 8 патронов.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатный магазин ПМ",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Pistols",
                        Model = "models/mz/weapons/addons/mags/add_pm_magazine_02.mdl",
                        Category = {"mz_magazines_pm"},

                        ChamberSize = 1,
                        ClipSize = 8,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2550,
                            y = 2000,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "8п.",
                            textBOTTOM_RIGHT = "ПМ",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_pistols_magazine_mid_pm_05"] = {
                    name = "Увеличенный магазин ПМ",
                    description = "Увеличенный магазин ПМ. Длинее штатного магазина и вмещает в себя 12 патронов.",
                    weight = .5,

                    attData = {
                        CompactName = "Ув. магазин ПМ",
                        SortOrder = 5,
                        MenuCategory = "ARC9 MZ - Attachments Pistols",
                        Model = "models/mz/weapons/addons/mags/add_pm_magazine_05.mdl",
                        Category = {"mz_magazines_pm"},

                        ChamberSize = 1,
                        ClipSize = 12,
                        --ReloadTimeMult = 1.1,
                        Ergonomics = 0.95,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2550,
                            y = 2050,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "12п.",
                            textBOTTOM_RIGHT = "ПМ",
                        },
                    }
                }
            ------------------------------------------ТИР-2------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_pistols_magazine_drum_pm_07"] = {
                    name = "Барабанный магазин ПМ",
                    description = "Кустарный магазин ПМ большой емкости. Собран из классического магазина и барабана ППШ. Неудобен, громоздок, но позволяет стрелять без перезарядки очень длительное время. Вмещает 96 патронов.",
                    weight = .5,

                    attData = {
                        CompactName = "Барабанный магазин ПМ",
                        SortOrder = 7,
                        MenuCategory = "ARC9 MZ - Attachments Pistols",
                        Model = "models/mz/weapons/addons/mags/add_pm_magazine_07.mdl",
                        Category = {"mz_magazines_pm"},

                        ChamberSize = 1,
                        ClipSize = 96,
                        --ReloadTimeMult = 1.6,
                        Ergonomics = 0.7,
                        RecoilMult = 1.3,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2600,
                            y = 2000,
                            width = 50,
                            height = 100,
                            textTOP_RIGHT = "96п.",
                            textBOTTOM_RIGHT = "ПМ",
                        },
                    }
                }
        -----------------------------------------------CZ52------------------------------------------------
            ------------------------------------------ТИР-1------------------------------------------
            ix.itemsList.data.weaponsAtt["mz_pistols_magazine_def_cz52_02"] = {
                name = "Штатный магазин CZ52",
                description = "Стандартный магазин для CZ52. Вмещает в себя 8 патронов.",
                weight = .5,

                attData = {
                    CompactName = "Штатный магазин CZ52",
                    SortOrder = 2,
                    MenuCategory = "ARC9 MZ - Attachments Pistols",
                    Model = "models/mz/weapons/addons/mags/add_cz52_magazine_02.mdl",
                    Category = {"mz_magazines_cz52"},

                    ChamberSize = 1,
                    ClipSize = 8,

                    itemIcon = {
                        material = itemsListMaterials.ui_icon_mz_gunpack,
                        x = 2550,
                        y = 2000,
                        width = 50,
                        height = 50,
                        textTOP_RIGHT = "8п.",
                        textBOTTOM_RIGHT = "CZ52",
                    },
                }
            }

            ix.itemsList.data.weaponsAtt["mz_pistols_magazine_mid_cz52_05"] = {
                name = "Увеличенный магазин CZ52",
                description = "Увеличенный магазин CZ52. Длинее штатного магазина и вмещает в себя 12 патронов.",
                weight = .5,

                attData = {
                    CompactName = "Ув. магазин CZ52",
                    SortOrder = 5,
                    MenuCategory = "ARC9 MZ - Attachments Pistols",
                    Model = "models/mz/weapons/addons/mags/add_cz52_magazine_05.mdl",
                    Category = {"mz_magazines_cz52"},

                    ChamberSize = 1,
                    ClipSize = 12,
                    --ReloadTimeMult = 1.1,
                    Ergonomics = 0.95,

                    itemIcon = {
                        material = itemsListMaterials.ui_icon_mz_gunpack,
                        x = 2550,
                        y = 2150,
                        width = 50,
                        height = 50,
                        textTOP_RIGHT = "12п.",
                        textBOTTOM_RIGHT = "CZ52",
                    },
                }
            }
            ------------------------------------------ТИР-2------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_pistols_magazine_drum_cz52_07"] = {
                    name = "Барабанный магазин CZ52",
                    description = "Кустарный магазин CZ52 большой емкости. Собран из классического магазина и барабана ППШ. Неудобен, громоздок, но позволяет стрелять без перезарядки очень длительное время. Вмещает 96 патронов.",
                    weight = .5,

                    attData = {
                        CompactName = "Барабанный магазин CZ52",
                        SortOrder = 7,
                        MenuCategory = "ARC9 MZ - Attachments Pistols",
                        Model = "models/mz/weapons/addons/mags/add_cz52_magazine_07.mdl",
                        Category = {"mz_magazines_cz52"},

                        ChamberSize = 1,
                        ClipSize = 96,
                        --ReloadTimeMult = 1.6,
                        Ergonomics = 0.7,
                        RecoilMult = 1.3,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2600,
                            y = 2100,
                            width = 50,
                            height = 100,
                            textTOP_RIGHT = "96п.",
                            textBOTTOM_RIGHT = "CZ52",
                        },
                    }
                }
        ----------------------------------------------ОЦ-02----------------------------------------------
            ------------------------------------------ТИР-1------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_submachineguns_magazine_def_kiparis_02"] = {
                    name = "Штатный магазин ОЦ-02",
                    description = "Стандартный двурядный магазин для ОЦ-02 «Кипарис». Вмещает 20 патронов.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатный магазин ОЦ-02",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Submachineguns",
                        Model = "models/mz/weapons/addons/mags/add_kiparis_magazine_02.mdl",
                        Category = {"mz_magazines_kiparis"},

                        ChamberSize = 1,
                        ClipSize = 20,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3150,
                            y = 2000,
                            width = 50,
                            height = 100,
                            textTOP_RIGHT = "20п.",
                            textBOTTOM_RIGHT = "ОЦ-02",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["z_submachineguns_magazine_mid_kiparis_04"] = {
                    name = "Увеличенный магазин ОЦ-02",
                    description = "Увеличенный двурядный магазин для ОЦ-02 «Кипарис». Длинее штатного магазина и вмещает в себя 30 патронов.",
                    weight = .5,

                    attData = {
                        CompactName = "Увеличенный магазин ОЦ-02",
                        SortOrder = 4,
                        MenuCategory = "ARC9 MZ - Attachments Submachineguns",
                        Model = "models/mz/weapons/addons/mags/add_kiparis_magazine_04.mdl",
                        Category = {"mz_magazines_kiparis"},

                        ChamberSize = 1,
                        ClipSize = 30,
                        Ergonomics = 0.95,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3200,
                            y = 2000,
                            width = 50,
                            height = 100,
                            textTOP_RIGHT = "30п.",
                            textBOTTOM_RIGHT = "ОЦ-02",
                        },
                    }
                }
            ------------------------------------------ТИР-2------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_submachineguns_magazine_big_kiparis_06"] = {
                    name = "Барабанный магазин ОЦ-02",
                    description = "Барабанный магазин для ОЦ-02 «Кипарис». Менее удобен, нежели штатный аналог, но вмещает в себя 60 патронов.",
                    weight = .5,

                    attData = {
                        CompactName = "Барабанный магазин ОЦ-02",
                        SortOrder = 6,
                        MenuCategory = "ARC9 MZ - Attachments Submachineguns",
                        Model = "models/mz/weapons/addons/mags/add_kiparis_magazine_06.mdl",
                        Category = {"mz_magazines_kiparis"},

                        ChamberSize = 1,
                        ClipSize = 60,
                        --ReloadTimeMult = 1.6,
                        Ergonomics = 0.7,
                        RecoilMult = 1.2,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3250,
                            y = 2000,
                            width = 50,
                            height = 100,
                            textTOP_RIGHT = "60п.",
                            textBOTTOM_RIGHT = "ОЦ-02",
                        },
                    }
                }
        ---------------------------------------------SCORPION--------------------------------------------
            ------------------------------------------ТИР-1------------------------------------------
            ix.itemsList.data.weaponsAtt["mz_submachineguns_magazine_def_scorpion_02"] = {
                name = "Штатный магазин Vz. 82",
                description = "Стандартный двурядный магазин для Vz. 82 «Scorpion». Вмещает 20 патронов.",
                weight = .5,

                attData = {
                    CompactName = "Штатный магазин Vz. 82",
                    SortOrder = 2,
                    MenuCategory = "ARC9 MZ - Attachments Submachineguns",
                    Model = "models/mz/weapons/addons/mags/add_scorpion_magazine_02.mdl",
                    Category = {"mz_magazines_scorpion"},

                    ChamberSize = 1,
                    ClipSize = 20,

                    itemIcon = {
                        material = itemsListMaterials.ui_icon_mz_gunpack,
                        x = 3150,
                        y = 2100,
                        width = 50,
                        height = 100,
                        textTOP_RIGHT = "20п.",
                        textBOTTOM_RIGHT = "Vz. 82",
                    },
                }
            }

            ix.itemsList.data.weaponsAtt["mz_submachineguns_magazine_mid_scorpion_04"] = {
                name = "Увеличенный магазин Vz. 82",
                description = "Увеличенный двурядный магазин для Vz. 82 «Scorpion». Длинее штатного магазина и вмещает в себя 30 патронов.",
                weight = .5,

                attData = {
                    CompactName = "Увеличенный магазин Vz. 82",
                    SortOrder = 4,
                    MenuCategory = "ARC9 MZ - Attachments Submachineguns",
                    Model = "models/mz/weapons/addons/mags/add_scorpion_magazine_04.mdl",
                    Category = {"mz_magazines_scorpion"},

                    ChamberSize = 1,
                    ClipSize = 30,
                    Ergonomics = 0.95,

                    itemIcon = {
                        material = itemsListMaterials.ui_icon_mz_gunpack,
                        x = 3200,
                        y = 2100,
                        width = 50,
                        height = 100,
                        textTOP_RIGHT = "30п.",
                        textBOTTOM_RIGHT = "Vz. 82",
                    },
                }
            }
            ------------------------------------------ТИР-2------------------------------------------
            ix.itemsList.data.weaponsAtt["mz_submachineguns_magazine_big_scorpion_06"] = {
                name = "Барабанный магазин Vz. 82",
                description = "Барабанный магазин для Vz. 82 «Scorpion». Менее удобен, нежели штатный аналог, но вмещает в себя 60 патронов.",
                weight = .5,

                attData = {
                    CompactName = "Барабанный магазин Vz. 82",
                    SortOrder = 6,
                    MenuCategory = "ARC9 MZ - Attachments Submachineguns",
                    Model = "models/mz/weapons/addons/mags/add_scorpion_magazine_06.mdl",
                    Category = {"mz_magazines_scorpion"},

                    ChamberSize = 1,
                    ClipSize = 60,
                    --ReloadTimeMult = 1.6,
                    Ergonomics = 0.7,
                    RecoilMult = 1.2,

                    itemIcon = {
                        material = itemsListMaterials.ui_icon_mz_gunpack,
                        x = 3250,
                        y = 2100,
                        width = 50,
                        height = 100,
                        textTOP_RIGHT = "60п.",
                        textBOTTOM_RIGHT = "Vz. 82",
                    },
                }
            }
        ----------------------------------------------АК-74----------------------------------------------
            ------------------------------------------ТИР-1------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_assaultrifles_magazine_small_ak74_01"] = {
                    name = "Магазин «Сайга-545»",
                    description = "Полимерный магазин Сайга-545 для одноименного гражданского карабина. Подходит ко всем автоматам семейства АК-74. Вмещает 10 патронов.",
                    weight = .5,

                    attData = {
                        CompactName = "Магазин «Сайга-545»",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/addons/mags/add_ak74_magazine_01.mdl",
                        Category = {"mz_magazines_ak74"},

                        ChamberSize = 1,
                        ClipSize = 10,
                        Ergonomics = 1.1,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2650,
                            y = 2000,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "10п.",
                            textBOTTOM_RIGHT = "АК-74",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_magazine_def_ak74_02"] = {
                    name = "Бакелитовый магазин АК-74",
                    description = "Стандартный полимерный магазин рыжего цвета, вмещающий 30 патронов калибра 5.45x39. Является штатным для большинства автоматических винтовок семейства АК-74.",
                    weight = .5,

                    attData = {
                        CompactName = "Магазин АК-74",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/addons/mags/add_ak74_magazine_02.mdl",
                        Category = {"mz_magazines_ak74"},

                        ChamberSize = 1,
                        ClipSize = 30,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2700,
                            y = 2000,
                            width = 50,
                            height = 100,
                            textTOP_RIGHT = "30п.",
                            textBOTTOM_RIGHT = "АК-74",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_magazine_def_ak74_02a"] = {
                    name = "Магазин «Слива» для АК-74",
                    description = "Полимерный магазин сливового цвета. Является штатным у многих автоматических винтовок калибра 5,45x39, в том числе и АН-94. Вмещает 30 патронов.",
                    weight = .5,

                    attData = {
                        CompactName = "Магазин АК-74 «Слива»",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        Model = "models/mz/weapons/addons/mags/add_ak74_magazine_02a.mdl",
                        Category = {"mz_magazines_ak74"},

                        ChamberSize = 1,
                        ClipSize = 30,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2750,
                            y = 2000,
                            width = 50,
                            height = 100,
                            textTOP_RIGHT = "30п.",
                            textBOTTOM_RIGHT = "АК-74",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_magazine_def_ak74_02b"] = {
                    name = "Полимерный магазин АК-74М",
                    description = "Штатный магазин штурмовой винтовки АК-74М, выполненный в черном цвете. Немного легче штатных аналогов АК-74. Вмещает 30 патронов.",
                    weight = .5,

                    attData = {
                        CompactName = "Магазин АК-74М",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/addons/mags/add_ak74_magazine_02b.mdl",
                        Category = {"mz_magazines_ak74"},

                        ChamberSize = 1,
                        ClipSize = 30,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2800,
                            y = 2000,
                            width = 50,
                            height = 100,
                            textTOP_RIGHT = "30п.",
                            textBOTTOM_RIGHT = "АК-74",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_magazine_def_ak74_03"] = {
                    name = "Эргономичный магазин АК-74",
                    description = "Эргономичный пластиковый магазин для винтовок семейства АК-74. Удобный хват обеспечивает более быструю перезарядку. Вмещает 30 патронов.",
                    weight = .5,

                    attData = {
                        CompactName = "Эрг. магазин АК-74",
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/addons/mags/add_ak74_magazine_03.mdl",
                        Category = {"mz_magazines_ak74"},

                        ChamberSize = 1,
                        ClipSize = 30,
                        --ReloadTimeMult = 0.8,
                        Ergonomics = 1.1,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2850,
                            y = 2000,
                            width = 50,
                            height = 100,
                            textTOP_RIGHT = "30п.",
                            textBOTTOM_RIGHT = "АК-74",
                        },
                    }
                }
            ------------------------------------------ТИР-2------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_assaultrifles_magazine_mid_ak74_04"] = {
                    name = "Магазин для РПК-74",
                    description = "Штатный магазин на 45 патронов для РПК-74. Менее удобен, нежели 30-зарядные магазины, однако большая емкость часто компенсирует данную особенность.",
                    weight = .5,

                    attData = {
                        CompactName = "Магазин РПК-74",
                        SortOrder = 4,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        Model = "models/mz/weapons/addons/mags/add_ak74_magazine_04.mdl",
                        Category = {"mz_magazines_ak74"},

                        ChamberSize = 1,
                        ClipSize = 45,
                        --ReloadTimeMult = 1.2,
                        Ergonomics = 0.9,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2900,
                            y = 2000,
                            width = 50,
                            height = 150,
                            textTOP_RIGHT = "45п.",
                            textBOTTOM_RIGHT = "АК-74",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_magazine_mid_ak74_05"] = {
                    name = "Эргономичный увеличенный магазин АК-74",
                    description = "Полимерный магазин увеличенной емкости для АК-74. Удобный хват компенсирует неудобство из-за размера, сохраняя скорость перезарядки на приемлемом уровне. Вмещает 45 патронов.",
                    weight = .5,

                    attData = {
                        CompactName = "Эрг. увеличенный магазин АК-74",
                        SortOrder = 5,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/addons/mags/add_ak74_magazine_05.mdl",
                        Category = {"mz_magazines_ak74"},

                        ChamberSize = 1,
                        ClipSize = 45,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2950,
                            y = 2000,
                            width = 50,
                            height = 150,
                            textTOP_RIGHT = "45п.",
                            textBOTTOM_RIGHT = "АК-74",
                        },
                    }
                }
            ------------------------------------------ТИР-3------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_assaultrifles_magazine_big_ak74_06"] = {
                    name = "Большой магазин АК-74",
                    description = "Четырехрядный магазин на 60 патронов для винтовок семейства АК-74. Неудобен из-за своего размера и формы, что существенно усложняет перезарядку.",
                    weight = .5,

                    attData = {
                        CompactName = "Большой магазин АК-74",
                        SortOrder = 6,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/addons/mags/add_ak74_magazine_06.mdl",
                        Category = {"mz_magazines_ak74"},

                        ChamberSize = 1,
                        ClipSize = 60,
                        --ReloadTimeMult = 1.4,
                        Ergonomics = 0.8,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3000,
                            y = 2000,
                            width = 50,
                            height = 100,
                            textTOP_RIGHT = "60п.",
                            textBOTTOM_RIGHT = "АК-74",
                        },
                    }
                }
            ------------------------------------------ТИР-4------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_assaultrifles_magazine_drum_ak74_07"] = {
                    name = "Барабанный магазин РПК-16",
                    description = "Штатный барабанный магазин от РПК-16. Подходят под любые винтовки семейства АК-74. Вмещает 95 патронов, однако использование сильно усложняет перезарядку и общее удобство использования оружия.",
                    weight = .5,

                    attData = {
                        CompactName = "Барабанный магазин РПК-16",
                        SortOrder = 7,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/addons/mags/add_ak74_magazine_07.mdl",
                        Category = {"mz_magazines_ak74"},

                        ChamberSize = 1,
                        ClipSize = 95,
                        --ReloadTimeMult = 1.6,
                        Ergonomics = 0.7,
                        RecoilMult = 1.3,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3050,
                            y = 2000,
                            width = 100,
                            height = 100,
                            textTOP_RIGHT = "95п.",
                            textBOTTOM_RIGHT = "АК-74",
                        },
                    }
                }
        ---------------------------------------------SIG-550---------------------------------------------
            ------------------------------------------ТИР-1------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_assaultrifles_magazine_small_sig550_01"] = {
                    name = "Малый магазин SiG-550",
                    description = "Полимерный магазин малого размера. Подходит ко всем винтовкам на базе SiG-550, вмещает 10 патронов.",
                    weight = .5,

                    attData = {
                        CompactName = "Малый магазин SiG-550",
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/addons/mags/add_sig550_magazine_01.mdl",
                        Category = {"mz_magazines_sig550"},

                        ChamberSize = 1,
                        ClipSize = 10,
                        Ergonomics = 1.1,


                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2550,
                            y = 2350,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "10п.",
                            textBOTTOM_RIGHT = "SG550",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_magazine_def_sig550_02"] = {
                    name = "Штатный магазин SiG-550",
                    description = "Пластиковый магазин, выпускаемый компанией SiG, рассчитан на 30 патронов. Является штатным для большинства винтовок, созданных на базе SiG-550.",
                    weight = .5,

                    attData = {
                        CompactName = "Магазин SiG-550",
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/addons/mags/add_sig550_magazine_02.mdl",
                        Category = {"mz_magazines_sig550"},

                        ChamberSize = 1,
                        ClipSize = 30,


                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2750,
                            y = 2200,
                            width = 50,
                            height = 100,
                            textTOP_RIGHT = "30п.",
                            textBOTTOM_RIGHT = "SG550",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_magazine_def_sig550_03"] = {
                    name = "Эргономичный магазин SiG-550",
                    description = "Удобный полимерный магазин для винтовок на базе SIG-550. Удобная конструкция и качественные материалы повышают удобство и скорость перезарядки. Вмещает 30 патронов.",
                    weight = .5,

                    attData = {
                        CompactName = "Эрг. магазин SiG-550",
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        Model = "models/mz/weapons/addons/mags/add_sig550_magazine_03.mdl",
                        Category = {"mz_magazines_sig550"},

                        ChamberSize = 1,
                        ClipSize = 30,
                        --ReloadTimeMult = 0.8,
                        Ergonomics = 1.1,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2800,
                            y = 2200,
                            width = 50,
                            height = 100,
                            textTOP_RIGHT = "30п.",
                            textBOTTOM_RIGHT = "SG550",
                        },
                    }
                }
            ------------------------------------------ТИР-2------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_assaultrifles_magazine_mid_sig550_04"] = {
                    name = "Увеличенный магазин SiG-550",
                    description = "Увеличенный 45-ти зарядный магазин для винтовок типа SiG-550. Усложняет перезарядку за счет своего размера.",
                    weight = .5,

                    attData = {
                        CompactName = "Ув. магазин SiG-550",
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/addons/mags/add_sig550_magazine_04.mdl",
                        Category = {"mz_magazines_sig550"},

                        ChamberSize = 1,
                        ClipSize = 45,
                        --ReloadTimeMult = 1.2,
                        Ergonomics = 0.9,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2850,
                            y = 2300,
                            width = 50,
                            height = 150,
                            textTOP_RIGHT = "45п.",
                            textBOTTOM_RIGHT = "SG550",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_magazine_mid_sig550_05"] = {
                    name = "Эргономичный увеличенный магазин SiG-550",
                    description = "Увеличенный 45-ти зарядный магазин для винтовок типа SiG-550. Эргономичная форма позволяет компенсировать вес и размер.",
                    weight = .5,

                    attData = {
                        CompactName = "Эрг. увеличенный магазин SiG-550",
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/addons/mags/add_sig550_magazine_05.mdl",
                        Category = {"mz_magazines_sig550"},

                        ChamberSize = 1,
                        ClipSize = 45,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2850,
                            y = 2150,
                            width = 50,
                            height = 150,
                            textTOP_RIGHT = "45п.",
                            textBOTTOM_RIGHT = "SG550",
                        },
                    }
                }
            ------------------------------------------ТИР-3------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_assaultrifles_magazine_big_sig550_06"] = {
                    name = "Большой магазин SiG-550",
                    description = "Четырехрядный магазин для винтовок на базе SiG-550. Неудобен из-за своего размера и формы, что существенно усложняет перезарядку. Вмещает 60 патронов.",
                    weight = .5,

                    attData = {
                        CompactName = "Большой магазин SiG-550",
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/addons/mags/add_sig550_magazine_06.mdl",
                        Category = {"mz_magazines_sig550"},

                        ChamberSize = 1,
                        ClipSize = 60,
                        --ReloadTimeMult = 1.4,
                        Ergonomics = 0.8,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3000,
                            y = 2200,
                            width = 50,
                            height = 100,
                            textTOP_RIGHT = "60п.",
                            textBOTTOM_RIGHT = "SG550",
                        },
                    }
                }
            ------------------------------------------ТИР-4------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_assaultrifles_magazine_drum_sig550_07"] = {
                    name = "Барабанный магазин SiG-550",
                    description = "Вместительный магазин барабанного типа для винтовок на базе SiG-550. Вмещает 95 патронов, однако использование сильно усложняет перезарядку и общее удобство использования оружия.",
                    weight = .5,

                    attData = {
                        CompactName = "Барабанный магазин SiG-550",
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/addons/mags/add_sig550_magazine_07.mdl",
                        Category = {"mz_magazines_sig550"},

                        ChamberSize = 1,
                        ClipSize = 95,
                        --ReloadTimeMult = 1.6,
                        Ergonomics = 0.7,
                        RecoilMult = 1.3,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3050,
                            y = 2300,
                            width = 100,
                            height = 100,
                            textTOP_RIGHT = "95п.",
                            textBOTTOM_RIGHT = "SG550",
                        },
                    }
                }
        -----------------------------------------------АКМ-----------------------------------------------
            ------------------------------------------ТИР-1------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_assaultrifles_magazine_small_akm_01"] = {
                    name = "Магазин PMAG-10",
                    description = "Полимерный магазин, вмещающий 10 патронов производства Magnum. Подходит для винтовок семейства АК под калибр 7.62.",
                    weight = .5,

                    attData = {
                        CompactName = "PMAG-10",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/addons/mags/add_akm_magazine_01.mdl",
                        Category = {"mz_magazines_akm"},

                        ChamberSize = 1,
                        ClipSize = 10,
                        Ergonomics = 1.1,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2850,
                            y = 2100,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "10п.",
                            textBOTTOM_RIGHT = "АКМ",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_magazine_def_akm_02"] = {
                    name = "Штатный магазин АКМ",
                    description = "Стандартный металлический магазин винтовок на базе АК 1947 года. Вмещает в себя 30 патронов.",
                    weight = .5,

                    attData = {
                        CompactName = "Магазин АКМ",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/addons/mags/add_akm_magazine_02.mdl",
                        Category = {"mz_magazines_akm"},

                        ChamberSize = 1,
                        ClipSize = 30,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2700,
                            y = 2100,
                            width = 50,
                            height = 100,
                            textTOP_RIGHT = "30п.",
                            textBOTTOM_RIGHT = "АК-74",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_magazine_def_akm_02a"] = {
                    name = "Вьетнамский магазин АКМ",
                    description = "Металлический магазин въетнамского производства. Выускался большими партиями, для упрощения конструкции создатели пожертвовали эргономичностью, но облегчели общий вес.Вмещает в себя 30 патронов.",
                    weight = .5,

                    attData = {
                        CompactName = "Вьетнамский магазин АКМ",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/addons/mags/add_akm_magazine_02a.mdl",
                        Category = {"mz_magazines_akm"},

                        ChamberSize = 1,
                        ClipSize = 30,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2750,
                            y = 2100,
                            width = 50,
                            height = 100,
                            textTOP_RIGHT = "30п.",
                            textBOTTOM_RIGHT = "АКМ",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_magazine_def_akm_02b"] = {
                    name = "Полимерный магазин АКМ",
                    description = "Полимерный магазин для семейства АК 47-го года. Конструкционно повторяет новые магазины для АК-74М. Вмещает 30 патронов.",
                    weight = .5,

                    attData = {
                        CompactName = "Полимерный магазин АКМ",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/addons/mags/add_akm_magazine_02b.mdl",
                        Category = {"mz_magazines_akm"},

                        ChamberSize = 1,
                        ClipSize = 30,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2800,
                            y = 2100,
                            width = 50,
                            height = 100,
                            textTOP_RIGHT = "30п.",
                            textBOTTOM_RIGHT = "АКМ",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_magazine_def_akm_03"] = {
                    name = "Эргономичный магазин АКМ",
                    description = "Эргономичный пластиковый магазин для винтовок семейства АК под патрон 7.62. Удобный хват обеспечивает более быструю перезарядку. Вмещает 30 патронов.",
                    weight = .5,

                    attData = {
                        CompactName = "Эрг. магазин АКМ",
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/addons/mags/add_akm_magazine_03.mdl",
                        Category = {"mz_magazines_akm"},

                        ChamberSize = 1,
                        ClipSize = 30,
                        --ReloadTimeMult = 0.8,
                        Ergonomics = 1.1,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3000,
                            y = 2100,
                            width = 50,
                            height = 100,
                            textTOP_RIGHT = "30п.",
                            textBOTTOM_RIGHT = "АКМ",
                        },
                    }
                }
            ------------------------------------------ТИР-2------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_assaultrifles_magazine_mid_akm_04"] = {
                    name = "Штатный магазин РПК",
                    description = "Увеличенный металлический магазин для АК под калибр 7.62. Весит больше штатного магазина, но вмещает 40 патронов.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатный магазин РПК",
                        SortOrder = 4,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/addons/mags/add_akm_magazine_04.mdl",
                        Category = {"mz_magazines_akm"},

                        ChamberSize = 1,
                        ClipSize = 40,
                        --ReloadTimeMult = 1.2,
                        Ergonomics = 0.9,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2900,
                            y = 2150,
                            width = 50,
                            height = 150,
                            textTOP_RIGHT = "40п.",
                            textBOTTOM_RIGHT = "АКМ",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_magazine_mid_akm_04a"] = {
                    name = "Бакелитовый магазин РПК",
                    description = "Бакелитовый магазин для РПК под патрон 7.62x39. Немного легче штатного аналога, вмещает 40 патронов.",
                    weight = .5,

                    attData = {
                        CompactName = "Бакелитовый магазин РПК",
                        SortOrder = 5,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/addons/mags/add_akm_magazine_04a.mdl",
                        Category = {"mz_magazines_akm"},

                        ChamberSize = 1,
                        ClipSize = 40,
                       -- ReloadTimeMult = 1.2,
                        Ergonomics = 0.9,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2950,
                            y = 2150,
                            width = 50,
                            height = 150,
                            textTOP_RIGHT = "40п.",
                            textBOTTOM_RIGHT = "АКМ",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_magazine_mid_akm_05"] = {
                    name = "Ув. эргономичный магазин АКМ",
                    description = "Полимерный магазин увеличенной емкости. Конструкция магазина обеспечивает удобную и быструю перезарядку. Вмещает в себя 40 патронов.",
                    weight = .5,

                    attData = {
                        CompactName = "Ув. эргономичный магазин АКМ",
                        SortOrder = 5,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/addons/mags/add_akm_magazine_05.mdl",
                        Category = {"mz_magazines_akm"},

                        ChamberSize = 1,
                        ClipSize = 40,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2650,
                            y = 2050,
                            width = 50,
                            height = 150,
                            textTOP_RIGHT = "40п.",
                            textBOTTOM_RIGHT = "АКМ",
                        },
                    }
                }
            -- ХДЕ ебать тир3
            ------------------------------------------ТИР-4------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_assaultrifles_magazine_drum_akm_07"] = {
                    name = "Барабанный магазин 7.62",
                    description = "Штатный барабанный магазин от РПК-16. Подходят под любые винтовки семейства АК-74. Вмещает 95 патронов, однако использование сильно усложняет перезарядку и общее удобство использования оружия.",
                    weight = .5,

                    attData = {
                        CompactName = "Барабанный магазин 7.62",
                        SortOrder = 7,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/addons/mags/add_akm_magazine_07.mdl",
                        Category = {"mz_magazines_galilar"},

                        ChamberSize = 1,
                        ClipSize = 95,
                        --ReloadTimeMult = 1.6,
                        Ergonomics = 0.7,
                        RecoilMult = 1.3,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3050,
                            y = 2100,
                            width = 100,
                            height = 100,
                            textTOP_RIGHT = "75п.",
                            textBOTTOM_RIGHT = "АКМ",
                        },
                    }
                }
        ---------------------------------------------GALILAR---------------------------------------------
            ------------------------------------------ТИР-1------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_assaultrifles_magazine_def_galilar_02"] = {
                    name = "Штатный магазин GalilAR",
                    description = "Стандартный металлический магазин GalilAR. Вмещает в себя 30 патронов калибра 7.62x51.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатный магазин GalilAR",
                        SortOrder = 7,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/addons/mags/add_galilar_magazine_01.mdl",
                        Category = {"mz_magazines_galilar"},

                        ChamberSize = 1,
                        ClipSize = 30,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3150,
                            y = 2200,
                            width = 50,
                            height = 100,
                            textTOP_RIGHT = "30п.",
                            textBOTTOM_RIGHT = "Galil",
                        },
                    }
                }
            ------------------------------------------ТИР-2------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_assaultrifles_magazine_mid_galilar_04"] = {
                    name = "Увеличенный магазин GalilAR",
                    description = "Металлический магазин для GalilAR увеличенной емкости. Менее удобен из-за веса, в сравнении со штатным аналогом, но вмещает 40 патронов.",
                    weight = .5,

                    attData = {
                        CompactName = "Увеличенный магазин GalilAR",
                        SortOrder = 7,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/addons/mags/add_galilar_magazine_02.mdl",
                        Category = {"mz_magazines_galilar"},

                        ChamberSize = 1,
                        ClipSize = 40,
                        --ReloadTimeMult = 1.2,
                        Ergonomics = 0.9,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3200,
                            y = 2200,
                            width = 50,
                            height = 100,
                            textTOP_RIGHT = "40п.",
                            textBOTTOM_RIGHT = "Galil",
                        },
                    }
                }
            ------------------------------------------ТИР-3------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_assaultrifles_magazine_mid_galilar_05"] = {
                    name = "Большой магазин GalilAR",
                    description = "Большой магазин с барабанным хранилищем для GalilAR. Тяжелый и неудобный в перезарядке, но вмещает в себя 60 патронов.",
                    weight = .5,

                    attData = {
                        CompactName = "Большой магазин GalilAR",
                        SortOrder = 7,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/addons/mags/add_galilar_magazine_03.mdl",
                        Category = {"mz_magazines_galilar"},

                        ChamberSize = 1,
                        ClipSize = 60,
                        --ReloadTimeMult = 1.4,
                        Ergonomics = 0.8,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3250,
                            y = 2200,
                            width = 50,
                            height = 100,
                            textTOP_RIGHT = "60п.",
                            textBOTTOM_RIGHT = "Galil",
                        },
                    }
                }
        ----------------------------------------------G3A3-----------------------------------------------
            ------------------------------------------ТИР-1------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_assaultrifles_magazine_small_g3a3_01"] = {
                    name = "Малый магазин G3A3",
                    description = "Полимерный магазин емкостью 10 патронов для винтовки G3A3.",
                    weight = .5,

                    attData = {
                        CompactName = "Малый магазин G3A3",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/addons/mags/add_g3a3_magazine_01.mdl",
                        Category = {"mz_magazines_g3a3"},

                        ChamberSize = 1,
                        ClipSize = 10,
                        Ergonomics = 1.1,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2550,
                            y = 2300,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "10п.",
                            textBOTTOM_RIGHT = "G3A3",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_magazine_def_g3a3_02"] = {
                    name = "Штатный магазин G3A3",
                    description = "Штатный металлический магазин штурмовой винтовки G3A3. Вмещает 30 патронов.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатный магазин G3A3",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/addons/mags/add_g3a3_magazine_02.mdl",
                        Category = {"mz_magazines_g3a3"},

                        ChamberSize = 1,
                        ClipSize = 30,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2650,
                            y = 2300,
                            width = 50,
                            height = 100,
                            textTOP_RIGHT = "30п.",
                            textBOTTOM_RIGHT = "G3A3",
                        },
                    }
                }
            ------------------------------------------ТИР-2------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_assaultrifles_magazine_mid_g3a3_04"] = {
                    name = "Увеличенный магазин G3A3",
                    description = "Металлический магазин увеличенной емкости для G3A3. Вмещает 40 патронов, но усложняет перезарядку.",
                    weight = .5,

                    attData = {
                        CompactName = "Увеличенный магазин G3A3",
                        SortOrder = 4,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/addons/mags/add_g3a3_magazine_04.mdl",
                        Category = {"mz_magazines_g3a3"},

                        ChamberSize = 1,
                        ClipSize = 40,
                        --ReloadTimeMult = 1.2,
                        Ergonomics = 0.9,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2600,
                            y = 2250,
                            width = 50,
                            height = 150,
                            textTOP_RIGHT = "40п.",
                            textBOTTOM_RIGHT = "G3A3",
                        },
                    }
                }
            ------------------------------------------ТИР-3------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_assaultrifles_magazine_big_g3a3_05"] = {
                    name = "Большой магазин G3A3",
                    description = "Большой магазин с барабанным хранилищем для G3A3. Тяжелый и неудобный в перезарядке, но вмещает в себя 60 патронов.",
                    weight = .5,

                    attData = {
                        CompactName = "Большой магазин G3A3",
                        SortOrder = 7,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/addons/mags/add_g3a3_magazine_07.mdl",
                        Category = {"mz_magazines_g3a3"},

                        ChamberSize = 1,
                        ClipSize = 60,
                        --ReloadTimeMult = 1.4,
                        Ergonomics = 0.8,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2700,
                            y = 2300,
                            width = 50,
                            height = 100,
                            textTOP_RIGHT = "60п.",
                            textBOTTOM_RIGHT = "G3A3",
                        },
                    }
                }
        -----------------------------------------------СКС-----------------------------------------------
            ------------------------------------------ТИР-1------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_sniperrifles_magazine_small_sks_01"] = {
                    name = "Штатный магазин СКС",
                    description = "Стандартный съемный магазин для СКС, вмещающий 10 патронов.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатный магазин СКС",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/addons/mags/add_sks_magazine_01.mdl",
                        Category = {"mz_magazines_sks"},

                        ChamberSize = 1,
                        ClipSize = 10,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2600,
                            y = 2200,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "10п.",
                            textBOTTOM_RIGHT = "СКС",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_sniperrifles_magazine_def_sks_02"] = {
                    name = "Увеличенный магазин СКС",
                    description = "Металлический коробчатый магазин для карабина Симонова. Емкость равняется 20 патронам калибра 7.62x39.",
                    weight = .5,

                    attData = {
                        CompactName = "Увеличенный магазин СКС",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/addons/mags/add_sks_magazine_02.mdl",
                        Category = {"mz_magazines_sks"},

                        ChamberSize = 1,
                        ClipSize = 20,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2650,
                            y = 2200,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "20п.",
                            textBOTTOM_RIGHT = "СКС",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_sniperrifles_magazine_def_sks_03"] = {
                    name = "Эргономичный магазин СКС",
                    description = "Удобный полимерный магазин западного производства. Ускоряет перезарядку за счет эргономичной формы. Вмещает 20 патронов.",
                    weight = .5,

                    attData = {
                        CompactName = "Эрг. магазин СКС",
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/addons/mags/add_sks_magazine_03.mdl",
                        Category = {"mz_magazines_sks"},

                        ChamberSize = 1,
                        ClipSize = 20,
                        --ReloadTimeMult = 0.8,
                        Ergonomics = 1.1,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2650,
                            y = 2250,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "20п.",
                            textBOTTOM_RIGHT = "СКС",
                        },
                    }
                }
            ------------------------------------------ТИР-2------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_sniperrifles_magazine_mid_sks_04"] = {
                    name = "Большой магазин СКС",
                    description = "Металлический магазин емкостью 30 патронов. Тяжелее штатного аналога, что сказывается на комфорте при перезарядке.",
                    weight = .5,

                    attData = {
                        CompactName = "Большой магазин СКС",
                        SortOrder = 4,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/addons/mags/add_sks_magazine_04.mdl",
                        Category = {"mz_magazines_sks"},

                        ChamberSize = 1,
                        ClipSize = 30,
                        --ReloadTimeMult = 1.2,
                        Ergonomics = 0.9,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2700,
                            y = 2200,
                            width = 50,
                            height = 100,
                            textTOP_RIGHT = "30п.",
                            textBOTTOM_RIGHT = "СКС",
                        },
                    }
                }
            ------------------------------------------ТИР-2------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_sniperrifles_magazine_drum_sks_07"] = {
                    name = "Барабанный магазин СКС",
                    description = "Барабанный магазин для СКС. Неудобен в использовании, но заметно увеличивает боезапас, что позволяет вести неприрывный огонь дольше. Вмещает 75 патронов.",
                    weight = .5,

                    attData = {
                        CompactName = "Барабанный магазин СКС",
                        SortOrder = 7,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/addons/mags/add_sks_magazine_07.mdl",
                        Category = {"mz_magazines_sks"},

                        ChamberSize = 1,
                        ClipSize = 75,
                        --ReloadTimeMult = 1.6,
                        Ergonomics = 0.7,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 3050,
                            y = 2200,
                            width = 100,
                            height = 100,
                            textTOP_RIGHT = "75п.",
                            textBOTTOM_RIGHT = "СКС",
                        },
                    }
                }
        ---------------------------------------------ВПО-101-----------------------------------------------
            ------------------------------------------ТИР-1------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_sniperrifles_magazine_small_vpo101_01"] = {
                    name = "Штатный магазин ВПО-101",
                    description = "Удобный штатный магазин винтовки ВПО-101. Изготовлен из прочного полимера, что делает его легким и устойчивым к повреждениям, а эргономичная форма упрощает перезарядку. Вмещает 10 патронов.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатный магазин ВПО-101",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/addons/mags/add_vpo101_magazine_01.mdl",
                        Category = {"mz_magazines_vpo101"},

                        ChamberSize = 1,
                        ClipSize = 10,
                        Ergonomics = 1.1,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2550,
                            y = 2200,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "10п.",
                            textBOTTOM_RIGHT = "ВПО",
                        },
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_sniperrifles_magazine_def_vpo101_02"] = {
                    name = "Увеличенный магазин ВПО-101",
                    description = "Удобный штатный магазин винтовки ВПО-101. Изготовлен из прочного полимера, что делает его легким и устойчивым к повреждениям, а эргономичная форма упрощает перезарядку. Вмещает 10 патронов.",
                    weight = .5,

                    attData = {
                        CompactName = "Увеличенный магазин ВПО-101",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/addons/mags/add_vpo101_magazine_02.mdl",
                        Category = {"mz_magazines_vpo101"},

                        ChamberSize = 1,
                        ClipSize = 20,
                        Ergonomics = 1.1,

                        itemIcon = {
                            material = itemsListMaterials.ui_icon_mz_gunpack,
                            x = 2550,
                            y = 2250,
                            width = 50,
                            height = 50,
                            textTOP_RIGHT = "20п.",
                            textBOTTOM_RIGHT = "ВПО",
                        },
                    }
                }
    --------------------------------------------------РАЗНОЕ-------------------------------------------------
        ---------------------------------------------КАМУФЛЯЖИ-------------------------------------------
            ix.itemsList.data.weaponsAtt["mz_camo_01"] = {
                name = "Камуфляж «Саванна»",
                description = "Балончик с краской. Позволяет нанести пустынный камуфляж на оружие.",
                weight = .5,

                attData = {
                    CompactName = "«Саванна»",
                    Category = {"mz_add_skin"},
                    Skin = 1,
                    ForAll = true,
                }
            }

            ix.itemsList.data.weaponsAtt["mz_camo_02"] = {
                name = "Камуфляж «Сумрак»",
                description = "Балончик с краской. Позволяет нанести ночной камуфляж на оружие.",
                weight = .5,

                attData = {
                    CompactName = "«Сумрак»",
                    Category = {"mz_add_skin"},
                    Skin = 2,
                    ForAll = true,
                }
            }

            ix.itemsList.data.weaponsAtt["mz_camo_03"] = {
                name = "Камуфляж «Ирбис»",
                description = "Балончик с краской. Позволяет нанести зимний камуфляж на оружие.",
                weight = .5,

                attData = {
                    CompactName = "«Ирбис»",
                    Category = {"mz_add_skin"},
                    Skin = 3,
                    ForAll = true,
                }
            }

            ix.itemsList.data.weaponsAtt["mz_camo_04"] = {
                name = "Камуфляж «Хирург»",
                description = "Балончик с краской. Позволяет нанести серо-красный камуфляж на оружие.",
                weight = .5,

                attData = {
                    CompactName = "«Хирург»",
                    Category = {"mz_add_skin"},
                    Skin = 4,
                    ForAll = true,
                }
            }
        ----------------------------------------------ТИР-1----------------------------------------------

----------------------------------------------------АПГРЕЙТЫ-----------------------------------------------------
    ------------------------------------------------ПИСТОЛЕТЫ------------------------------------------------
        -----------------------------------------------ПМ------------------------------------------------
            -----------------------------------------СТВОЛЫ------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_pistols_barrel_pm_02"] = {
                    name = "Удлиненный ствол ПМ",
                    description = "Удлиненный ствол ПМ с нарезом под дульники 9мм.",
                    weight = .5,

                    attData = {
                        CompactName = "Удлиненный ствол ПМ",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Pistols",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/pistols/pm/upg_pm_barrel_02.mdl",
                        Category = {"mz_pistols_barrels_pm"},
                        Attachments = {
                            {
                                PrintName = "Дуло",
                                Category = {
                                    "mz_muzzle_9",
                                },
                                Pos = Vector(-2.4794, 0.316227, -0.007805),
                                Ang = Angle(0, 0, 0),
                                Icon_Offset = Vector(0, 0, 0),

                                -- isUpgrade = true,
                            },
                        },
                        isUpgrade = true,
                    }
                }
            -----------------------------------------РУКОЯТКИ----------------------------------------
                ix.itemsList.data.weaponsAtt["mz_pistols_grip_pm_01"] = {
                    name = "Штатная рукоять ПМ",
                    description = "Штатная пластиковая рукоять ПМ.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатная рукоять ПМ",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Pistols",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/pistols/pm/upg_pm_grip_01.mdl",
                        Category = {"mz_pistols_grips_pm"},

                        isUpgrade = true,
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_pistols_grip_pm_02"] = {
                    name = "Эргономиная рукоять ПМ",
                    description = "Эргономичная полимерная рукоять ПМ. Удобнее штатного аналога.",
                    weight = .5,

                    attData = {
                        CompactName = "Эрг. рукоять ПМ",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Pistols",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/pistols/pm/upg_pm_grip_02.mdl",
                        Category = {"mz_pistols_grips_pm"},

                        isUpgrade = true,
                    }
                }
            -----------------------------------------РУКОЯТКИ----------------------------------------
                ix.itemsList.data.weaponsAtt["mz_pistols_sight_pm_01"] = {
                    name = "Штатный прицел ПМ",
                    description = "Штатный механический прицел ПМ.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатный прицел ПМ",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Pistols",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/pistols/pm/upg_pm_sight_01.mdl",
                        Category = {"mz_pistols_sights_pm"},

                        isUpgrade = true,
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_pistols_sight_pm_02"] = {
                    name = "Механический прицел ПМ с тритием",
                    description = "Механический прицел для ПМ с тритиевыми вставками. Повышает точность и концентрацию в темноте.",
                    weight = .5,

                    attData = {
                        CompactName = "Прицел ПМ с тритием",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Pistols",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/pistols/pm/upg_pm_sight_02.mdl",
                        Category = {"mz_pistols_sights_pm"},

                        isUpgrade = true,
                    }
                }
            -----------------------------------------ПРИКЛАДЫ----------------------------------------
                ix.itemsList.data.weaponsAtt["mz_pistols_stock_pm_01"] = {
                    name = "Приклад ПМ",
                    description = "Каркасный металлический приклад для ПМ",
                    weight = .5,

                    attData = {
                        CompactName = "Приклад ПМ",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Pistols",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/pistols/pm/upg_pm_stock_01.mdl",
                        Category = {"mz_pistols_stocks_pm"},

                        isUpgrade = true,
                    }
                }
        ----------------------------------------------CZ52-----------------------------------------------
            -----------------------------------------СТВОЛЫ------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_pistols_barrel_cz52_01"] = {
                    name = "Штатный ствол CZ52",
                    description = "Штатный ствол CZ52.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатный ствол CZ52",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Pistols",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/pistols/cz52/upg_cz52_barrel_01.mdl",
                        Category = {"mz_pistols_barrels_cz52"},

                        isUpgrade = true,
                    }
                }
                ix.itemsList.data.weaponsAtt["mz_pistols_barrel_cz52_02"] = {
                    name = "Удлиненный ствол CZ52",
                    description = "Удлиненный ствол CZ52 с нарезом под дульники 9мм.",
                    weight = .5,

                    attData = {
                        CompactName = "Удлиненный ствол CZ52",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Pistols",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/pistols/cz52/upg_cz52_barrel_02.mdl",
                        Category = {"mz_pistols_barrels_cz52"},
                        Attachments = {
                            {
                                PrintName = "Дуло",
                                Category = {
                                    "mz_muzzle_9",
                                },
                                Pos = Vector(-3.34, 0.29357, -0.331657),
                                Ang = Angle(0, 0, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },
                        },

                        isUpgrade = true,
                    }
                }
            -----------------------------------------РУКОЯТКИ----------------------------------------
                ix.itemsList.data.weaponsAtt["mz_pistols_grip_cz52_01"] = {
                    name = "Штатная рукоять CZ52",
                    description = "Штатная пластиковая рукоять CZ52.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатная рукоять CZ52",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Pistols",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/pistols/cz52/upg_cz52_grip_01.mdl",
                        Category = {"mz_pistols_grips_cz52"},

                        isUpgrade = true,
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_pistols_grip_cz52_02"] = {
                    name = "Эргономиная рукоять CZ52",
                    description = "Эргономичная полимерная рукоять CZ52. Удобнее штатного аналога.",
                    weight = .5,

                    attData = {
                        CompactName = "Эрг. рукоять CZ52",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Pistols",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/pistols/cz52/upg_cz52_grip_02.mdl",
                        Category = {"mz_pistols_grips_cz52"},

                        isUpgrade = true,
                    }
                }
            -----------------------------------------ПРИЦЕЛЫ----------------------------------------
                ix.itemsList.data.weaponsAtt["mz_pistols_sight_cz52_01"] = {
                    name = "Штатный прицел CZ52",
                    description = "Штатный механический прицел CZ52.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатный прицел CZ52",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Pistols",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/pistols/cz52/upg_cz52_sight_01.mdl",
                        Category = {"mz_pistols_sights_cz52"},

                        isUpgrade = true,
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_pistols_sight_cz52_02"] = {
                    name = "Механический прицел CZ52 с тритием",
                    description = "Механический прицел для CZ52 с тритиевыми вставками. Повышает точность и концентрацию в темноте.",
                    weight = .5,

                    attData = {
                        CompactName = "Прицел CZ52 с тритием",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Pistols",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/pistols/cz52/upg_cz52_sight_02.mdl",
                        Category = {"mz_pistols_sights_cz52"},

                        isUpgrade = true,
                    }
                }
            -----------------------------------------ПРИКЛАДЫ----------------------------------------
                ix.itemsList.data.weaponsAtt["mz_pistols_stock_cz52_01"] = {
                    name = "Приклад CZ52",
                    description = "Каркасный металлический приклад для CZ52",
                    weight = .5,

                    attData = {
                        CompactName = "Приклад CZ52",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Pistols",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/pistols/cz52/upg_cz52_stock_01.mdl",
                        Category = {"mz_pistols_stocks_cz52"},

                        isUpgrade = true,
                    }
                }
        -----------------------------------------------ПБ------------------------------------------------
            -----------------------------------------РУКОЯТКИ----------------------------------------
                ix.itemsList.data.weaponsAtt["mz_pistols_grip_pb_01"] = {
                    name = "Штатная рукоять ПБ",
                    description = "Штатная пластиковая рукоять ПБ.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатная рукоять ПБ",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Pistols",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/pistols/pb/upg_pb_grip_01.mdl",
                        Category = {"mz_pistols_grips_pb"},

                        isUpgrade = true,
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_pistols_grip_pb_02"] = {
                    name = "Эргономиная рукоять ПБ",
                    description = "Эргономичная полимерная рукоять ПБ. Удобнее штатного аналога.",
                    weight = .5,

                    attData = {
                        CompactName = "Эрг. рукоять ПБ",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Pistols",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/pistols/pb/upg_pb_grip_02.mdl",
                        Category = {"mz_pistols_grips_pb"},

                        isUpgrade = true,
                    }
                }
            -----------------------------------------РУКОЯТКИ----------------------------------------
                ix.itemsList.data.weaponsAtt["mz_pistols_sight_pb_01"] = {
                    name = "Штатный прицел ПБ",
                    description = "Штатный механический прицел ПБ.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатный прицел ПБ",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Pistols",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/pistols/pb/upg_pb_sight_01.mdl",
                        Category = {"mz_pistols_sights_pb"},

                        isUpgrade = true,
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_pistols_sight_pb_02"] = {
                    name = "Механический прицел ПБ с тритием",
                    description = "Механический прицел для ПБ с тритиевыми вставками. Повышает точность и концентрацию в темноте.",
                    weight = .5,

                    attData = {
                        CompactName = "Прицел ПБ с тритием",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Pistols",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/pistols/pb/upg_pb_sight_02.mdl",
                        Category = {"mz_pistols_sights_pb"},

                        isUpgrade = true,
                    }
                }
            -----------------------------------------ПРИКЛАДЫ----------------------------------------
                ix.itemsList.data.weaponsAtt["mz_pistols_stock_pm_01"] = {
                    name = "Приклад ПМ",
                    description = "Каркасный металлический приклад для ПМ",
                    weight = .5,

                    attData = {
                        CompactName = "Приклад ПМ",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Pistols",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/pistols/pm/upg_pm_stock_01.mdl",
                        Category = {"mz_pistols_stocks_pm"},

                        isUpgrade = true,
                    }
                }
    --------------------------------------------ПИСТОЛЕТЫ-ПУЛЕМЕТЫ-------------------------------------------
        -----------------------------------------ОЦ-02 "Кипарис"-----------------------------------------
            -----------------------------------------СТВОЛЫ------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_submachineguns_barrel_kiparis_01"] = {
                    name = "Штатный ствол ОЦ-02",
                    description = "Штаный 9-миллиметровый ствол ОЦ-02",
                    weight = .5,

                    attData = {
                        CompactName = "Штатный ствол ОЦ-02",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Submachineguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/submachineguns/kiparis/upg_kiparis_barell_01.mdl",
                        Category = {"mz_submachineguns_barrels_kiparis"},

                        isUpgrade = true,
                    }
                }

                ix.itemsList.data.weaponsAtt["mz_submachineguns_barrel_kiparis_02"] = {
                    name = "Ствол с нарезом ОЦ-02",
                    description = "Ствол с нарезом для дульных устройств ОЦ-02",
                    weight = .5,

                    attData = {
                        CompactName = "Ствол с нарезом ОЦ-02",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Submachineguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/submachineguns/kiparis/upg_kiparis_barell_02.mdl",
                        Category = {"mz_submachineguns_barrels_kiparis"},
                        Attachments = {
                            {
                                PrintName = "Дуло",
                                Category = {
                                    "mz_muzzle_9",
                                },
                                Pos = Vector(-3.11799, -0.01099, 0.008694),
                                Ang = Angle(0, 0, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },
                        },

                        isUpgrade = true,
                    }
                }
            ------------------------------------------ЦЕВЬЯ------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_submachineguns_forearm_kiparis_01"] = {
                    name = "Подствольная планка ОЦ-02",
                    description = "Крепление с планкой пикатинни, устанавливаемое под стволом ОЦ-02 для установки дополнительной гарнитуры.",
                    weight = .5,

                    attData = {
                        CompactName = "Подствольная планка ОЦ-02",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Submachineguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/submachineguns/kiparis/upg_kiparis_forearm_01.mdl",
                        Category = {"mz_submachineguns_forearms_kiparis"},
                        Attachments = {
                            {
                                PrintName = "Верхняя планка",
                                Category = {
                                    "mz_laser_small",
                                    "mz_laser_mid",
                                },
                                Pos = Vector(0, 0.000076, 0.539697 ),
                                Ang = Angle(0, 180, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },
                        },

                        isUpgrade = true,
                    },
                }
            -----------------------------------------РЕСИВЕРЫ----------------------------------------
                ix.itemsList.data.weaponsAtt["mz_submachineguns_receiver_kiparis_01"] = {
                    name = "Штатная крышка ствольной коробки ОЦ-02",
                    description = "Штатная крышка ствольной коробки ОЦ-02",
                    weight = .5,

                    attData = {
                        CompactName = "Штат. крышка ОЦ-02",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Submachineguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/submachineguns/kiparis/upg_kiparis_receiver_01.mdl",
                        Category = {"mz_submachineguns_receivers_kiparis"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_submachineguns_receiver_kiparis_02"] = {
                    name = "Крышка ствольной коробки ОЦ-02 с планкой пикатинни",
                    description = "Крышка ствольной коробки ОЦ-02 с плакой малого размера пикатинни для установки прицелов.",
                    weight = .5,

                    attData = {
                        CompactName = "Крышка ОЦ-02 с планкой",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Submachineguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/submachineguns/kiparis/upg_kiparis_receiver_02.mdl",
                        Category = {"mz_submachineguns_receivers_kiparis"},
                        Attachments = {
                            {
                                PrintName = "Верхняя планка",
                                Category = {
                                    "mz_picatinny_small",
                                    "mz_picatinny_mid",
                                    "mz_picatinny_big",
                                    "mz_scope_small",
                                    "mz_scope_mid",
                                    "mz_scope_big",
                                },
                                Pos = Vector(3.00424, 0.040042 , -0.907333),
                                Ang = Angle(0, 0, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },
                        },

                        isUpgrade = true,
                    },
                }
            -----------------------------------------РУКОЯТКИ----------------------------------------
                ix.itemsList.data.weaponsAtt["mz_submachineguns_grip_kiparis_01"] = {
                    name = "Штатная рукоять ОЦ-02",
                    description = "Штатная рукоять ОЦ-02 «Кипарис».",
                    weight = .5,

                    attData = {
                        CompactName = "Штатная рукоять ОЦ-02",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/submachineguns/kiparis/upg_kiparis_grip_01.mdl",
                        Category = {"mz_submachineguns_grips_kiparis"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_submachineguns_grip_kiparis_02"] = {
                    name = "Эргономичная рукоять ОЦ-02",
                    description = "Эргономичная рукоять ОЦ-02 «Кипарис».",
                    weight = .5,

                    attData = {
                        CompactName = "Эрг. рукоять ОЦ-02",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Submachineguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/submachineguns/kiparis/upg_kiparis_grip_02.mdl",
                        Category = {"mz_submachineguns_grips_kiparis"},

                        isUpgrade = true,
                    },
                }
            -----------------------------------------ПРИКЛАДЫ----------------------------------------
                ix.itemsList.data.weaponsAtt["mz_submachineguns_stock_kiparis_01"] = {
                    name = "Приклад ОЦ-02",
                    description = "Складной металлический приклад ОЦ-02",
                    weight = .5,

                    attData = {
                        CompactName = "Приклад ОЦ-02",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Submachineguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/submachineguns/kiparis/upg_kiparis_stock_01.mdl",
                        Category = {"mz_submachineguns_stocks_kiparis"},

                        isUpgrade = true,
                    },
                }
        -----------------------------------------Vz. 82 Scorpion-----------------------------------------
            -----------------------------------------СТВОЛЫ------------------------------------------
            ix.itemsList.data.weaponsAtt["mz_submachineguns_barrel_scorpion_01"] = {
                name = "Штатный ствол Vz. 82",
                description = "Штаный 9-миллиметровый ствол Vz. 82",
                weight = .5,

                attData = {
                    CompactName = "Штатный ствол Vz. 82",
                    SortOrder = 1,
                    MenuCategory = "ARC9 MZ - Attachments Submachineguns",
                    CustomPros = {
                        -- Ergonomics = "+6",
                    },
                    Model = "models/mz/weapons/submachineguns/scorpion/upg_scorpion_barell_01.mdl",
                    Category = {"mz_submachineguns_barrels_scorpion"},

                    isUpgrade = true,
                },
            }

            ix.itemsList.data.weaponsAtt["mz_submachineguns_barrel_scorpion_02"] = {
                name = "Ствол с нарезом Vz. 82",
                description = "Ствол с нарезом для дульных устройств Vz. 82",
                weight = .5,

                attData = {
                    CompactName = "Ствол с нарезом Vz. 82",
                    SortOrder = 2,
                    MenuCategory = "ARC9 MZ - Attachments Submachineguns",
                    CustomPros = {
                        -- Ergonomics = "+6",
                    },
                    Model = "models/mz/weapons/submachineguns/scorpion/upg_scorpion_barell_02.mdl",
                    Category = {"mz_submachineguns_barrels_scorpion"},
                    Attachments = {
                        {
                            PrintName = "Дуло",
                            Category = {
                                "mz_muzzle_9",
                            },
                            Pos = Vector(-1.5796, 0.000001, -0.010682),
                            Ang = Angle(0, 0, 0),
                            Icon_Offset = Vector(0, 0, 0),
                        },
                    },

                    isUpgrade = true,
                },
            }
            ------------------------------------------ЦЕВЬЯ------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_submachineguns_forearm_scorpion_01"] = {
                    name = "Подствольная планка Vz. 82",
                    description = "Крепление с планкой пикатинни, устанавливаемое под стволом Vz. 82 для установки дополнительной гарнитуры.",
                    weight = .5,

                    attData = {
                        CompactName = "Подствольная планка Vz. 82",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Submachineguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/submachineguns/scorpion/upg_scorpion_forearm_01.mdl",
                        Category = {"mz_submachineguns_forearms_scorpion"},
                        Attachments = {
                            {
                                PrintName = "Верхняя планка",
                                Category = {
                                    "mz_laser_small",
                                    "mz_laser_mid",
                                },
                                Pos = Vector(-0.194138, 0.000069, -0.551092),
                                Ang = Angle(0, 180, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },
                        },

                        isUpgrade = true,
                    },
                }
            -----------------------------------------РЕСИВЕРЫ----------------------------------------
                ix.itemsList.data.weaponsAtt["mz_submachineguns_receiver_scorpion_01"] = {
                    name = "Штатная крышка ствольной коробки Vz. 82",
                    description = "Штатная крышка ствольной коробки Vz. 82",
                    weight = .5,

                    attData = {
                        CompactName = "Штат. крышка Vz. 82",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Submachineguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/submachineguns/scorpion/upg_scorpion_receiver_01.mdl",
                        Category = {"mz_submachineguns_receivers_scorpion"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_submachineguns_receiver_scorpion_02"] = {
                    name = "Крышка ствольной коробки Vz. 82 с планкой пикатинни",
                    description = "Крышка ствольной коробки Vz. 82 с плакой малого размера пикатинни для установки прицелов.",
                    weight = .5,

                    attData = {
                        CompactName = "Крышка Vz. 82 с планкой",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Submachineguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/submachineguns/scorpion/upg_scorpion_receiver_02.mdl",
                        Category = {"mz_submachineguns_receivers_scorpion"},
                        Attachments = {
                            {
                                PrintName = "Верхняя планка",
                                Category = {
                                    "mz_picatinny_small",
                                    "mz_picatinny_mid",
                                    "mz_picatinny_big",
                                    "mz_scope_small",
                                    "mz_scope_mid",
                                    "mz_scope_big",
                                },
                                Pos = Vector(3.10115, 0.040052, -0.976861),
                                Ang = Angle(0, 0, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },
                        },

                        isUpgrade = true,
                    },
                }
            -----------------------------------------РУКОЯТКИ----------------------------------------
                ix.itemsList.data.weaponsAtt["mz_submachineguns_grip_scorpion_01"] = {
                    name = "Штатная рукоять Vz. 82",
                    description = "Штатная рукоять Vz. 82 «Scorpion».",
                    weight = .5,

                    attData = {
                        CompactName = "Штатная рукоять Vz. 82",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Submachineguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/submachineguns/scorpion/upg_scorpion_grip_01.mdl",
                        Category = {"mz_submachineguns_grips_scorpion"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_submachineguns_grip_scorpion_02"] = {
                    name = "Эргономичная рукоять Vz. 82",
                    description = "Эргономичная рукоять Vz. 82 «Scorpion».",
                    weight = .5,

                    attData = {
                        CompactName = "Эрг. рукоять Vz. 82",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Submachineguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/submachineguns/scorpion/upg_scorpion_grip_02.mdl",
                        Category = {"mz_submachineguns_grips_scorpion"},

                        isUpgrade = true,
                    },
                }
            -----------------------------------------ПРИКЛАДЫ----------------------------------------
                ix.itemsList.data.weaponsAtt["mz_submachineguns_stock_scorpion_01"] = {
                    name = "Приклад Vz. 82",
                    description = "Складной металлический приклад Vz. 82",
                    weight = .5,

                    attData = {
                        CompactName = "Приклад Vz. 82",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Submachineguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/submachineguns/scorpion/upg_scorpion_stock_01.mdl",
                        Category = {"mz_submachineguns_stocks_scorpion"},

                        isUpgrade = true,
                    },
                }
    ------------------------------------------------ДРОБОВИКИ------------------------------------------------
        ----------------------------------------------ТОЗ-34---------------------------------------------
            ------------------------------------------ЦЕВЬЯ------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_shotguns_forearm_toz34_01"] = {
                    name = "Штатное цевье ТОЗ-34",
                    description = "Стандартное деревянное цевье ТОЗ-34.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатное цевье ТОЗ-34",
                        MenuCategory = "ARC9 MZ - Attachments Shotguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/shotguns/toz34/upg_toz34_forearm_01.mdl",
                        Category = {"mz_shotguns_forearms_toz34"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_shotguns_forearm_toz34_02"] = {
                    name = "Тактическое цевье ТОЗ-34",
                    description = "Эргономичное полимерное цевье для ТОЗ-34. Имеет несколько планок для установки дополнительной гарнитуры.",
                    weight = .5,

                    attData = {
                        CompactName = "Такт. цевье ТОЗ-34",
                        MenuCategory = "ARC9 MZ - Attachments Shotguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/shotguns/toz34/upg_toz34_forearm_02.mdl",
                        Category = {"mz_shotguns_forearms_toz34"},

                        Attachments = {
                            {
                                PrintName = "Боковая планка",
                                Category = {
                                    "mz_laser_small",
                                    "mz_laser_mid",
                                    "mz_laser_big",
                                },
                                Pos = Vector(3.2785 , 1.29962, -0.115015), -- y, x, z
                                Ang = Angle(0, 0, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },
                        },

                        isUpgrade = true,
                    },
                }
            -----------------------------------------РЕСИВЕРЫ----------------------------------------
                ix.itemsList.data.weaponsAtt["mz_shotguns_receiver_toz34_01"] = {
                    name = "Наствольная планка ТОЗ-34",
                    description = "Наствольная планка пикатинни. Устанавливается в прорези на штатной прицельной планке.",
                    weight = .5,

                    attData = {
                        CompactName = "Наствольная планка",
                        MenuCategory = "ARC9 MZ - Attachments Shotguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/shotguns/toz34/upg_toz34_receiver_01.mdl",
                        Category = {"mz_shotguns_receivers_toz34"},

                        Attachments = {
                            {
                                PrintName = "Наствольная планка",
                                Category = {
                                    "mz_scope_small",
                                    "mz_scope_mid",
                                    "mz_scope_big",
                                    "mz_laser_small",
                                    "mz_laser_mid",
                                    "mz_laser_big",
                                    "mz_picatinny_small",
                                    "mz_picatinny_mid",
                                    "mz_picatinny_big",
                                },
                                Pos = Vector(-0.388998 , 0.063773, -0.384389), -- y, x, z
                                Ang = Angle(0, 0, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },
                        },

                        isUpgrade = true,
                    },
                }
            ------------------------------------------СТВОЛЫ-----------------------------------------
                ix.itemsList.data.weaponsAtt["mz_shotguns_barrel_toz34_01"] = {
                    name = "Штатный ствол ТОЗ-34",
                    description = "Штатный длинный ствол ТОЗ-34.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатный ствол ТОЗ-34",
                        MenuCategory = "ARC9 MZ - Attachments Shotguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/shotguns/toz34/upg_toz34_barrel_01.mdl",
                        Category = {"mz_shotguns_barrels_toz34"},
                        Attachments = {
                            {
                                PrintName = "Верхний ствол",
                                Category = "mz_muzzle_12x70",
                                Pos = Vector(-25.2819, 0.40089, -1.4874),
                                Ang = Angle(0, 0, 0),
                                ExcludeElements = {"nomuzzle12x70"}
                            },

                            {
                                PrintName = "Нижний ствол",
                                Category = "mz_muzzle_12x70",
                                Pos = Vector(-25.2819, 0.40089, -0.609645),
                                Ang = Angle(0, 0, 0),
                                ExcludeElements = {"nomuzzle12x70"}
                            },

                            {
                                PrintName = "Глушитель",
                                Category = "mz_muzzle_12x70_duo",
                                Pos = Vector(-25.2819, 0.40089, -1.04852),
                                Ang = Angle(0, 0, 0),
                            },
                        },
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 1,

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_shotguns_barrel_toz34_02"] = {
                    name = "Укороченный ствол ТОЗ-34",
                    description = "Обрезанный ствол ТОЗ-34. Увеличивает разлет дроби, а следовательно и область поражения, но облегчает оружие.",
                    weight = .5,

                    attData = {
                        CompactName = "Укороченный ствол ТОЗ-34",
                        MenuCategory = "ARC9 MZ - Attachments Shotguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/shotguns/toz34/upg_toz34_barrel_02.mdl",
                        Category = {"mz_shotguns_barrels_toz34"},
                        Attachments = {
                            {
                                PrintName = "Верхний ствол",
                                Category = "mz_muzzle_12x70",
                                Pos = Vector(-11.7568, 0.40089, -1.4874),
                                Ang = Angle(0, 0, 0),
                                ExcludeElements = {"nomuzzle12x70"}
                            },

                            {
                                PrintName = "Нижний ствол",
                                Category = "mz_muzzle_12x70",
                                Pos = Vector(-11.7568, 0.40089, -0.609645),
                                Ang = Angle(0, 0, 0),
                                ExcludeElements = {"nomuzzle12x70"}
                            },

                            {
                                PrintName = "Глушитель",
                                Category = "mz_muzzle_12x70_duo",
                                Pos = Vector(-11.7568, 0.40089, -1.04852),
                                Ang = Angle(0, 0, 0),
                            },
                        },
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 1,

                        isUpgrade = true,
                    },
                }
            ----------------------------------------РУКОЯТКИ-----------------------------------------
                ix.itemsList.data.weaponsAtt["mz_shotguns_grip_toz34_01"] = {
                    name = "Штатная рукоять с прикладом ТОЗ-34",
                    description = "Штатная деревянная рукоять с прикладом.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатный приклад ТОЗ-34",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Shotguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/shotguns/toz34/upg_toz34_grip_01.mdl",
                        Category = {"mz_shotguns_grips_toz34"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_shotguns_grip_toz34_02"] = {
                    name = "Эргономичная рукоять с прикладом ТОЗ-34",
                    description = "Полимерная рукоять с прикладом. Намного удобнее и легче штатного аналога.",
                    weight = .5,

                    attData = {
                        CompactName = "Эрг. приклад ТОЗ-34",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Shotguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/shotguns/toz34/upg_toz34_grip_02.mdl",
                        Category = {"mz_shotguns_grips_toz34"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_shotguns_grip_toz34_03"] = {
                    name = "Укороченная рукоять ТОЗ-34",
                    description = "Деревянная рукоять без приклада. Легкая и компактная, но удобностью не отличается.",
                    weight = .5,

                    attData = {
                        CompactName = "Укор. рукоять ТОЗ-34",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Shotguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/shotguns/toz34/upg_toz34_grip_03.mdl",
                        Category = {"mz_shotguns_grips_toz34"},

                        isUpgrade = true,
                    },
                }
        ------------------------------------------BROWNING B725------------------------------------------
            ------------------------------------------ЦЕВЬЯ------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_shotguns_forearm_b725_01"] = {
                    name = "Штатное цевье Browning B725",
                    description = "Стандартное деревянное цевье Browning B725.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатное цевье Browning B725",
                        MenuCategory = "ARC9 MZ - Attachments Shotguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/shotguns/b725/upg_b725_forearm_01.mdl",
                        Category = {"mz_shotguns_forearms_b725"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_shotguns_forearm_b725_02"] = {
                    name = "Тактическое цевье Browning B725",
                    description = "Эргономичное полимерное цевье для Browning B725. Имеет несколько планок для установки дополнительной гарнитуры.",
                    weight = .5,

                    attData = {
                        CompactName = "Такт. цевье Browning B725",
                        MenuCategory = "ARC9 MZ - Attachments Shotguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/shotguns/b725/upg_b725_forearm_02.mdl",
                        Category = {"mz_shotguns_forearms_b725"},

                        Attachments = {
                            {
                                PrintName = "Боковая планка",
                                Category = {
                                    "mz_laser_small",
                                    "mz_laser_mid",
                                    "mz_laser_big",
                                },
                                Pos = Vector(3.2785 , 1.29962, -0.115015), -- y, x, z
                                Ang = Angle(0, 0, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },
                        },

                        isUpgrade = true,
                    },
                }
            -----------------------------------------РЕСИВЕРЫ----------------------------------------
                ix.itemsList.data.weaponsAtt["mz_shotguns_receiver_b725_01"] = {
                    name = "Наствольная планка Browning B725",
                    description = "Наствольная планка пикатинни. Устанавливается в прорези на штатной прицельной планке.",
                    weight = .5,

                    attData = {
                        CompactName = "Наствольная планка",
                        MenuCategory = "ARC9 MZ - Attachments Shotguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/shotguns/b725/upg_b725_receiver_01.mdl",
                        Category = {"mz_shotguns_receivers_b725"},

                        Attachments = {
                            {
                                PrintName = "Наствольная планка",
                                Category = {
                                    "mz_scope_small",
                                    "mz_scope_mid",
                                    "mz_scope_big",
                                    "mz_laser_small",
                                    "mz_laser_mid",
                                    "mz_laser_big",
                                    "mz_picatinny_small",
                                    "mz_picatinny_mid",
                                    "mz_picatinny_big",
                                },
                                Pos = Vector(-0.388998 , 0.063773, -0.384389), -- y, x, z
                                Ang = Angle(0, 0, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },
                        },

                        isUpgrade = true,
                    },
                }
            ------------------------------------------СТВОЛЫ-----------------------------------------
                ix.itemsList.data.weaponsAtt["mz_shotguns_barrel_b725_01"] = {
                    name = "Штатный ствол Browning B725",
                    description = "Штатный длинный ствол Browning B725.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатный ствол Browning B725",
                        MenuCategory = "ARC9 MZ - Attachments Shotguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/shotguns/b725/upg_b725_barrel_01.mdl",
                        Category = {"mz_shotguns_barrels_b725"},
                        Attachments = {
                            {
                                PrintName = "Верхний ствол",
                                Category = "mz_muzzle_12x70",
                                Pos = Vector(-25.2819, 0.40089, -1.4874),
                                Ang = Angle(0, 0, 0),
                                ExcludeElements = {"nomuzzle12x70"}
                            },

                            {
                                PrintName = "Нижний ствол",
                                Category = "mz_muzzle_12x70",
                                Pos = Vector(-25.2819, 0.40089, -0.609645),
                                Ang = Angle(0, 0, 0),
                                ExcludeElements = {"nomuzzle12x70"}
                            },

                            {
                                PrintName = "Глушитель",
                                Category = "mz_muzzle_12x70_duo",
                                Pos = Vector(-25.2819, 0.40089, -1.04852),
                                Ang = Angle(0, 0, 0),
                            },
                        },
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 1,

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_shotguns_barrel_b725_02"] = {
                    name = "Укороченный ствол Browning B725",
                    description = "Обрезанный ствол Browning B725. Увеличивает разлет дроби, а следовательно и область поражения, но облегчает оружие.",
                    weight = .5,

                    attData = {
                        CompactName = "Укороченный ствол Browning B725",
                        MenuCategory = "ARC9 MZ - Attachments Shotguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/shotguns/b725/upg_b725_barrel_02.mdl",
                        Category = {"mz_shotguns_barrels_b725"},
                        Attachments = {
                            {
                                PrintName = "Верхний ствол",
                                Category = "mz_muzzle_12x70",
                                Pos = Vector(-11.7568, 0.40089, -1.4874),
                                Ang = Angle(0, 0, 0),
                                ExcludeElements = {"nomuzzle12x70"}
                            },

                            {
                                PrintName = "Нижний ствол",
                                Category = "mz_muzzle_12x70",
                                Pos = Vector(-11.7568, 0.40089, -0.609645),
                                Ang = Angle(0, 0, 0),
                                ExcludeElements = {"nomuzzle12x70"}
                            },

                            {
                                PrintName = "Глушитель",
                                Category = "mz_muzzle_12x70_duo",
                                Pos = Vector(-11.7568, 0.40089, -1.04852),
                                Ang = Angle(0, 0, 0),
                            },
                        },
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 1,

                        isUpgrade = true,
                    },
                }
            ----------------------------------------РУКОЯТКИ-----------------------------------------
                ix.itemsList.data.weaponsAtt["mz_shotguns_grip_b725_01"] = {
                    name = "Штатная рукоять с прикладом Browning B725",
                    description = "Штатная деревянная рукоять с прикладом.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатный приклад Browning B725",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Shotguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/shotguns/b725/upg_b725_grip_01.mdl",
                        Category = {"mz_shotguns_grips_b725"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_shotguns_grip_b725_02"] = {
                    name = "Эргономичная рукоять с прикладом Browning B725",
                    description = "Полимерная рукоять с прикладом. Намного удобнее и легче штатного аналога.",
                    weight = .5,

                    attData = {
                        CompactName = "Эрг. приклад Browning B725",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Shotguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/shotguns/b725/upg_b725_grip_02.mdl",
                        Category = {"mz_shotguns_grips_b725"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_shotguns_grip_b725_03"] = {
                    name = "Укороченная рукоять Browning B725",
                    description = "Деревянная рукоять без приклада. Легкая и компактная, но удобностью не отличается.",
                    weight = .5,

                    attData = {
                        CompactName = "Укор. рукоять Browning B725",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Shotguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/shotguns/b725/upg_b725_grip_03.mdl",
                        Category = {"mz_shotguns_grips_b725"},

                        isUpgrade = true,
                    },
                }
        ----------------------------------------------ТОЗ-66---------------------------------------------
            ------------------------------------------ЦЕВЬЯ------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_shotguns_forearm_toz66_02"] = {
                    name = "Тактическое цевье ТОЗ-66",
                    description = "Эргономичное полимерное цевье для Browning B725. Имеет несколько планок для установки дополнительной гарнитуры.",
                    weight = .5,

                    attData = {
                        CompactName = "Такт. цевье ТОЗ-66",
                        MenuCategory = "ARC9 MZ - Attachments Shotguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/shotguns/toz66/upg_toz66_receiver_01.mdl",
                        Category = {"mz_shotguns_receivers_toz66"},

                        Attachments = {
                            {
                                PrintName = "Верхняя планка",
                                Category = {
                                    "mz_laser_small",
                                    "mz_laser_mid",
                                    "mz_scope_small",
                                    "mz_scope_mid",
                                    "mz_picatinny_small",
                                    "mz_picatinny_mid",
                                },
                                Pos = Vector(-1.06345, -0.000543, -1.4323), -- y, x, z
                                Ang = Angle(0, 0, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },
                        },

                        isUpgrade = true,
                    },
                }
            ------------------------------------------СТВОЛЫ-----------------------------------------
                ix.itemsList.data.weaponsAtt["mz_shotguns_barrel_toz66_01"] = {
                    name = "Штатный ствол ТОЗ-66",
                    description = "Штатный длинный ствол ТОЗ-66.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатный ствол ТОЗ-66",
                        MenuCategory = "ARC9 MZ - Attachments Shotguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/shotguns/toz66/upg_toz66_barrel_01.mdl",
                        Category = {"mz_shotguns_barrels_toz66"},
                        Attachments = {
                            {
                                PrintName = "Правый ствол",
                                Category = "mz_muzzle_12x70",
                                Pos = Vector(-24.509 , 0.852816, -0.868924),
                                Ang = Angle(0, 0, 0),
                                ExcludeElements = {"nomuzzle12x70"}
                            },

                            {
                                PrintName = "Левый ствол",
                                Category = "mz_muzzle_12x70",
                                Pos = Vector(-24.509 , -0.040984, -0.868924),
                                Ang = Angle(0, 0, 0),
                                ExcludeElements = {"nomuzzle12x70"}
                            },

                            {
                                PrintName = "Глушитель",
                                Category = "mz_muzzle_12x70_duo",
                                Pos = Vector(-24.509 , 0.405916, -0.868924),
                                Ang = Angle(0, 90, 0),
                            },
                        },
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 1,

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_shotguns_barrel_toz66_02"] = {
                    name = "Укороченный ствол ТОЗ-66",
                    description = "Обрезанный ствол ТОЗ-66. Увеличивает разлет дроби, а следовательно и область поражения, но облегчает оружие.",
                    weight = .5,

                    attData = {
                        CompactName = "Укороченный ствол ТОЗ-66",
                        MenuCategory = "ARC9 MZ - Attachments Shotguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/shotguns/toz66/upg_toz66_barrel_02.mdl",
                        Category = {"mz_shotguns_barrels_toz66"},
                        Attachments = {
                            {
                                PrintName = "Правый ствол",
                                Category = "mz_muzzle_12x70",
                                Pos = Vector(-8.61935 , 0.852816, -0.868924),
                                Ang = Angle(0, 0, 0),
                                ExcludeElements = {"nomuzzle12x70"}
                            },

                            {
                                PrintName = "Левый ствол",
                                Category = "mz_muzzle_12x70",
                                Pos = Vector(-8.61935, -0.040984, -0.868924),
                                Ang = Angle(0, 0, 0),
                                ExcludeElements = {"nomuzzle12x70"}
                            },

                            {
                                PrintName = "Глушитель",
                                Category = "mz_muzzle_12x70_duo",
                                Pos = Vector(-8.61935, 0.405916, -0.868924),
                                Ang = Angle(0, 90, 0),
                            },
                        },
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 1,

                        isUpgrade = true,
                    },
                }
            ----------------------------------------РУКОЯТКИ-----------------------------------------
                ix.itemsList.data.weaponsAtt["mz_shotguns_grip_toz66_01"] = {
                    name = "Штатная рукоять с прикладом ТОЗ-66",
                    description = "Штатная деревянная рукоять с прикладом.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатный приклад ТОЗ-66",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Shotguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/shotguns/toz66/upg_toz66_grip_01.mdl",
                        Category = {"mz_shotguns_grips_toz66"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_shotguns_grip_toz66_02"] = {
                    name = "Эргономичная рукоять с прикладом ТОЗ-66",
                    description = "Полимерная рукоять с прикладом. Намного удобнее и легче штатного аналога.",
                    weight = .5,

                    attData = {
                        CompactName = "Эрг. приклад ТОЗ-66",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Shotguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/shotguns/toz66/upg_toz66_grip_02.mdl",
                        Category = {"mz_shotguns_grips_toz66"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_shotguns_grip_toz66_03"] = {
                    name = "Укороченная рукоять ТОЗ-66",
                    description = "Деревянная рукоять без приклада. Легкая и компактная, но удобностью не отличается.",
                    weight = .5,

                    attData = {
                        CompactName = "Укор. рукоять ТОЗ-66",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Shotguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/shotguns/toz66/upg_toz66_grip_03.mdl",
                        Category = {"mz_shotguns_grips_toz66"},

                        isUpgrade = true,
                    },
                }
    -------------------------------------------ШТУРМОВЫЕ ВИНТОВКИ--------------------------------------------
        ---------------------------------------------АКС-74у---------------------------------------------
            ------------------------------------------ЦЕВЬЯ------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_assaultrifles_forearm_aksu_01"] = {
                    name = "Штатное цевье АКС-74у",
                    description = "Штатное деревянное цевье АКС-74у. Не отличается удобностью.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатное цевье АКС-74у",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/aksu/upg_aks74u_forearm_01.mdl",
                        Category = {"mz_assaultrifles_forearms_aksu"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_forearm_aksu_02"] = {
                    name = "Эргономичное цевье АКС-74у",
                    description = "Эргономичное пластиковое цевье для АКС-74у. Намного удобнее штатного аналога.",
                    weight = .5,

                    attData = {
                        CompactName = "Эргономичное цевье АКС-74у",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/aksu/upg_aks74u_forearm_02.mdl",
                        Category = {"mz_assaultrifles_forearms_aksu"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_forearm_aksu_03"] = {
                    name = "Цевье АКС-74у с планкой",
                    description = "Эргономичное цевье с верхней планкой для установки тактических модулей или прицелов.",
                    weight = .5,

                    attData = {
                        CompactName = "Цевье АКС-74у с планкой",
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/aksu/upg_aks74u_forearm_03.mdl",
                        Category = {"mz_assaultrifles_forearms_aksu"},
                        Attachments = {
                            {
                                PrintName = "Верхняя планка",
                                Category = {
                                    "mz_picatinny_small",
                                    "mz_picatinny_mid",
                                    "mz_laser_small",
                                    "mz_laser_mid",
                                    "mz_scope_small",
                                    "mz_scope_mid",
                                },
                                Pos = Vector(0.462637, 0.008329, -1.71919),
                                Ang = Angle(0, 0, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },
                        },

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_forearm_aksu_04"] = {
                    name = "Тактическое цевье АКС-74у",
                    description = "Тактическое цевье с несколькими планками, для установки дополнительной гарнитуры.",

                    attData = {
                        CompactName = "Тактическое цевье АКС-74у",
                        SortOrder = 4,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/aksu/upg_aks74u_forearm_04.mdl",
                        Category = {"mz_assaultrifles_forearms_aksu"},
                        Attachments = {
                            {
                                PrintName = "Верхняя планка",
                                Category = {
                                    "mz_picatinny_small",
                                    "mz_picatinny_mid",
                                    "mz_laser_small",
                                    "mz_laser_mid",
                                    "mz_scope_small",
                                    "mz_scope_mid",
                                },
                                Pos = Vector(0.462637, 0.008329, -1.71919),
                                Ang = Angle(0, 0, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },
                            {
                                PrintName = "Боковая планка",
                                Category = {
                                    "mz_laser_small",
                                    "mz_laser_mid",
                                },
                                Pos = Vector(-0.786357, 1.24204, 0.38423),
                                Ang = Angle(0, -90, 0),
                                Icon_Offset = Vector(0, 0, 0),
                                ExcludeElements = {"pgrip_stock"},
                            },
                        },

                        isUpgrade = true,
                    },
                }
            -----------------------------------------РЕСИВЕРЫ----------------------------------------
                ix.itemsList.data.weaponsAtt["mz_assaultrifles_receiver_aksu_01"] = {
                    name = "Штатная крышка ствольной коробки АКС-74у",
                    description = "Штатная крышка ствольной коробки АКС-74у.",
                    weight = .5,

                    attData = {
                        CompactName = "Штат. крышка АКС-74у",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/aksu/upg_aks74u_receiver_01.mdl",
                        Category = {"mz_assaultrifles_receivers_aksu"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_receiver_aksu_02"] = {
                    name = "Тактическая крышка ствольной коробки АКС-74у",
                    description = "Тактическая крышка ствольной коробки АКС-74у с планкой пикатинни.",
                    weight = .5,

                    attData = {
                        CompactName = "Такт. крышка АКС-74у",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/aksu/upg_aks74u_receiver_02.mdl",
                        Category = {"mz_assaultrifles_receivers_aksu"},

                        ActivateElements = {"nodovetail"},
                        Attachments = {
                            {
                                PrintName = "Планка на ствольной коробке",
                                Category = {
                                    "mz_scope_small",
                                    "mz_scope_mid",
                                    "mz_scope_big",
                                    "mz_picatinny_small",
                                    "mz_picatinny_mid",
                                    "mz_picatinny_big",
                                },
                                Pos = Vector(1.85946, -0.025911, -0.66351), -- y, x, z
                                Ang = Angle(0, 0, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },
                        },

                        isUpgrade = true,
                    },
                }
            -----------------------------------------РУКОЯТКИ----------------------------------------
                ix.itemsList.data.weaponsAtt["mz_assaultrifles_grip_aksu_01"] = {
                    name = "Штатная рукоять АКС-74у",
                    description = "Штатная рукоять многих винтовок семейства АК.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатная рукоять АКС-74у",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/aksu/upg_aks74u_grip_01.mdl",
                        Category = {"mz_assaultrifles_grips_aksu"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_grip_aksu_02"] = {
                    name = "Эргономичная рукоять АКС-74у",
                    description = "Удобная эргономичная рукоять для винтовок семейства АК.",
                    weight = .5,

                    attData = {
                        CompactName = "Эргономичная рукоять АКС-74у",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/aksu/upg_aks74u_grip_02.mdl",
                        Category = {"mz_assaultrifles_grips_aksu"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_grip_aksu_03"] = {
                    name = "Облегченная рукоять АКС-74у",
                    description = "Облегченная тактическая рукоять для винтовок семейства АК.",
                    weight = .5,

                    attData = {
                        CompactName = "Облегченная рукоять АКС-74у",
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/aksu/upg_aks74u_grip_04.mdl",
                        Category = {"mz_assaultrifles_grips_aksu"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_grip_aksu_04"] = {
                    name = "Тяжелая рукоять АКС-74у",
                    description = "Тяжелая эргономичная рукоять для винтовок семейства АК.",
                    weight = .5,

                    attData = {
                        CompactName = "Тяжелая рукоять АКС-74у",
                        SortOrder = 4,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/aksu/upg_aks74u_grip_03.mdl",
                        Category = {"mz_assaultrifles_grips_aksu"},

                        isUpgrade = true,
                    },
                }
            -----------------------------------------ПРИКЛАДЫ----------------------------------------
                ix.itemsList.data.weaponsAtt["mz_assaultrifles_stock_aksu_01"] = {
                    name = "Штатный приклад АКС-74у",
                    description = "Штатный складной приклад винтовок АКС-74.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатный приклад АКС-74у",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/aksu/upg_aks74u_stock_01.mdl",
                        Category = {"mz_assaultrifles_stocks_aksu"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_stock_aksu_02"] = {
                    name = "Штатный приклад АКС-74у с резиновой накладкой",
                    description = "Штатный складной приклад винтовок АКС-74 с резиновой накладкой.",
                    weight = .5,

                    attData = {
                        CompactName = "Штат. приклад АКС-74 с накладкой",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/aksu/upg_aks74u_stock_02.mdl",
                        Category = {"mz_assaultrifles_stocks_aksu"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_stock_aksu_03"] = {
                    name = "Полимерный приклад для АКС-74у",
                    description = "Штатный полимерный приклад от АК-74м.",
                    weight = .5,

                    attData = {
                        CompactName = "Полимерный приклад АКС-74у",
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/aksu/upg_aks74u_stock_03.mdl",
                        Category = {"mz_assaultrifles_stocks_aksu"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_stock_aksu_04"] = {
                    name = "Тяжелый приклад АКС-74у",
                    description = "Тяжелый приклад для автоматов семейства АК-74.",
                    weight = .5,

                    attData = {
                        CompactName = "Тяжелый приклад АКС-74у",
                        SortOrder = 4,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/aksu/upg_aks74u_stock_04.mdl",
                        Category = {"mz_assaultrifles_stocks_aksu"},

                        isUpgrade = true,
                    },
                }
        -----------------------------------------------АКМ-----------------------------------------------
            ------------------------------------------ЦЕВЬЯ------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_assaultrifles_forearm_akm_01"] = {
                    name = "Штатное цевье АКМ",
                    description = "Штатное деревянное цевье АКМ. Не отличается удобностью.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатное цевье АКМ",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/akm/upg_akm_forearm_01.mdl",
                        Category = {"mz_assaultrifles_forearms_akm"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_forearm_akm_02"] = {
                    name = "Эргономичное цевье АКМ",
                    description = "Эргономичное цевье с вентилируемой накладкой для АКМ. Намного удобнее штатного аналога.",
                    weight = .5,

                    attData = {
                        CompactName = "Эргономичное цевье АКМ",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/akm/upg_akm_forearm_02.mdl",
                        Category = {"mz_assaultrifles_forearms_akm"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_forearm_akm_03"] = {
                    name = "Цевье АКМ с планкой",
                    description = "Эргономичное цевье с верхней планкой для установки тактических модулей или прицелов.",
                    weight = .5,

                    attData = {
                        CompactName = "Цевье АКМ с планкой",
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/akm/upg_akm_forearm_03.mdl",
                        Category = {"mz_assaultrifles_forearms_akm"},
                        Attachments = {
                            {
                                PrintName = "Верхняя планка",
                                Category = {
                                    "mz_picatinny_small",
                                    "mz_picatinny_mid",
                                    "mz_laser_small",
                                    "mz_laser_mid",
                                    "mz_scope_small",
                                    "mz_scope_mid",
                                },
                                Pos = Vector(0, -0.014864, -1.90841),
                                Ang = Angle(0, 0, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },
                        },

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_forearm_akm_04"] = {
                    name = "Тактическое цевье АКМ",
                    description = "Тактическое цевье с несколькими планками, для установки дополнительной гарнитуры.",

                    attData = {
                        CompactName = "Тактическое цевье АКМ",
                        SortOrder = 4,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/akm/upg_akm_forearm_04.mdl",
                        Category = {"mz_assaultrifles_forearms_akm"},
                        Attachments = {
                            {
                                PrintName = "Верхняя планка",
                                Category = {
                                    "mz_picatinny_small",
                                    "mz_picatinny_mid",
                                    "mz_laser_small",
                                    "mz_laser_mid",
                                    "mz_scope_small",
                                    "mz_scope_mid",
                                },
                                Pos = Vector(0, -0.014864, -1.90841),
                                Ang = Angle(0, 0, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },
                            {
                                PrintName = "Боковая планка",
                                Category = {
                                    "mz_laser_small",
                                    "mz_laser_mid",
                                },
                                Pos = Vector(-0.756319, 1.37787 , 0.253666),
                                Ang = Angle(0, -90, 0),
                                Icon_Offset = Vector(0, 0, 0),
                                ExcludeElements = {"pgrip_stock"},
                            },
                        },

                        isUpgrade = true,
                    },
                }
            -----------------------------------------РЕСИВЕРЫ----------------------------------------
                ix.itemsList.data.weaponsAtt["mz_assaultrifles_receiver_akm_01"] = {
                    name = "Штатная крышка ствольной коробки АКМ",
                    description = "Штатная крышка ствольной коробки АКМ.",
                    weight = .5,

                    attData = {
                        CompactName = "Штат. крышка АКМ",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/akm/upg_akm_receiver_01.mdl",
                        Category = {"mz_assaultrifles_receivers_akm"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_receiver_akm_02"] = {
                    name = "Тактическая крышка ствольной коробки АКМ",
                    description = "Тактическая крышка ствольной коробки АКМ с планкой пикатинни.",
                    weight = .5,

                    attData = {
                        CompactName = "Такт. крышка АКМ",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/akm/upg_akm_receiver_02.mdl",
                        Category = {"mz_assaultrifles_receivers_akm"},

                        ActivateElements = {"nodovetail"},
                        Attachments = {
                            {
                                PrintName = "Планка на ствольной коробке",
                                Category = {
                                    "mz_scope_small",
                                    "mz_scope_mid",
                                    "mz_scope_big",
                                    "mz_picatinny_small",
                                    "mz_picatinny_mid",
                                    "mz_picatinny_big",
                                },
                                Pos = Vector(0.419103, -0.051953, -0.902359), -- y, x, z
                                Ang = Angle(0, 0, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },
                        },

                        isUpgrade = true,
                    },
                }
            -----------------------------------------РУКОЯТКИ----------------------------------------
                ix.itemsList.data.weaponsAtt["mz_assaultrifles_grip_akm_01"] = {
                    name = "Штатная рукоять АКМ",
                    description = "Штатная деревянная рукоять АКМ. Устаревшая конструкция не обеспечивает достаточной удобности.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатная рукоять АКМ",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/akm/upg_akm_grip_01.mdl",
                        Category = {"mz_assaultrifles_grips_akm"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_grip_akm_02"] = {
                    name = "Эргономичная рукоять АКМ",
                    description = "Удобная эргономичная рукоять для винтовок семейства АК.",
                    weight = .5,

                    attData = {
                        CompactName = "Эргономичная рукоять АКМ",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/akm/upg_akm_grip_02.mdl",
                        Category = {"mz_assaultrifles_grips_akm"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_grip_akm_03"] = {
                    name = "Облегченная рукоять АКМ",
                    description = "Облегченная тактическая рукоять для винтовок семейства АК.",
                    weight = .5,

                    attData = {
                        CompactName = "Облегченная рукоять АКМ",
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/akm/upg_akm_grip_04.mdl",
                        Category = {"mz_assaultrifles_grips_akm"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_grip_akm_04"] = {
                    name = "Тяжелая рукоять АКМ",
                    description = "Тяжелая эргономичная рукоять для винтовок семейства АК.",
                    weight = .5,

                    attData = {
                        CompactName = "Тяжелая рукоять АКМ",
                        SortOrder = 4,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/akm/upg_akm_grip_03.mdl",
                        Category = {"mz_assaultrifles_grips_akm"},

                        isUpgrade = true,
                    },
                }
            -----------------------------------------ПРИКЛАДЫ----------------------------------------
            ix.itemsList.data.weaponsAtt["mz_assaultrifles_stock_akm_01"] = {
                name = "Штатный приклад АКМ",
                description = "Штатный деревянный приклад АКМ.",
                weight = .5,

                attData = {
                    CompactName = "Штатный приклад АКМ",
                    SortOrder = 1,
                    MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                    CustomPros = {
                        -- Ergonomics = "+6",
                    },
                    Model = "models/mz/weapons/assaultrifles/akm/upg_akm_stock_01.mdl",
                    Category = {"mz_assaultrifles_stocks_akm"},

                    isUpgrade = true,
                },
            }

            ix.itemsList.data.weaponsAtt["mz_assaultrifles_stock_akm_02"] = {
                name = "Штатный приклад АКМ с резиновой накладкой",
                description = "Штатный деревянный приклад АКМ с резиновой накладкой.",
                weight = .5,

                attData = {
                    CompactName = "Штат. приклад АКМ с накладкой",
                    SortOrder = 2,
                    MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                    CustomPros = {
                        -- Ergonomics = "+6",
                    },
                    Model = "models/mz/weapons/assaultrifles/akm/upg_akm_stock_02.mdl",
                    Category = {"mz_assaultrifles_stocks_akm"},

                    isUpgrade = true,
                },
            }

            ix.itemsList.data.weaponsAtt["mz_assaultrifles_stock_akm_03"] = {
                name = "Полимерный приклад для АКМ",
                description = "Полимерный приклад для винтовок семейства АК.",
                weight = .5,

                attData = {
                    CompactName = "Полимерный приклад АКМ",
                    SortOrder = 3,
                    MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                    CustomPros = {
                        -- Ergonomics = "+6",
                    },
                    Model = "models/mz/weapons/assaultrifles/akm/upg_akm_stock_03.mdl",
                    Category = {"mz_assaultrifles_stocks_akm"},

                    isUpgrade = true,
                },
            }

            ix.itemsList.data.weaponsAtt["mz_assaultrifles_stock_akm_04"] = {
                name = "Тяжелый приклад АКМ",
                description = "Тяжелый приклад для автоматов семейства АКМ.",
                weight = .5,

                attData = {
                    CompactName = "Тяжелый приклад АКМ",
                    SortOrder = 4,
                    MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                    CustomPros = {
                        -- Ergonomics = "+6",
                    },
                    Model = "models/mz/weapons/assaultrifles/akm/upg_akm_stock_04.mdl",
                    Category = {"mz_assaultrifles_stocks_akm"},

                    isUpgrade = true,
                },
            }
        ---------------------------------------------GalilAR---------------------------------------------
            ------------------------------------------ЦЕВЬЯ------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_assaultrifles_forearm_galilar_01"] = {
                    name = "Штатное цевье GalilAR",
                    description = "Штатное деревянное цевье GalilAR. Не отличается удобностью.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатное цевье GalilAR",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/galilar/upg_galilar_forearm_01.mdl",
                        Category = {"mz_assaultrifles_forearms_galilar"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_forearm_galilar_02"] = {
                    name = "Эргономичное цевье GalilAR",
                    description = "Эргономичное пластиковое цевье для GalilAR. Намного удобнее штатного аналога.",
                    weight = .5,

                    attData = {
                        CompactName = "Эргономичное цевье GalilAR",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/galilar/upg_galilar_forearm_02.mdl",
                        Category = {"mz_assaultrifles_forearms_galilar"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_forearm_galilar_03"] = {
                    name = "Цевье GalilAR с планкой",
                    description = "Эргономичное цевье с верхней планкой для установки тактических модулей или прицелов.",
                    weight = .5,

                    attData = {
                        CompactName = "Цевье GalilAR с планкой",
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/galilar/upg_galilar_forearm_03.mdl",
                        Category = {"mz_assaultrifles_forearms_galilar"},
                        Attachments = {
                            {
                                PrintName = "Верхняя планка",
                                Category = {
                                    "mz_picatinny_small",
                                    "mz_picatinny_mid",
                                    "mz_laser_small",
                                    "mz_laser_mid",
                                    "mz_scope_small",
                                    "mz_scope_mid",
                                },
                                Pos = Vector(0.74745, -0.010719, -1.96912),
                                Ang = Angle(0, 0, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },
                        },

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_forearm_galilar_04"] = {
                    name = "Тактическое цевье GalilAR",
                    description = "Тактическое цевье с несколькими планками, для установки дополнительной гарнитуры.",

                    attData = {
                        CompactName = "Тактическое цевье GalilAR",
                        SortOrder = 4,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/galilar/upg_galilar_forearm_04.mdl",
                        Category = {"mz_assaultrifles_forearms_galilar"},
                        Attachments = {
                            {
                                PrintName = "Верхняя планка",
                                Category = {
                                    "mz_picatinny_small",
                                    "mz_picatinny_mid",
                                    "mz_laser_small",
                                    "mz_laser_mid",
                                    "mz_scope_small",
                                    "mz_scope_mid",
                                },
                                Pos = Vector(0.74745, -0.010719, -1.96912),
                                Ang = Angle(0, 0, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },
                            {
                                PrintName = "Plank_RIGHT",
                                Category = {
                                    "mz_laser_small",
                                    "mz_laser_mid",
                                },
                                Pos = Vector(0.619968, 1.33954, -0.230363),
                                Ang = Angle(0, -90, 0),
                                Icon_Offset = Vector(0, 0, 0),
                                ExcludeElements = {"pgrip_stock"},
                            },
                        },

                        isUpgrade = true,
                    },
                }
            -----------------------------------------РЕСИВЕРЫ----------------------------------------
                ix.itemsList.data.weaponsAtt["mz_assaultrifles_receiver_galilar_01"] = {
                    name = "Штатная крышка ствольной коробки GalilAR",
                    description = "Штатная крышка ствольной коробки GalilAR.",
                    weight = .5,

                    attData = {
                        CompactName = "Штат. крышка GalilAR",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/galilar/upg_galilar_receiver_01.mdl",
                        Category = {"mz_assaultrifles_receivers_galilar"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_receiver_galilar_02"] = {
                    name = "Тактическая крышка ствольной коробки GalilAR",
                    description = "Тактическая крышка ствольной коробки GalilAR с планкой пикатинни.",
                    weight = .5,

                    attData = {
                        CompactName = "Такт. крышка GalilAR",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/galilar/upg_galilar_receiver_02.mdl",
                        Category = {"mz_assaultrifles_receivers_galilar"},

                        ActivateElements = {"nodovetail"},
                        Attachments = {
                            {
                                PrintName = "Планка на ствольной коробке",
                                Category = {
                                    "mz_scope_small",
                                    "mz_scope_mid",
                                    "mz_scope_big",
                                    "mz_picatinny_small",
                                    "mz_picatinny_mid",
                                    "mz_picatinny_big",
                                },
                                Pos = Vector(0.045791, -0.018972, -1.36873), -- y, x, z
                                Ang = Angle(0, 0, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },
                        },

                        isUpgrade = true,
                    },
                }
            -----------------------------------------РУКОЯТКИ----------------------------------------
                ix.itemsList.data.weaponsAtt["mz_assaultrifles_grip_galilar_01"] = {
                    name = "Штатная рукоять GalilAR",
                    description = "Штатная пластиковая рукоять GalilAR.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатная рукоять GalilAR",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/galilar/upg_galilar_grip_01.mdl",
                        Category = {"mz_assaultrifles_grips_galilar"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_grip_galilar_02"] = {
                    name = "Облегченная рукоять GalilAR",
                    description = "Облегченная полимерная рукоять для винтовоки GalilAR.",
                    weight = .5,

                    attData = {
                        CompactName = "Облегченная рукоять GalilAR",
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/galilar/upg_galilar_grip_02.mdl",
                        Category = {"mz_assaultrifles_grips_galilar"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_grip_galilar_03"] = {
                    name = "Тяжелая рукоять GalilAR",
                    description = "Тяжелая эргономичная рукоять для GalilAR.",
                    weight = .5,

                    attData = {
                        CompactName = "Тяжелая рукоять GalilAR",
                        SortOrder = 4,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/galilar/upg_galilar_grip_03.mdl",
                        Category = {"mz_assaultrifles_grips_galilar"},

                        isUpgrade = true,
                    },
                }
            -----------------------------------------ПРИКЛАДЫ----------------------------------------
            ix.itemsList.data.weaponsAtt["mz_assaultrifles_stock_galilar_01"] = {
                name = "Штатный приклад GalilAR",
                description = "Штатный металлический приклад GalilAR.",
                weight = .5,

                attData = {
                    CompactName = "Штатный приклад GalilAR",
                    SortOrder = 1,
                    MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                    CustomPros = {
                        -- Ergonomics = "+6",
                    },
                    Model = "models/mz/weapons/assaultrifles/galilar/upg_galilar_stock_01.mdl",
                    Category = {"mz_assaultrifles_stocks_galilar"},

                    isUpgrade = true,
                },
            }

            ix.itemsList.data.weaponsAtt["mz_assaultrifles_stock_galilar_02"] = {
                name = "Эргономичный приклад GalilAR",
                description = "Монолитный деревянный приклад GalilAR. Имеет удобный форм-фактор, облегчающий стрельбу.",
                weight = .5,

                attData = {
                    CompactName = "Эрг. приклад GalilAR",
                    SortOrder = 2,
                    MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                    CustomPros = {
                        -- Ergonomics = "+6",
                    },
                    Model = "models/mz/weapons/assaultrifles/galilar/upg_galilar_stock_02.mdl",
                    Category = {"mz_assaultrifles_stocks_galilar"},

                    isUpgrade = true,
                },
            }

            ix.itemsList.data.weaponsAtt["mz_assaultrifles_stock_galilar_03"] = {
                name = "Тяжелый приклад для GalilAR",
                description = "Тяжелый каркасный приклад для GalilAR.",
                weight = .5,

                attData = {
                    CompactName = "Тяжелый приклад GalilAR",
                    SortOrder = 3,
                    MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                    CustomPros = {
                        -- Ergonomics = "+6",
                    },
                    Model = "models/mz/weapons/assaultrifles/galilar/upg_galilar_stock_03.mdl",
                    Category = {"mz_assaultrifles_stocks_galilar"},

                    isUpgrade = true,
                },
            }
        ---------------------------------------------SiG-552---------------------------------------------
            ------------------------------------------ЦЕВЬЯ------------------------------------------
            ix.itemsList.data.weaponsAtt["mz_assaultrifles_forearm_sig552_01"] = {
                name = "Штатное цевье SiG-552",
                description = "Штатное пластиковое цевье SiG-552. Не отличается удобностью.",
                weight = .5,

                attData = {
                    CompactName = "Штатное цевье SiG-552",
                    SortOrder = 2,
                    MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                    CustomPros = {
                        -- Ergonomics = "+6",
                    },
                    Model = "models/mz/weapons/assaultrifles/sig552/upg_sig552_forearm_01.mdl",
                    Category = {"mz_assaultrifles_forearms_sig552"},

                    isUpgrade = true,
                },
            }

            ix.itemsList.data.weaponsAtt["mz_assaultrifles_forearm_sig552_02"] = {
                name = "Эргономичное цевье SiG-552",
                description = "Эргономичное пластиковое цевье для SiG-552. Намного удобнее штатного аналога.",
                weight = .5,

                attData = {
                    CompactName = "Эргономичное цевье SiG-552",
                    SortOrder = 2,
                    MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                    CustomPros = {
                        -- Ergonomics = "+6",
                    },
                    Model = "models/mz/weapons/assaultrifles/sig552/upg_sig552_forearm_02.mdl",
                    Category = {"mz_assaultrifles_forearms_sig552"},

                    isUpgrade = true,
                },
            }

            ix.itemsList.data.weaponsAtt["mz_assaultrifles_forearm_sig552_03"] = {
                name = "Цевье SiG-552 с планкой",
                description = "Эргономичное цевье с верхней планкой для установки тактических модулей или прицелов.",
                weight = .5,

                attData = {
                    CompactName = "Цевье SiG-552 с планкой",
                    SortOrder = 3,
                    MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                    CustomPros = {
                        -- Ergonomics = "+6",
                    },
                    Model = "models/mz/weapons/assaultrifles/sig552/upg_sig552_forearm_03.mdl",
                    Category = {"mz_assaultrifles_forearms_sig552"},
                    Attachments = {
                        {
                            PrintName = "Верхняя планка",
                            Category = {
                                "mz_picatinny_small",
                                "mz_picatinny_mid",
                                "mz_laser_small",
                                "mz_laser_mid",
                                "mz_scope_small",
                                "mz_scope_mid",
                            },
                            Pos = Vector(0.09495, -0.007428, -1.82249),
                            Ang = Angle(0, 0, 0),
                            Icon_Offset = Vector(0, 0, 0),
                        },
                    },

                    isUpgrade = true,
                },
            }

            ix.itemsList.data.weaponsAtt["mz_assaultrifles_forearm_sig552_04"] = {
                name = "Тактическое цевье SiG-552",
                description = "Тактическое цевье с несколькими планками, для установки дополнительной гарнитуры.",

                attData = {
                    CompactName = "Тактическое цевье SiG-552",
                    SortOrder = 4,
                    MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                    CustomPros = {
                        -- Ergonomics = "+6",
                    },
                    Model = "models/mz/weapons/assaultrifles/sig552/upg_sig552_forearm_04.mdl",
                    Category = {"mz_assaultrifles_forearms_sig552"},
                    Attachments = {
                        {
                            PrintName = "Верхняя планка",
                            Category = {
                                "mz_picatinny_small",
                                "mz_picatinny_mid",
                                "mz_laser_small",
                                "mz_laser_mid",
                                "mz_scope_small",
                                "mz_scope_mid",
                            },
                            Pos = Vector(0.240796, -0.007366, -1.71969),
                            Ang = Angle(0, 0, 0),
                            Icon_Offset = Vector(0, 0, 0),
                        },
                        {
                            PrintName = "Боковая планка",
                            Category = {
                                "mz_laser_small",
                                "mz_laser_mid",
                            },
                            Pos = Vector(-0.151484, 1.30431, 0.344999),
                            Ang = Angle(0, -90, 0),
                            Icon_Offset = Vector(0, 0, 0),
                            ExcludeElements = {"pgrip_stock"},
                        },
                    },

                    isUpgrade = true,
                },
            }
            -----------------------------------------РУКОЯТКИ----------------------------------------
                ix.itemsList.data.weaponsAtt["mz_assaultrifles_grip_sig552_01"] = {
                    name = "Штатная рукоять SiG-552",
                    description = "Штатная рукоять многих винтовок на базе SiG-550.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатная рукоять SiG-552",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/sig552/upg_sig552_grip_01.mdl",
                        Category = {"mz_assaultrifles_grips_sig552"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_grip_sig552_02"] = {
                    name = "Эргономичная рукоять SiG-552",
                    description = "Удобная эргономичная рукоять для винтовок семейства АК.",
                    weight = .5,

                    attData = {
                        CompactName = "Эргономичная рукоять SiG-552",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/sig552/upg_sig552_grip_02.mdl",
                        Category = {"mz_assaultrifles_grips_sig552"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_grip_sig552_03"] = {
                    name = "Облегченная рукоять SiG-552",
                    description = "Облегченная тактическая рукоять для винтовок типа SiG-550.",
                    weight = .5,

                    attData = {
                        CompactName = "Облегченная рукоять SiG-552",
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/sig552/upg_sig552_grip_03.mdl",
                        Category = {"mz_assaultrifles_grips_sig552"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_grip_sig552_04"] = {
                    name = "Тяжелая рукоять SiG-552",
                    description = "Тяжелая эргономичная рукоять для винтовок типа SiG-552.",
                    weight = .5,

                    attData = {
                        CompactName = "Тяжелая рукоять SiG-552",
                        SortOrder = 4,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/sig552/upg_sig552_grip_04.mdl",
                        Category = {"mz_assaultrifles_grips_sig552"},

                        isUpgrade = true,
                    },
                }
            -----------------------------------------ПРИКЛАДЫ----------------------------------------
                ix.itemsList.data.weaponsAtt["mz_assaultrifles_stock_sig552_01"] = {
                    name = "Штатный приклад SiG-552",
                    description = "Штатный складной приклад для винтовоки SiG-552.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатный приклад SiG-552",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/sig552/upg_sig552_stock_01.mdl",
                        Category = {"mz_assaultrifles_stocks_sig552"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_stock_sig552_02"] = {
                    name = "Усиленный приклад SiG-552",
                    description = "Усиленный складной приклад для винтовоки SiG-552.",
                    weight = .5,

                    attData = {
                        CompactName = "Усиленный приклад SiG-552",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/sig552/upg_sig552_stock_02.mdl",
                        Category = {"mz_assaultrifles_stocks_sig552"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_stock_sig552_03"] = {
                    name = "Тактический приклад SiG-552",
                    description = "Тактический приклад для винтовоки SiG-552.",
                    weight = .5,

                    attData = {
                        CompactName = "Тактический приклад SiG-552",
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/sig552/upg_sig552_stock_03.mdl",
                        Category = {"mz_assaultrifles_stocks_sig552"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_assaultrifles_stock_sig552_04"] = {
                    name = "Тяжелый приклад SiG-552",
                    description = "Тяжелый приклад для винтовоки SiG-552.",
                    weight = .5,

                    attData = {
                        CompactName = "Тяжелый приклад SiG-552",
                        SortOrder = 4,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/assaultrifles/sig552/upg_sig552_stock_04.mdl",
                        Category = {"mz_assaultrifles_stocks_sig552"},

                        isUpgrade = true,
                    },
                }
        -----------------------------------------------G3A3----------------------------------------------
            ------------------------------------ТАКТИЧЕСКИЙ МОДУЛЬ-----------------------------------
                ix.itemsList.data.weaponsAtt["mz_assaultrifles_tacmpdule_g3a3_01"] = {
                        name = "Тактический модуль G3A3",
                        description = "Тактический модуль G3A3.",
                        weight = .5,

                        attData = {
                            CompactName = "Тактический модуль G3A3",
                            SortOrder = 1,
                            MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                            CustomPros = {
                                -- Ergonomics = "+6",
                            },
                            Model = "models/mz/weapons/assaultrifles/g3a3/upg_g3a3_tacmodule_01.mdl",
                            Category = {"mz_assaultrifles_tacmpdule_g3a3"},

                            ToggleOnF = true,
                            ToggleStats = {
                                {
                                    PrintName = "Выкл.",
                                },
                                -- {
                                --     PrintName = "Фонарик",
                                --     Flashlight = true,
                                --     FlashlightColor = Color(255, 255, 255),
                                --     FlashlightMaterial = "effects/arc9_eft/weapon_flashlight_cookie",
                                --     FlashlightDistance = 3000,
                                --     FlashlightFOV = 85,
                                --     FlashlightAttachment = 1,
                                --     Flare = true,
                                --     FlareColor = Color(255, 255, 255),
                                --     FlareSize = 125,
                                --     FlareAttachment = 1,
                                -- },
                                {
                                    PrintName = "ЛЦУ (З)",
                                    Laser = true,
                                    LaserStrength = 1,
                                    LaserFlareMat = mat_LaserFlareMat,
                                    LaserTraceMat = mat_LaserTraceMat,--mat_LaserTraceMatGrad,
                                    LaserColor = Color(8, 236, 0),
                                    LaserAttachment = 2,
                                    RecoilMultHipFire = 0.8,
                                    SpreadMultHipFire = 0.8,
                                },
                                -- {
                                --     PrintName = "ЛЦУ (З) + Фонарь",
                                --     Laser = true,
                                --     LaserStrength = 1,
                                --     LaserFlareMat = mat_LaserFlareMat,
                                --     LaserTraceMat = mat_LaserTraceMat,--mat_LaserTraceMatGrad,
                                --     LaserColor = Color(8, 236, 0),
                                --     LaserAttachment = 2,
                                --     RecoilMultHipFire = 0.8,
                                --     SpreadMultHipFire = 0.8,
                                --     Flashlight = true,
                                --     FlashlightColor = Color(255, 255, 255),
                                --     FlashlightMaterial = "effects/arc9_eft/weapon_flashlight_cookie",
                                --     FlashlightDistance = 3000,
                                --     FlashlightFOV = 85,
                                --     FlashlightAttachment = 1,
                                --     Flare = true,
                                --     FlareColor = Color(255, 255, 255),
                                --     FlareSize = 125,
                                --     FlareAttachment = 1,
                                -- },
                            },
                        },
                    }
    ------------------------------------------СНАЙПЕРСКИЕ ВИНТОВКИ-------------------------------------------
        -----------------------------------------Винтовка Мосина-----------------------------------------
            -----------------------------------------СТВОЛЫ------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_sniperrifles_barrel_mosin_01"] = {
                    name = "Штатный ствол винтовки Мосина",
                    description = "Штаный ствол винтовки Мосина калибра 7.62.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатный ствол винтовки Мосина",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Submachineguns",
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 1,
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/sniperrifles/mosin/upg_mosin_barrel_01.mdl",
                        Category = {"mz_sniperrifles_barrels_mosin"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_sniperrifles_barrel_mosin_02"] = {
                    name = "Ствол винтовки Мосина с нарезом",
                    description = "Ствол винтовки Мосина калибра с нарезом под дульные устройства калибра 7.62.",
                    weight = .5,

                    attData = {
                        CompactName = "Ствол винтовки Мосина с нарезом",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Submachineguns",
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 1,
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/sniperrifles/mosin/upg_mosin_barrel_02.mdl",
                        Category = {"mz_sniperrifles_barrels_mosin"},
                        Attachments = {
                            {
                                PrintName = "Дуло",
                                Category = {
                                    "mz_muzzle_762x51",
                                    "mz_muzzle_762_mult",
                                },
                                Pos = Vector(-3.846, -0.000001, -0.000037),
                                Ang = Angle(0, 0, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },
                        },

                        isUpgrade = true,
                    },
                }
            ------------------------------------------ЦЕВЬЯ------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_sniperrifles_forearm_mosin_01"] = {
                    name = "Штатное цевье винтовки Мосина",
                    description = "Штатное деревянное цевье винтовки Мосина.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатное цевье винтовки Мосина",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Sniper Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/sniperrifles/mosin/upg_mosin_forearm_01.mdl",
                        Category = {"mz_sniperrifles_forearms_mosin"},
                        Attachments = {
                            {
                                PrintName = "Ствол",
                                Category = {
                                    "mz_sniperrifles_barrels_mosin",
                                },
                                Pos = Vector(-4.54669, -0.012753, -0.302428),
                                Ang = Angle(0, 0, 0),
                                Icon_Offset = Vector(0, 0, 0),
                                Integral = "mz_sniperrifles_barrel_mosin_01", -- Модификация встроена по умолчанию.
                                Installed = "mz_sniperrifles_barrel_mosin_01", -- Название установленной модификации.
                                Hidden = true,
                            },
                        },

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_sniperrifles_forearm_mosin_02"] = {
                    name = "Укороченное цевье винтовки Мосина",
                    description = "Укороченное деревянное цевье винтовки Мосина.",
                    weight = .5,

                    attData = {
                        CompactName = "Укороченное цевье винтовки Мосина",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Sniper Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/sniperrifles/mosin/upg_mosin_forearm_02.mdl",
                        Category = {"mz_sniperrifles_forearms_mosin"},
                        Attachments = {
                            {
                                PrintName = "Ствол",
                                Category = {
                                    "mz_sniperrifles_barrels_mosin",
                                },
                                Pos = Vector(1.22781, -0.012753, -0.302428),
                                Ang = Angle(0, 0, 0),
                                Icon_Offset = Vector(0, 0, 0),
                                Integral = "mz_sniperrifles_barrel_mosin_01", -- Модификация встроена по умолчанию.
                                Installed = "mz_sniperrifles_barrel_mosin_01", -- Название установленной модификации.
                                Hidden = true,
                            },
                        },

                        isUpgrade = true,
                    },
                }
            -------------------------------------------ЛОЖА-----------------------------------------
                ix.itemsList.data.weaponsAtt["mz_sniperrifles_grip_mosin_01"] = {
                    name = "Штатное ложе винтовки Мосина",
                    description = "Штатное деревянное ложе винтовки Мосина.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатное ложе винтовки Мосина",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/sniperrifles/mosin/upg_mosin_grip_01.mdl",
                        Category = {"mz_sniperrifles_grips_mosin"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_sniperrifles_grip_mosin_02"] = {
                    name = "Укороченное ложе винтовки Мосина",
                    description = "Укороченное деревянное ложе винтовки Мосина.",
                    weight = .5,

                    attData = {
                        CompactName = "Укороченное ложе винтовки Мосина",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/sniperrifles/mosin/upg_mosin_grip_02.mdl",
                        Category = {"mz_sniperrifles_grips_mosin"},

                        isUpgrade = true,
                    },
                }
            -----------------------------------------ПРИЦЕЛЫ----------------------------------------
                ix.itemsList.data.weaponsAtt["mz_sniperrifles_sight_mosin_01"] = {
                    name = "Штатная прицельная планка винтовки Мосина",
                    description = "Штатная прицельная планка винтовки Мосина для стрельбы с помощью механического прицела.",
                    weight = .5,

                    attData = {
                        CompactName = "Прицельная планка винтовки Мосина",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Submachineguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/sniperrifles/mosin/upg_mosin_sight_01.mdl",
                        Category = {"mz_sniperrifles_sights_mosin"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_sniperrifles_sight_mosin_02"] = {
                    name = "Тактическая планка винтовки Мосина",
                    description = "Прицельная планка винтовки Мосина с креплением Пикатинни для установки дополнительных приспособлений.",
                    weight = .5,

                    attData = {
                        CompactName = "Тактическая планка винтовки Мосина",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Submachineguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/sniperrifles/mosin/upg_mosin_sight_02.mdl",
                        Category = {"mz_sniperrifles_sights_mosin"},
                        Attachments = {
                            {
                                PrintName = "Планка Пикатинни",
                                Category = {
                                    "mz_scope_small",
                                    "mz_scope_mid",
                                    "mz_scope_big",
                                    "mz_laser_small",
                                    "mz_laser_mid",
                                    "mz_laser_big",
                                    "mz_picatinny_small",
                                    "mz_picatinny_mid",
                                    "mz_picatinny_big",
                                },
                                Pos = Vector(-1.25014, -0.000061, -0.538104),
                                Ang = Angle(0, 0, 0),
                                Icon_Offset = Vector(0, 0, 0),
                                ExcludeElements = {"nobscope"},
                            },
                        },

                        isUpgrade = true,
                    },
                }
            -----------------------------------------МАГАЗИНЫ---------------------------------------
                ix.itemsList.data.weaponsAtt["mz_sniperrifles_magazine_mosin_01"] = {
                    name = "Штатный магазин винтовки Мосина",
                    description = "Штатный несъемный магазин винтовки Мосина. Вмещает 5 патронов.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатный магазин винтовки Мосина",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Submachineguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/sniperrifles/mosin/upg_mosin_magazine_01.mdl",
                        Category = {"mz_sniperrifles_magazines_mosin"},

                        ClipSize = 5,
                        ChamberSize = 0,

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_sniperrifles_magazine_mosin_02"] = {
                    name = "Увеличенный магазин винтовки Мосина",
                    description = "Увеличенный несъемный магазин винтовки Мосина. Вмещает 8 патронов.",
                    weight = .5,

                    attData = {
                        CompactName = "Увеличенный магазин винтовки Мосина",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Submachineguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/sniperrifles/mosin/upg_mosin_magazine_02.mdl",
                        Category = {"mz_sniperrifles_magazines_mosin"},

                        ClipSize = 8,
                        ChamberSize = 0,

                        isUpgrade = true,
                    },
                }
        ---------------------------------------------Kar98k------------------------------------------
            -----------------------------------------СТВОЛЫ------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_sniperrifles_barrel_kar98k_01"] = {
                    name = "Штатный ствол Kar98k",
                    description = "Штаный ствол Kar98k калибра 7.62.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатный ствол Kar98k",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Submachineguns",
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 1,
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/sniperrifles/kar98k/upg_kar98k_barrel_01.mdl",
                        Category = {"mz_sniperrifles_barrels_kar98k"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_sniperrifles_barrel_kar98k_02"] = {
                    name = "Ствол Kar98k с нарезом",
                    description = "Ствол Kar98k калибра с нарезом под дульные устройства калибра 7.62.",
                    weight = .5,

                    attData = {
                        CompactName = "Ствол Kar98k с нарезом",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Submachineguns",
                        MuzzleDevice = true,
                        MuzzleDevice_Priority = 1,
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/sniperrifles/kar98k/upg_kar98k_barrel_02.mdl",
                        Category = {"mz_sniperrifles_barrels_kar98k"},
                        Attachments = {
                            {
                                PrintName = "Дуло",
                                Category = {
                                    "mz_muzzle_762x51",
                                    "mz_muzzle_762_mult",
                                },
                                Pos = Vector(-6.75874, 0.000111, 0.421898),
                                Ang = Angle(0, 0, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },
                        },

                        isUpgrade = true,
                    },
                }
            ------------------------------------------ЦЕВЬЯ------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_sniperrifles_forearm_kar98k_01"] = {
                    name = "Штатное цевье Kar98k",
                    description = "Штатное деревянное цевье Kar98k.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатное цевье Kar98k",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Sniper Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/sniperrifles/kar98k/upg_kar98k_forearm_01.mdl",
                        Category = {"mz_sniperrifles_forearms_kar98k"},
                        Attachments = {
                            {
                                PrintName = "Ствол",
                                Category = {
                                    "mz_sniperrifles_barrels_kar98k",
                                },
                                Pos = Vector(-0.873669, 0.111254, -0.810071),
                                Ang = Angle(0, 0, 0),
                                Icon_Offset = Vector(0, 0, 0),
                                Integral = "mz_sniperrifles_barrel_kar98k_01", -- Модификация встроена по умолчанию.
                                Installed = "mz_sniperrifles_barrel_kar98k_01", -- Название установленной модификации.
                                Hidden = true,
                            },
                        },

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_sniperrifles_forearm_kar98k_02"] = {
                    name = "Укороченное цевье Kar98k",
                    description = "Укороченное деревянное цевье Kar98k.",
                    weight = .5,

                    attData = {
                        CompactName = "Укороченное цевье Kar98k",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Sniper Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/sniperrifles/kar98k/upg_kar98k_forearm_02.mdl",
                        Category = {"mz_sniperrifles_forearms_kar98k"},
                        Attachments = {
                            {
                                PrintName = "Ствол",
                                Category = {
                                    "mz_sniperrifles_barrels_kar98k",
                                },
                                Pos = Vector(4.05621, 0.111254, -0.810071),
                                Ang = Angle(0, 0, 0),
                                Icon_Offset = Vector(0, 0, 0),
                                Integral = "mz_sniperrifles_barrel_kar98k_01", -- Модификация встроена по умолчанию.
                                Installed = "mz_sniperrifles_barrel_kar98k_01", -- Название установленной модификации.
                                Hidden = true,
                            },
                        },

                        isUpgrade = true,
                    },
                }
            -------------------------------------------ЛОЖА-----------------------------------------
                ix.itemsList.data.weaponsAtt["mz_sniperrifles_grip_kar98k_01"] = {
                    name = "Штатное ложе Kar98k",
                    description = "Штатное деревянное ложе Kar98k.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатное ложе Kar98k",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/sniperrifles/kar98k/upg_kar98k_grip_01.mdl",
                        Category = {"mz_sniperrifles_grips_kar98k"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_sniperrifles_grip_kar98k_02"] = {
                    name = "Укороченное ложе Kar98k",
                    description = "Укороченное деревянное ложе Kar98k.",
                    weight = .5,

                    attData = {
                        CompactName = "Укороченное ложе Kar98k",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/sniperrifles/kar98k/upg_kar98k_grip_02.mdl",
                        Category = {"mz_sniperrifles_grips_kar98k"},

                        isUpgrade = true,
                    },
                }
            -----------------------------------------ПРИЦЕЛЫ----------------------------------------
                ix.itemsList.data.weaponsAtt["mz_sniperrifles_sight_kar98k_01"] = {
                    name = "Штатная прицельная планка Kar98k",
                    description = "Штатная прицельная планка Kar98k для стрельбы с помощью механического прицела.",
                    weight = .5,

                    attData = {
                        CompactName = "Прицельная планка Kar98k",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Submachineguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/sniperrifles/kar98k/upg_kar98k_sight_01.mdl",
                        Category = {"mz_sniperrifles_sights_kar98k"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_sniperrifles_sight_kar98k_02"] = {
                    name = "Тактическая планка Kar98k",
                    description = "Прицельная планка Kar98k с креплением Пикатинни для установки дополнительных приспособлений.",
                    weight = .5,

                    attData = {
                        CompactName = "Тактическая планка Kar98k",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Submachineguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/sniperrifles/kar98k/upg_kar98k_sight_02.mdl",
                        Category = {"mz_sniperrifles_sights_kar98k"},
                        Attachments = {
                            {
                                PrintName = "Планка Пикатинни",
                                Category = {
                                    "mz_scope_small",
                                    "mz_scope_mid",
                                    "mz_scope_big",
                                    "mz_laser_small",
                                    "mz_laser_mid",
                                    "mz_laser_big",
                                    "mz_picatinny_small",
                                    "mz_picatinny_mid",
                                    "mz_picatinny_big",
                                },
                                Pos = Vector(-0.325208, 0.019589, -0.590123),
                                Ang = Angle(0, 0, 0),
                                Icon_Offset = Vector(0, 0, 0),
                                ExcludeElements = {"nobscope"},
                            },
                        },

                        isUpgrade = true,
                    },
                }
            -----------------------------------------МАГАЗИНЫ---------------------------------------
                ix.itemsList.data.weaponsAtt["mz_sniperrifles_magazine_kar98k_02"] = {
                    name = "Увеличенный магазин Kar98k",
                    description = "Увеличенный несъемный магазин Kar98k. Вмещает 8 патронов.",
                    weight = .5,

                    attData = {
                        CompactName = "Увеличенный магазин Kar98k",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Submachineguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/sniperrifles/kar98k/upg_kar98k_magazine_02.mdl",
                        Category = {"mz_sniperrifles_magazines_kar98k"},

                        ClipSize = 8,
                        ChamberSize = 0,

                        isUpgrade = true,
                    },
                }
        ----------------------------------------------СКС--------------------------------------------
            -----------------------------------------СТВОЛЫ------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_sniperrifles_barrel_sks_01"] = {
                    name = "Штатный ствол СКС",
                    description = "Штаный ствол СКС калибра 7.62.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатный ствол СКС",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Submachineguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/sniperrifles/sks/upg_sks_barrel_01.mdl",
                        Category = {"mz_sniperrifles_barrels_sks"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_sniperrifles_barrel_sks_02"] = {
                    name = "Ствол СКС с нарезом",
                    description = "Ствол СКС калибра с нарезом под дульные устройства калибра 7.62.",
                    weight = .5,

                    attData = {
                        CompactName = "Ствол СКС с нарезом",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Submachineguns",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/sniperrifles/sks/upg_sks_barrel_02.mdl",
                        Category = {"mz_sniperrifles_barrels_sks"},
                        Attachments = {
                            {
                                PrintName = "Дуло",
                                Category = {
                                    "mz_muzzle_762x39",
                                    "mz_muzzle_762_mult",
                                },
                                Pos = Vector(-11.3784, -0.000015, 0.002869),
                                Ang = Angle(0, 0, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },
                        },

                        isUpgrade = true,
                    },
                }
            ------------------------------------------ЦЕВЬЯ------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_sniperrifles_forearm_sks_01"] = {
                    name = "Штатное цевье СКС",
                    description = "Штатное деревянное цевье СКС.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатное цевье СКС",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Sniper Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/sniperrifles/sks/upg_sks_forearm_01.mdl",
                        Category = {"mz_sniperrifles_forearms_sks"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_sniperrifles_forearm_sks_02"] = {
                    name = "Тактическое цевье СКС",
                    description = "Тактическое цевье СКС с планкой пикатинни, для установки дополнительной гарнитуры.",
                    weight = .5,

                    attData = {
                        CompactName = "Тактическое цевье СКС",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Sniper Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/sniperrifles/sks/upg_sks_forearm_02.mdl",
                        Category = {"mz_sniperrifles_forearms_sks"},
                        Attachments = {
                            {
                                PrintName = "Верхняя планка",
                                Category = {
                                    "mz_picatinny_small",
                                    "mz_picatinny_mid",
                                    "mz_laser_small",
                                    "mz_laser_mid",
                                    "mz_scope_small",
                                    "mz_scope_mid",
                                },
                                Pos = Vector(0.053575, -0.0014, -0.999795),
                                Ang = Angle(0, 0, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },
                        },

                        isUpgrade = true,
                    },
                }
            -------------------------------------------ЛОЖА-----------------------------------------
                ix.itemsList.data.weaponsAtt["mz_sniperrifles_stock_sks_01"] = {
                    name = "Штатное ложе СКС",
                    description = "Штатное деревянное ложе СКС.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатное ложе СКС",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/sniperrifles/sks/upg_sks_stock_01.mdl",
                        Category = {"mz_sniperrifles_stocks_sks"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_sniperrifles_stock_sks_02"] = {
                    name = "Эргономичное ложе СКС",
                    description = "Полимерное эргономичное ложе СКС. Удобнее штатного аналога.",
                    weight = .5,

                    attData = {
                        CompactName = "Эргономичное ложе СКС",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/sniperrifles/sks/upg_sks_stock_02.mdl",
                        Category = {"mz_sniperrifles_stocks_sks"},

                        isUpgrade = true,
                    },
                }
            -----------------------------------------РЕСИВЕРЫ----------------------------------------
                ix.itemsList.data.weaponsAtt["mz_sniperrifles_receiver_sks_01"] = {
                    name = "Тактический кронштейн СКС",
                    description = "Тактический кронштейн с планкой пикатинни для СКС.",
                    weight = .5,

                    attData = {
                        CompactName = "Тактический кронштейн СКС",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/sniperrifles/sks/upg_sks_reciever_01.mdl",
                        Category = {"mz_sniperrifles_receivers_sks"},

                        ActivateElements = {"nodovetail"},
                        Attachments = {
                            {
                                PrintName = "Тактический кронштейн",
                                Category = {
                                    "mz_scope_small",
                                    "mz_scope_mid",
                                    "mz_scope_big",
                                    "mz_picatinny_small",
                                    "mz_picatinny_mid",
                                    "mz_picatinny_big",
                                },
                                Pos = Vector(1.23804, 0.160644, -0.941499), -- y, x, z
                                Ang = Angle(0, 0, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },
                        },

                        isUpgrade = true,
                    },
                }
        -------------------------------------------САЙГА МК-545------------------------------------------
            ------------------------------------------ЦЕВЬЯ------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_sniperrifles_forearm_saigamk545_01"] = {
                    name = "Штатное цевье Сайга МК-545",
                    description = "Штатное цевье Сайга МК-545.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатное цевье Сайга МК-545",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Sniper Rifles",
                        Model = "models/mz/weapons/sniperrifles/saigamk545/upg_saigamk545_forearm_01.mdl",
                     Category = {"mz_sniperrifles_forearms_saigamk545"},

                    isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_sniperrifles_forearm_saigamk545_02"] = {
                    name = "Цевье Сайга МК-545 с верхней планкой",
                    description = "Цевье Сайга МК-545 с верхней планкой Пикатинни для установки навесного оборудования.",
                    weight = .5,

                    attData = {
                        CompactName = "Цевье Сайга МК-545 с верхней планкой",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Sniper Rifles",
                        Model = "models/mz/weapons/sniperrifles/saigamk545/upg_saigamk545_forearm_02.mdl",
                        Category = {"mz_sniperrifles_forearms_saigamk545"},
                        Attachments = {
                            {
                                PrintName = "Верхняя планка",
                                Category = {
                                    "mz_picatinny_small",
                                    "mz_picatinny_mid",
                                    "mz_laser_small",
                                    "mz_laser_mid",
                                    "mz_scope_small",
                                    "mz_scope_mid",
                                },
                                Pos = Vector(0.562185, 0.009773, -1.21783),
                                Ang = Angle(0, 0, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },
                        },

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_sniperrifles_forearm_saigamk545_03"] = {
                    name = "Цевье Сайга МК-545 с верхней и нижней планками",
                    description = "Цевье Сайга МК-545 с верхней и нижней планками Пикатинни для установки навесного оборудования.",
                    weight = .5,

                    attData = {
                        CompactName = "Цевье Сайга МК-545 с верхней и нижней планками",
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Sniper Rifles",
                        Model = "models/mz/weapons/sniperrifles/saigamk545/upg_saigamk545_forearm_03.mdl",
                        Category = {"mz_sniperrifles_forearms_saigamk545"},
                        Attachments = {
                            {
                                PrintName = "Верхняя планка",
                                Category = {
                                    "mz_picatinny_small",
                                    "mz_picatinny_mid",
                                    "mz_laser_small",
                                    "mz_laser_mid",
                                    "mz_scope_small",
                                    "mz_scope_mid",
                                },
                                Pos = Vector(0.562185, 0.009773, -1.21783),
                                Ang = Angle(0, 0, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },
                            {
                                PrintName = "Нижняя планка",
                                Category = {
                                    "mz_laser_small",
                                    "mz_laser_mid",
                                },
                                Pos = Vector(-3.74022, 0.016808, 1.96128 ),
                                Ang = Angle(0, 180, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },
                        },

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_sniperrifles_forearm_saigamk545_04"] = {
                    name = "Тактическое цевье Сайга МК-545",
                    description = "Тактическое цевье Сайга МК-545 с большим количеством планок Пикатинни для установки навесного оборудования.",
                    weight = .5,

                    attData = {
                        CompactName = "Тактическое цевье Сайга МК-545",
                        SortOrder = 4,
                        MenuCategory = "ARC9 MZ - Attachments Sniper Rifles",
                        Model = "models/mz/weapons/sniperrifles/saigamk545/upg_saigamk545_forearm_04.mdl",
                        Category = {"mz_sniperrifles_forearms_saigamk545"},
                        Attachments = {
                            {
                                PrintName = "Верхняя планка средняя",
                                Category = {
                                    "mz_picatinny_small",
                                    "mz_picatinny_mid",
                                    "mz_laser_small",
                                    "mz_laser_mid",
                                    "mz_scope_small",
                                    "mz_scope_mid",
                                },
                                Pos = Vector(0.993031, 0.013287, -1.41284),
                                Ang = Angle(0, 0, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },

                            {
                                PrintName = "Верхняя планка малая",
                                Category = {
                                    "mz_picatinny_small",
                                    "mz_picatinny_mid",
                                },
                                Pos = Vector(-3.72945, 0.013287, -1.41284),
                                Ang = Angle(0, 0, 0),
                                Icon_Offset = Vector(0, 0, 0),
                                ExtraSightDistance = 5,
                            },

                            {
                                PrintName = "Правая планка",
                                Category = {
                                    "mz_laser_small",
                                    "mz_laser_mid",
                                },
                                Pos = Vector(-4.12442, 1.24196, 0.597826),
                                Ang = Angle(0, 270, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },

                            {
                                PrintName = "Левая планка",
                                Category = {
                                    "mz_laser_small",
                                    "mz_laser_mid",
                                },
                                Pos = Vector(-4.12442, -1.21538, 0.597826),
                                Ang = Angle(0, 90, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },

                            {
                                PrintName = "Нижняя планка",
                                Category = {
                                    "mz_picatinny_small",
                                    "mz_picatinny_mid",
                                    "mz_laser_small",
                                    "mz_laser_mid",
                                    "mz_scope_small",
                                    "mz_scope_mid",
                                },
                                Pos = Vector(-3.73411, 0.013289, 2.0915),
                                Ang = Angle(0, 180, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },
                        },

                        isUpgrade = true,
                    },
                }

            -----------------------------------------РЕСИВЕРЫ----------------------------------------
                ix.itemsList.data.weaponsAtt["mz_sniperrifles_receiver_saigamk545_01"] = {
                    name = "Тактическая планка Сайга МК-545",
                    description = "Тактическая планка Пикатинни устанавливаемая на крышку ствольной коробки Сайга МК-545.",
                    weight = .5,

                    attData = {
                        CompactName = "Тактическая планка Сайга МК-545",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Sniper Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/sniperrifles/saigamk545/upg_saigamk545_receiver_01.mdl",
                        Category = {"mz_sniperrifles_receivers_saigamk545"},

                        ActivateElements = {"nodovetail"},
                        Attachments = {
                            {
                                PrintName = "Планка Пикатинни",
                                Category = {
                                    "mz_scope_small",
                                    "mz_scope_mid",
                                    "mz_scope_big",
                                    "mz_picatinny_small",
                                    "mz_picatinny_mid",
                                    "mz_picatinny_big",
                                },
                                Pos = Vector(0.752597, 0.000001, -0.430168), -- y, x, z
                                Ang = Angle(0, 0, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },
                        },

                        isUpgrade = true,
                    },
                }
            -----------------------------------------ПРИКЛАДЫ---------------------------------------
                ix.itemsList.data.weaponsAtt["mz_sniperrifles_stock_saigamk545_01"] = {
                    name = "Штатный приклад Сайга МК-545",
                    description = "Штатный приклад Сайга МК-545.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатный приклад Сайга МК-545",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Sniper Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/sniperrifles/saigamk545/upg_saigamk545_stock_01.mdl",
                        Category = {"mz_sniperrifles_stocks_saigamk545"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_sniperrifles_stock_saigamk545_02"] = {
                    name = "Эргономичный приклад Сайга МК-545",
                    description = "ргономичный приклад Сайга МК-545. Удобнее штатного аналога.",
                    weight = .5,

                    attData = {
                        CompactName = "Эрг. приклад Сайга МК-545",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Sniper Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/sniperrifles/saigamk545/upg_saigamk545_stock_02.mdl",
                        Category = {"mz_sniperrifles_stocks_saigamk545"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_sniperrifles_stock_saigamk545_03"] = {
                    name = "Утяжеленный приклад Сайга МК-545",
                    description = "Утяжеленный приклад Сайга МК-545. Обеспечивает хороший контроль над отдачей.",
                    weight = .5,

                    attData = {
                        CompactName = "Тяж приклад Сайга МК-545",
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Sniper Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/sniperrifles/saigamk545/upg_saigamk545_stock_03.mdl",
                        Category = {"mz_sniperrifles_stocks_saigamk545"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_sniperrifles_stock_saigamk545_04"] = {
                    name = "Тактический приклад Сайга МК-545",
                    description = "Тактический приклад Сайга МК-545.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатный приклад Сайга МК-545",
                        SortOrder = 4,
                        MenuCategory = "ARC9 MZ - Attachments Sniper Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/sniperrifles/saigamk545/upg_saigamk545_stock_04.mdl",
                        Category = {"mz_sniperrifles_stocks_saigamk545"},

                        isUpgrade = true,
                    },
                }
        -------------------------------------------SiG-550 Snipe-----------------------------------------
            ------------------------------------------ЦЕВЬЯ------------------------------------------
                ix.itemsList.data.weaponsAtt["mz_sniperrifles_forearm_sig550snipe_01"] = {
                    name = "Штатное цевье SiG-550 Snipe",
                    description = "Штатное цевье SiG-550 Snipe.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатное цевье SiG-550 Snipe",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Sniper Rifles",
                        Model = "models/mz/weapons/sniperrifles/sig550snipe/upg_sig550snipe_forearm_01.mdl",
                    Category = {"mz_sniperrifles_forearms_sig550snipe"},

                    isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_sniperrifles_forearm_sig550snipe_02"] = {
                    name = "Цевье SiG-550 Snipe с верхней планкой",
                    description = "Цевье SiG-550 Snipe с верхней планкой Пикатинни для установки навесного оборудования.",
                    weight = .5,

                    attData = {
                        CompactName = "Цевье SiG-550 Snipe с верхней планкой",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Sniper Rifles",
                        Model = "models/mz/weapons/sniperrifles/sig550snipe/upg_sig550snipe_forearm_02.mdl",
                        Category = {"mz_sniperrifles_forearms_sig550snipe"},
                        Attachments = {
                            {
                                PrintName = "Верхняя планка",
                                Category = {
                                    "mz_picatinny_small",
                                    "mz_picatinny_mid",
                                    "mz_laser_small",
                                    "mz_laser_mid",
                                    "mz_scope_small",
                                    "mz_scope_mid",
                                },
                                Pos = Vector(2.75986, 0.000879, -1.99813),
                                Ang = Angle(0, 0, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },
                        },

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_sniperrifles_forearm_sig550snipe_03"] = {
                    name = "Цевье SiG-550 Snipe с верхней и нижней планками",
                    description = "Цевье SiG-550 Snipe с верхней и нижней планками Пикатинни для установки навесного оборудования.",
                    weight = .5,

                    attData = {
                        CompactName = "Цевье SiG-550 Snipe с верхней и нижней планками",
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Sniper Rifles",
                        Model = "models/mz/weapons/sniperrifles/sig550snipe/upg_sig550snipe_forearm_03.mdl",
                        Category = {"mz_sniperrifles_forearms_sig550snipe"},
                        Attachments = {
                            {
                                PrintName = "Верхняя планка",
                                Category = {
                                    "mz_picatinny_small",
                                    "mz_picatinny_mid",
                                    "mz_laser_small",
                                    "mz_laser_mid",
                                    "mz_scope_small",
                                    "mz_scope_mid",
                                },
                                Pos = Vector(2.8738, 0.000002, -1.68109),
                                Ang = Angle(0, 0, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },
                            {
                                PrintName = "Нижняя планка",
                                Category = {
                                    "mz_laser_small",
                                    "mz_laser_mid",
                                },
                                Pos = Vector(-2.24385, 0.000006, 1.64966),
                                Ang = Angle(0, 180, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },
                        },

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_sniperrifles_forearm_sig550snipe_04"] = {
                    name = "Тактическое цевье SiG-550 Snipe",
                    description = "Тактическое цевье SiG-550 Snipe с большим количеством планок Пикатинни для установки навесного оборудования.",
                    weight = .5,

                    attData = {
                        CompactName = "Тактическое цевье SiG-550 Snipe",
                        SortOrder = 4,
                        MenuCategory = "ARC9 MZ - Attachments Sniper Rifles",
                        Model = "models/mz/weapons/sniperrifles/sig550snipe/upg_sig550snipe_forearm_04.mdl",
                        Category = {"mz_sniperrifles_forearms_sig550snipe"},
                        Attachments = {
                            {
                                PrintName = "Верхняя планка средняя",
                                Category = {
                                    "mz_picatinny_small",
                                    "mz_picatinny_mid",
                                    "mz_laser_small",
                                    "mz_laser_mid",
                                    "mz_scope_small",
                                    "mz_scope_mid",
                                },
                                Pos = Vector(4.01197, -0.00039, -1.81633),
                                Ang = Angle(0, 0, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },

                            {
                                PrintName = "Верхняя планка малая",
                                Category = {
                                    "mz_picatinny_small",
                                    "mz_picatinny_mid",
                                },
                                Pos = Vector(-2.06047, 0.001498, -1.38874),
                                Ang = Angle(0, 0, 0),
                                Icon_Offset = Vector(0, 0, 0),
                                ExtraSightDistance = 5,
                            },

                            {
                                PrintName = "Правая планка",
                                Category = {
                                    "mz_laser_small",
                                    "mz_laser_mid",
                                },
                                Pos = Vector(1.15018, 1.28362, 0.100236),
                                Ang = Angle(0, 270, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },

                            {
                                PrintName = "Левая планка",
                                Category = {
                                    "mz_laser_small",
                                    "mz_laser_mid",
                                },
                                Pos = Vector(1.15018, -1.28362, -0.100236),
                                Ang = Angle(0, 90, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },

                            {
                                PrintName = "Нижняя планка",
                                Category = {
                                    "mz_picatinny_small",
                                    "mz_picatinny_mid",
                                    "mz_laser_small",
                                    "mz_laser_mid",
                                    "mz_scope_small",
                                    "mz_scope_mid",
                                },
                                Pos = Vector(-3.69323, 0.000883, 1.87711),
                                Ang = Angle(0, 180, 0),
                                Icon_Offset = Vector(0, 0, 0),
                            },
                        },

                        isUpgrade = true,
                    },
                }

            -----------------------------------------РУКОЯТКИ----------------------------------------
                ix.itemsList.data.weaponsAtt["mz_sniperrifles_grip_sig550snipe_01"] = {
                    name = "Штатная рукоять SiG-550 Snipe",
                    description = "Штатная рукоять многих винтовок на базе SiG-550 Snipe.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатная рукоять SiG-550 Snipe",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/sniperrifles/sig550snipe/upg_sig550snipe_grip_01.mdl",
                        Category = {"mz_sniperrifles_grips_sig550snipe"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_sniperrifles_grip_sig550snipe_02"] = {
                    name = "Эргономичная рукоять SiG-550 Snipe",
                    description = "Штатная рукоять многих винтовок на базе SiG-550 Snipe.",
                    weight = .5,

                    attData = {
                        CompactName = "Эрг. рукоять SiG-550 Snipe",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/sniperrifles/sig550snipe/upg_sig550snipe_grip_02.mdl",
                        Category = {"mz_sniperrifles_grips_sig550snipe"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_sniperrifles_grip_sig550snipe_03"] = {
                    name = "Облегченная рукоять SiG-550 Snipe",
                    description = "Облегченная рукоять многих винтовок на базе SiG-550 Snipe.",
                    weight = .5,

                    attData = {
                        CompactName = "Облегченная рукоять SiG-550 Snipe",
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/sniperrifles/sig550snipe/upg_sig550snipe_grip_03.mdl",
                        Category = {"mz_sniperrifles_grips_sig550snipe"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_sniperrifles_grip_sig550snipe_04"] = {
                    name = "Тактическая рукоять SiG-550 Snipe",
                    description = "Тактическая рукоять многих винтовок на базе SiG-550 Snipe.",
                    weight = .5,

                    attData = {
                        CompactName = "Тактическая рукоять SiG-550 Snipe",
                        SortOrder = 4,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/sniperrifles/sig550snipe/upg_sig550snipe_grip_04.mdl",
                        Category = {"mz_sniperrifles_grips_sig550snipe"},

                        isUpgrade = true,
                    },
                }

            -----------------------------------------ПРИКЛАДЫ---------------------------------------
                ix.itemsList.data.weaponsAtt["mz_sniperrifles_stock_sig550snipe_01"] = {
                    name = "Штатный приклад SiG-550 Snipe",
                    description = "Штатный приклад SiG-550 Snipe.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатный приклад SiG-550 Snipe",
                        SortOrder = 1,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/sniperrifles/sig550snipe/upg_sig550snipe_stock_01.mdl",
                        Category = {"mz_sniperrifles_stocks_sig550snipe"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_sniperrifles_stock_sig550snipe_02"] = {
                    name = "Эргономичный приклад SiG-550 Snipe",
                    description = "ргономичный приклад SiG-550 Snipe. Удобнее штатного аналога.",
                    weight = .5,

                    attData = {
                        CompactName = "Эрг. приклад SiG-550 Snipe",
                        SortOrder = 2,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/sniperrifles/sig550snipe/upg_sig550snipe_stock_02.mdl",
                        Category = {"mz_sniperrifles_stocks_sig550snipe"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_sniperrifles_stock_sig550snipe_03"] = {
                    name = "Утяжеленный приклад SiG-550 Snipe",
                    description = "Утяжеленный приклад SiG-550 Snipe. Обеспечивает хороший контроль над отдачей.",
                    weight = .5,

                    attData = {
                        CompactName = "Тяж приклад SiG-550 Snipe",
                        SortOrder = 3,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/sniperrifles/sig550snipe/upg_sig550snipe_stock_03.mdl",
                        Category = {"mz_sniperrifles_stocks_sig550snipe"},

                        isUpgrade = true,
                    },
                }

                ix.itemsList.data.weaponsAtt["mz_sniperrifles_stock_sig550snipe_04"] = {
                    name = "Тактический приклад SiG-550 Snipe",
                    description = "Тактический приклад SiG-550 Snipe.",
                    weight = .5,

                    attData = {
                        CompactName = "Штатный приклад SiG-550 Snipe",
                        SortOrder = 4,
                        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
                        CustomPros = {
                            -- Ergonomics = "+6",
                        },
                        Model = "models/mz/weapons/sniperrifles/sig550snipe/upg_sig550snipe_stock_04.mdl",
                        Category = {"mz_sniperrifles_stocks_sig550snipe"},

                        isUpgrade = true,
                    },
                }



--[[ Scopes ]]

ix.itemsList.data.weaponsAtt["mz_scope_elcan"] = {
    name = "ELCAN SpecterDR 1x/4x scope",
    description = "123",

    attData = {
        CompactName = "SpecterDR",
        Folder = "Scopes",

        Model = "models/mz/weapons/addons/scope/add_scope_collimator_04a.mdl",
        Category = {"mz_scope_small"},
        CustomCons = {
            Ergonomics = "-4",
        },

        FoldSights = true, -- Модифицирует Bodygroup модели
        Sights = {
            {
                Pos = Vector(0, 6.23, -0.7),
                Ang = Angle(0, 0, 0),
                -- Magnification = 1.15,
                ViewModelFOV = 38,
                -- RTScopeFOV = 36, -- (ViewModelFOV / 1), где 1 - кратность
                OnSwitchToSight = function(self, slottbl)
                    if CLIENT then ARC9EFTdrawnumber("1x") end
                end,
                RTScopeMagnification = 1,
            },
            {
                Pos = Vector(0, 6.23, -0.7),
                Ang = Angle(0, 0, 0),
                -- Magnification = 1.15,
                ViewModelFOV = 38,
                -- RTScopeFOV = 9, -- (ViewModelFOV / 4), где 4 - кратность
                OnSwitchToSight = function(self, slottbl)
                    if CLIENT then ARC9EFTdrawnumber("4x") end
                end,
                RTScopeMagnification = 4,
            },
        },
        DrawFunc = function(swep, model, wm)
            if !wm then
                local bodygroupLence = swep:GetInSights() and 1 or 0
                local bodygroupFactor = swep:GetMultiSight() - 1

                model:SetBodygroup(1, bodygroupLence)
                model:SetBodygroup(2, bodygroupFactor)
            end
        end,

        RTScope = true,
        RTScopeSubmatIndex = 4,
        RTScopeFOV = 12,
        RTScopeReticle = mat_RTScopeReticle, -- Материал перекрестия
        RTScopeReticleScale = 1.04,
        RTScopeColorable = true,
        RTScopeShadowIntensity = 5, -- интенсивность "залунения" (тени в линзе при движении)
        RTScopeBlackBox = false,
        RTScopeBlackBoxShadow = false,

        ScopeScreenRatio = 512/1080,
    }
}
--[[ Launchers ]]
ix.itemsList.data.weaponsAtt["mz_assault_rifles_launcher_gp25"] = {
    name = "LAUNCHER",
    description = "123",

    attData = {
        CompactName = "GP25",
        -- Description = "321", -- Будет взято из описания предмета (Если указать, будет указано это только в меню кастомизации)
        SortOrder = 0,
        MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
        CustomPros = {
            -- Ergonomics = "+6",
        },
        Category = {"mz_launcher_gp25"},
        UBGL = true, -- Флаг, указывающий, что аттачмент является подствольным гранатометом.
        UBGLIntegralReload = true, -- Использует анимации перезарядки, встроенные в модель оружия.
        DoFireAnimationUBGL = true, -- Включает анимацию выстрела при использовании подствольного гранатомета.
        NoShellEjectUBGL = true, -- Подавляет анимацию выброса гильзы.
        MuzzleEffectQCAUBGL = 4, -- Указывает точку (QCA) для отображения эффекта выстрела.
        UBGLAmmo = "smg1_grenade", -- Тип боеприпасов, используемых подствольным гранатометом.
        UBGLClipSize = 1, -- Размер магазина подствольного гранатомета.
        UBGLFiremode = 1, -- Режим стрельбы (1 означает одиночный выстрел).
        UBGLFiremodeName = "GP-34", -- Название режима стрельбы.
        UBGLChamberSize = 0, -- Размер патронника (0 означает, что патронник всегда пуст перед перезарядкой).
        ShootVolumeUBGL = 110, -- Громкость выстрела.
        SpreadUBGL = -0.2, -- Точность (разброс) при использовании подствольного гранатомета.
        RecoilUBGL = 0.5, -- Отдача при использовании подствольного гранатомета.
        FirstShootSoundUBGL = false, -- Отсутствие особого звука для первого выстрела.
        ShootSoundUBGL = "weapons/darsu_eft/ak/gp34/gp_25_grenade_fire_outdoor_close.ogg", -- Звук выстрела на открытой местности.
        DistantShootSoundUBGL = "weapons/darsu_eft/ak/gp34/gp_25_grenade_fire_outdoor_distant.ogg", -- Звук дальнего выстрела на открытой местности.
        ShootSoundIndoorUBGL = "weapons/darsu_eft/ak/gp34/gp_25_grenade_fire_indoor_close.ogg", -- Звук выстрела в помещении.
        DistantShootSoundIndoorUBGL = "weapons/darsu_eft/ak/gp34/gp_25_grenade_fire_indoor_distant.ogg", -- Звук дальнего выстрела в помещении.
        HasSightsUBGL = true, -- Поддержка прицела для подствольного гранатомета.
        EnterUBGLSound = "eft_shared/weapon_generic_rifle_spin2.ogg", -- Звук при входе в режим подствольного гранатомета.
        ExitUBGLSound = "eft_shared/weapon_generic_rifle_spin1.ogg", -- Звук при выходе из режима подствольного гранатомета.
        ShootEntUBGL = "arc9_eft_vog25_bang", -- Сущность (entity) гранаты, которая выстреливается из подствольного гранатомета.
        ShootEntForceUBGL = 4000, -- Сила выстрела сущности (гранаты).
        AimDownSightsTimeUBGL = 0.4, -- Время прицеливания с подствольным гранатометом.
        DropMagazineAmountUBGL = 0, -- Указание, что магазин не выпадает при перезарядке.
        MuzzleParticleUBGL = "muzzleflash_m79", -- Эффект вспышки на дульной части при выстреле.
    },
}

--[[ Magazines ]]
--[[ /////////////////////// SNIPER RIFLES /////////////////////// ]]
ix.itemsList.data.weaponsAtt["mz_sniper_rifles_magazine_def-01"] = {
    name = "mz_sniper_rifles_magazine_def-01",
    description = "123",
    weight = .5,

    attData = {
        CompactName = "mz_sniper_rifles_magazine_def-01",
        CustomPros = {
            -- Ergonomics = "+6",
        },
        Model = "models/mz/weapons/sniperrifles/mosin/upg_mosin_magazine_02.mdl",
        Category = {"mz_sniper_rifles_magazine"},

        ClipSize = 5,
        ChamberSize = 0,

        -- itemIcon = {
        --     material = itemsListMaterials.ui_icon_new_12_wipe_guns,
        --     x = 2550,
        --     y = 2000,
        --     width = 50,
        --     height = 50,
        --     -- textTOP_LEFT = "8 п.",
        --     -- textBOTTOM_LEFT = "ПМм",
        --     textTOP_RIGHT = "8 п",
        --     textBOTTOM_RIGHT = "ПМ",
        -- },
    }
}

ix.itemsList.data.weaponsAtt["mz_sniper_rifles_magazine_def-02"] = {
    name = "mz_sniper_rifles_magazine_def-02",
    description = "123",
    weight = .5,

    attData = {
        CompactName = "mz_sniper_rifles_magazine_def-01",
        CustomPros = {
            -- Ergonomics = "+6",
        },
        Model = "models/mz/weapons/sniperrifles/mosin/upg_mosin_magazine_02.mdl",
        Category = {"mz_sniper_rifles_magazine"},

        ClipSize = 8,
        ChamberSize = 0,

        -- itemIcon = {
        --     material = itemsListMaterials.ui_icon_new_12_wipe_guns,
        --     x = 2550,
        --     y = 2000,
        --     width = 50,
        --     height = 50,
        --     -- textTOP_LEFT = "8 п.",
        --     -- textBOTTOM_LEFT = "ПМм",
        --     textTOP_RIGHT = "8 п",
        --     textBOTTOM_RIGHT = "ПМ",
        -- },
    }
}
--[[ Barrels ]]
--[[ /////////////////////// SNIPER RIFLES /////////////////////// ]]
ix.itemsList.data.weaponsAtt["mz_sniper-rifles_barrel_mosin-01"] = {
    name = "sniper-rifles_barrel_mosin-01",
    description = "123",
    weight = .5,

    attData = {
        CompactName = "sniper-rifles_barrel_mosin-01",
        MenuCategory = "ARC9 MZ - Attachments PISTOLS",
        CustomPros = {
            -- Ergonomics = "+6",
        },
        Category = {"mz_sniper_rifles_barrel_mosin"},
        Model = "models/mz/weapons/sniperrifles/mosin/upg_mosin_barrel_01.mdl",
        MuzzleDevice = true,
        MuzzleDevice_Priority = 1,
    }
}

ix.itemsList.data.weaponsAtt["mz_sniper-rifles_barrel_mosin-02"] = {
    name = "sniper-rifles_barrel_mosin-02",
    description = "123",
    weight = .5,

    attData = {
        CompactName = "sniper-rifles_barrel_mosin-02",
        MenuCategory = "ARC9 MZ - Attachments PISTOLS",
        CustomPros = {
            -- Ergonomics = "+6",
        },
        Category = {"mz_sniper_rifles_barrel_mosin"},
        Model = "models/mz/weapons/sniperrifles/mosin/upg_mosin_barrel_02.mdl",
        Attachments = {
            {
                PrintName = "Muzzle",
                Category = "mz_add_muzzle_762x51",
                Pos = Vector(-25.0223, 0, -1),
                Ang = Angle(-90, 90, 0),
            },
        },
        MuzzleDevice = true,
        MuzzleDevice_Priority = 1,
    }
}
--[[ Sights ]]
--[[ /////////////////////// SNIPER RIFLES /////////////////////// ]]
ix.itemsList.data.weaponsAtt["mz_sniper_rifles_sight_mosin-01"] = {
    name = "mz_sniper_rifles_sight_mosin-01",
    description = "123",
    weight = .5,

    attData = {
        CompactName = "mz_sniper_rifles_sight_mosin-01",
        MenuCategory = "ARC9 MZ - Attachments PISTOLS",
        CustomPros = {
            -- Ergonomics = "+6",
        },
        Category = {"mz_sniper_rifles_sight_mosin"},
        Model = "models/mz/weapons/sniperrifles/mosin/upg_mosin_sight_01.mdl",
    }
}

ix.itemsList.data.weaponsAtt["mz_sniper_rifles_sight_mosin-02"] = {
    name = "mz_sniper_rifles_sight_mosin-02",
    description = "123",
    weight = .5,

    attData = {
        CompactName = "mz_sniper_rifles_sight_mosin-02",
        MenuCategory = "ARC9 MZ - Attachments PISTOLS",
        CustomPros = {
            -- Ergonomics = "+6",
        },
        Category = {"mz_sniper_rifles_sight_mosin"},
        Model = "models/mz/weapons/sniperrifles/mosin/upg_mosin_sight_02.mdl",
    }
}
--[[ Skins ]]
--[[ /////////////////////// SNIPER RIFLES /////////////////////// ]]




-- ix.itemsList.data.weaponsAtt = {
--     ["_slot"] = true,
--     ["_Tooltip"] = function(item, tooltip)
--         PLUGIN:TooltipProtectStats(item, tooltip, panelBase)
--     end,

--     --[[ ASSAULT RIFLEs ]]

--     ["mz_optic_srs02"] = {
--         name = "SRS-02",
--         description = "123",

--         attData = {
--             PrintName = "Trijicon SRS-02 reflex sight",
--             CompactName = "SRS-02",
--             Icon = Material("entities/eft_attachments/scopes/srs02.png", "mips smooth"),
--             Model = "models/mz/weapons/addons/scope/add_scope_collimator_03.mdl",
--             Folder = "Reflex",
--             Category = {"mz_scope_small"},
--             MenuCategory = "ARC9 - EFT Attachments",
--             EFTErgoAdd = -1,
--             CustomCons = { Ergonomics = "-1" },
--             FoldSights = true,
--             Sights = {
--                 {
--                     Pos = Vector(0, 7, -0.45),
--                     Ang = Angle(0, 0, 0),
--                     -- Magnification = 13.25,
--                     -- ViewModelFOV = 30
--                 },
--             },
--             HoloSight = true,
--             HoloSightReticle = HoloSight_SRS_02,
--             HoloSightSize = 522,
--             HoloSightColorable = false,
--         }
--     },

--     ["mz_muzzle_545-01"] = {
--         name = "Muzzle 545-01",
--         description = "123",

--         attData = {
--             PrintName = "Muzzle 545-01", -- Имя модуля, отображаемое в меню.
--             CompactName = "Muzzle 545-01", -- Краткое имя для отображения в интерфейсе.
--             Description = [[123]], -- Описание модуля (здесь временно указано как "123").
--             SortOrder = 0, -- Порядок сортировки модуля в списке (меньшее значение - выше в списке).
--             MenuCategory = "ARC9 MZ - Attachments Assault Rifles", -- Категория, в которой будет отображаться модуль в меню.
--             EFTErgoAdd = 6, -- Дополнительные характеристики модуля, например, бонус к эргономике (закомментировано).
--             CustomPros = {}, -- Список положительных эффектов модуля.
--             MuzzleDevice = true,
--             MuzzleDevice_Priority = 5,
--             HasGrip = true, -- Определяет наличие рукоятки на модуле (закомментировано).
--             Model = "models/mz/weapons/addons/muzzle/add_dtk_545_01.mdl", -- Модель модуля на оружии.
--             Category = {"mz_muzzle_545"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).
--         }
--     },

--     ["mz_laser_add-03"] = {
--         name = "Laser ADD 03",
--         description = "123",

--         attData = {
--             PrintName = "Laser ADD 03", -- Имя модуля, отображаемое в меню.
--             CompactName = "Laser ADD 03", -- Краткое имя для отображения в интерфейсе.
--             Description = [[123]], -- Описание модуля (здесь временно указано как "123").
--             MenuCategory = "ARC9 MZ - Attachments Shared", -- Категория, в которой будет отображаться модуль в меню.
--             EFTErgoAdd = -1.5, -- Дополнительные характеристики модуля, например, бонус к эргономике (закомментировано).
--             CustomCons = { Ergonomics = "-1.5" },
--             CustomPros = { ["Hipfire Spread if on (Cannot be stacked)"] = "-50%" },
--             MuzzleDevice = true,
--             MuzzleDevice_Priority = 5,
--             HasGrip = true, -- Определяет наличие рукоятки на модуле (закомментировано).
--             Model = "models/mz/weapons/addons/laser/add_laser_03.mdl", -- Модель модуля на оружии.
--             Category = {"mz_laser_mid"}, -- Категория, к которой относится модуль (определяет, к каким оружиям его можно прикрепить).

--             ToggleOnF = true,
--             ToggleStats = {
--                 {
--                     PrintName = "None",
--                 },
--                 {
--                     PrintName = "Laser",
--                     Laser = true,
--                     LaserStrength = 3.65,
--                     LaserFlareMat = mat_LaserFlareMat,
--                     LaserTraceMat = mat_LaserTraceMat,
--                     LaserColor = Color(22, 255, 14),
--                     LaserAttachment = 1,
--                 },
--             }
--         }
--     },

--     ["mz_assault_rifles_forearms_aksu-04"] = {
--         name = "AK_FOREARM_04_asku",
--         description = "123",

--         attData = {
--             CompactName = "AF-04",
--             -- Description = "321", -- Будет взято из описания предмета (Если указать, будет указано это только в меню кастомизации)
--             SortOrder = 0,
--             MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
--             CustomPros = {
--                 -- Ergonomics = "+6",
--             },
--             Model = "models/mz/weapons/assaultrifles/aksu/upg_aks74u_forearm_04.mdl",
--             Category = {"mz_assault_rifles_forearms_aksu"},
--             Attachments = {
--                 {
--                     PrintName = "Plank_TOP",
--                     Category = {
--                         "mz_plank_small",
--                         "mz_laser_mid",
--                         "mz_scope_small",
--                         "mz_scope_mid",
--                     },
--                     Pos = Vector(-0.776, 0.01, -2.025),
--                     Ang = Angle(0, 0, 0),
--                     Icon_Offset = Vector(0, 0, 0),
--                     ExcludeElements = {"pgrip_stock"},
--                 },
--                 {
--                     PrintName = "Plank_RIGHT",
--                     Category = {
--                         "mz_laser_mid",
--                         "mz_laser_small",
--                     },
--                     Pos = Vector(0.925, -1.457, 0.452),
--                     Ang = Angle(0, 0, 0),
--                     Icon_Offset = Vector(0, 0, 0),
--                     ExcludeElements = {"pgrip_stock"},
--                 },
--             },
--         },
--     },

--     ["mz_assault_rifles_launcher_gp25"] = {
--         name = "LAUNCHER",
--         description = "123",

--         attData = {
--             CompactName = "GP25",
--             -- Description = "321", -- Будет взято из описания предмета (Если указать, будет указано это только в меню кастомизации)
--             SortOrder = 0,
--             MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
--             CustomPros = {
--                 -- Ergonomics = "+6",
--             },
--             Category = {"mz_assault_rifles_forearms_aksu"},
--             UBGL = true, -- Флаг, указывающий, что аттачмент является подствольным гранатометом.
--             UBGLIntegralReload = true, -- Использует анимации перезарядки, встроенные в модель оружия.
--             DoFireAnimationUBGL = true, -- Включает анимацию выстрела при использовании подствольного гранатомета.
--             NoShellEjectUBGL = true, -- Подавляет анимацию выброса гильзы.
--             MuzzleEffectQCAUBGL = 4, -- Указывает точку (QCA) для отображения эффекта выстрела.
--             UBGLAmmo = "smg1_grenade", -- Тип боеприпасов, используемых подствольным гранатометом.
--             UBGLClipSize = 1, -- Размер магазина подствольного гранатомета.
--             UBGLFiremode = 1, -- Режим стрельбы (1 означает одиночный выстрел).
--             UBGLFiremodeName = "GP-34", -- Название режима стрельбы.
--             UBGLChamberSize = 0, -- Размер патронника (0 означает, что патронник всегда пуст перед перезарядкой).
--             ShootVolumeUBGL = 110, -- Громкость выстрела.
--             SpreadUBGL = -0.2, -- Точность (разброс) при использовании подствольного гранатомета.
--             RecoilUBGL = 0.5, -- Отдача при использовании подствольного гранатомета.
--             FirstShootSoundUBGL = false, -- Отсутствие особого звука для первого выстрела.
--             ShootSoundUBGL = "weapons/darsu_eft/ak/gp34/gp_25_grenade_fire_outdoor_close.ogg", -- Звук выстрела на открытой местности.
--             DistantShootSoundUBGL = "weapons/darsu_eft/ak/gp34/gp_25_grenade_fire_outdoor_distant.ogg", -- Звук дальнего выстрела на открытой местности.
--             ShootSoundIndoorUBGL = "weapons/darsu_eft/ak/gp34/gp_25_grenade_fire_indoor_close.ogg", -- Звук выстрела в помещении.
--             DistantShootSoundIndoorUBGL = "weapons/darsu_eft/ak/gp34/gp_25_grenade_fire_indoor_distant.ogg", -- Звук дальнего выстрела в помещении.
--             HasSightsUBGL = true, -- Поддержка прицела для подствольного гранатомета.
--             EnterUBGLSound = "eft_shared/weapon_generic_rifle_spin2.ogg", -- Звук при входе в режим подствольного гранатомета.
--             ExitUBGLSound = "eft_shared/weapon_generic_rifle_spin1.ogg", -- Звук при выходе из режима подствольного гранатомета.
--             ShootEntUBGL = "arc9_eft_vog25_bang", -- Сущность (entity) гранаты, которая выстреливается из подствольного гранатомета.
--             ShootEntForceUBGL = 4000, -- Сила выстрела сущности (гранаты).
--             AimDownSightsTimeUBGL = 0.4, -- Время прицеливания с подствольным гранатометом.
--             DropMagazineAmountUBGL = 0, -- Указание, что магазин не выпадает при перезарядке.
--             MuzzleParticleUBGL = "muzzleflash_m79", -- Эффект вспышки на дульной части при выстреле.
--         },
--     },

--     ["mz_assault_rifles_magazine_small-01"] = {
--         name = "AK_MAG_01",
--         description = "123",
--         weight = .5,

--         attData = {
--             CompactName = "AK_MAG_01",
--             SortOrder = 0,
--             MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
--             CustomPros = {
--                 -- Ergonomics = "+6",
--             },
--             Model = "models/mz/weapons/addons/mags/add_ak74_magazine_01.mdl",
--             Category = {"mz_assault_rifles_magazine"},

--             ChamberSize = 1,
--             ClipSize = 5,
--         }
--     },

--     ["mz_assault_rifles_magazine_def-02"] = {
--         name = "AR_MAG_02",
--         description = "123",
--         weight = .5,

--         attData = {
--             CompactName = "AR_MAG_02",
--             SortOrder = 0,
--             MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
--             CustomPros = {
--                 -- Ergonomics = "+6",
--             },
--             Category = {"mz_assault_rifles_magazine"},

--             ChamberSize = 1,
--             ClipSize = 5,

--             Model = "models/mz/weapons/addons/mags/add_ak74_magazine_02.mdl",
--         }
--     },

--     ["mz_assault_rifles_magazine_big-08"] = {
--         name = "AR_MAG_08",
--         description = "123",
--         weight = .5,

--         attData = {
--             CompactName = "AR_MAG_08",
--             SortOrder = 0,
--             MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
--             CustomPros = {
--                 -- Ergonomics = "+6",
--             },
--             Category = {"mz_assault_rifles_magazine"},

--             ChamberSize = 1,
--             ClipSize = 5,

--             Model = "models/mz/weapons/addons/mags/add_ak74_magazine_08.mdl",
--         }
--     },
-- }

-- for i = 1, 4 do

--     --[[ AKsu ]]
--     if i < 4 then
--         ix.itemsList.data.weaponsAtt["mz_assault_rifles_forearms_aksu-0" .. i] = {
--             name = "AKsu_FOREARM_0" .. i,
--             description = "123",
--             weight = .5,

--             attData = {
--                 CompactName = "AF-0" .. i,
--                 SortOrder = 0,
--                 MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
--                 CustomPros = {
--                     -- Ergonomics = "+6",
--                 },
--                 Model = "models/mz/weapons/assaultrifles/aksu/upg_aks74u_forearm_0" .. i .. ".mdl",
--                 Category = {"mz_assault_rifles_forearms_aksu"},
--             }
--         }

--         ix.itemsList.data.weaponsAtt["mz_assault_rifles_grips_aksu-0" .. i] = {
--             name = "AK_GRIPS_01" .. i,
--             description = "123",
--             weight = .5,

--             attData = {
--                 CompactName = "GIP 0" .. i,
--                 SortOrder = 0,
--                 MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
--                 CustomPros = {
--                     -- Ergonomics = "+6",
--                 },
--                 Model = "models/mz/weapons/assaultrifles/aksu/upg_aks74u_grip_0" .. i .. ".mdl",
--                 Category = {"mz_assault_rifles_grips_aksu"},
--             }
--         }
--     end

--     if i < 3 then
--         ix.itemsList.data.weaponsAtt["mz_assault_rifles_receiver_aksu-0" .. i] = {
--             name = "AK_RECEIVER_0" .. i,
--             description = "123",
--             weight = .5,

--             attData = {
--                 CompactName = "AR-REC-0" .. i,
--                 SortOrder = 0,
--                 MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
--                 CustomPros = {
--                     -- Ergonomics = "+6",
--                 },
--                 Model = "models/mz/weapons/assaultrifles/aksu/upg_aks74u_receiver_0" .. i .. ".mdl",
--                 Category = {"mz_assault_rifles_receiver_aksu"},
--             },
--         }
--     end

--     ix.itemsList.data.weaponsAtt["mz_assault_rifles_stocks_aksu-0" .. i] = {
--         name = "AK_STOCK_0" .. i,
--         description = "123",
--         weight = .5,

--         attData = {
--             CompactName = "ST-0" .. i,
--             SortOrder = 0,
--             MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
--             CustomPros = {
--                 -- Ergonomics = "+6",
--             },
--             Model = "models/mz/weapons/assaultrifles/aksu/upg_aks74u_stock_0" .. i .. ".mdl",
--             Category = {"mz_assault_rifles_stock_aksu"},
--         }
--     }

--     --[[ AKs ]]
--     if i < 4 then
--         ix.itemsList.data.weaponsAtt["mz_assault_rifles_forearms_aks-0" .. i] = {
--             name = "AKs_FOREARM_0" .. i,
--             description = "123",
--             weight = .5,

--             attData = {
--                 CompactName = "AF-0" .. i,
--                 SortOrder = 0,
--                 MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
--                 CustomPros = {
--                     -- Ergonomics = "+6",
--                 },
--                 Model = "models/mz/weapons/assaultrifles/aks/upg_aks74_forearm_0" .. i .. ".mdl",
--                 Category = {"mz_assault_rifles_forearms_aks"},
--             }
--         }

--         ix.itemsList.data.weaponsAtt["mz_assault_rifles_grips_aks-0" .. i] = {
--             name = "AK_GRIPS_01" .. i,
--             description = "123",
--             weight = .5,

--             attData = {
--                 CompactName = "GIP 0" .. i,
--                 SortOrder = 0,
--                 MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
--                 CustomPros = {
--                     -- Ergonomics = "+6",
--                 },
--                 Model = "models/mz/weapons/assaultrifles/aks/upg_aks74_grip_0" .. i .. ".mdl",
--                 Category = {"mz_assault_rifles_grips_aks"},
--             }
--         }
--     end

--     if i < 3 then
--         ix.itemsList.data.weaponsAtt["mz_assault_rifles_receiver_aks-0" .. i] = {
--             name = "AK_RECEIVER_0" .. i,
--             description = "123",
--             weight = .5,

--             attData = {
--                 CompactName = "AR-REC-0" .. i,
--                 SortOrder = 0,
--                 MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
--                 CustomPros = {
--                     -- Ergonomics = "+6",
--                 },
--                 Model = "models/mz/weapons/assaultrifles/aks/upg_aks74_receiver_0" .. i .. ".mdl",
--                 Category = {"mz_assault_rifles_receiver_aks"},
--             },
--         }
--     end

--     ix.itemsList.data.weaponsAtt["mz_assault_rifles_stocks_aks-0" .. i] = {
--         name = "AK_STOCK_0" .. i,
--         description = "123",
--         weight = .5,

--         attData = {
--             CompactName = "ST-0" .. i,
--             SortOrder = 0,
--             MenuCategory = "ARC9 MZ - Attachments Assault Rifles",
--             CustomPros = {
--                 -- Ergonomics = "+6",
--             },
--             Model = "models/mz/weapons/assaultrifles/aks/upg_aks74_stock_0" .. i .. ".mdl",
--             Category = {"mz_assault_rifles_stock_aks"},
--         }
--     }
-- end

if IX_PLUGINS_LOADED and ix.itemsList and ix.itemsList.CoreItemsRegistration then
    ix.itemsList.CoreItemsRegistration()
end