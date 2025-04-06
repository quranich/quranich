local PLUGIN = ix.plugin.list["inventory-module-aitems-list"]

local tableCassetteSounds = {
    ["mz/mz/music/boombox_tracks/52ponedelnik.ogg"] = {
        soundName = "52-й понедельник",
        casetteDesc = "Старая кассета рок-группы 'Звуки Му'. При СССР было все, в том числе и психоделический бытовой рок."
    },
    ["mz/mz/music/boombox_tracks/atas.ogg"] = {
        soundName = "Атас",
        casetteDesc = "Песня из одноименного альбома группы 'Любэ'. На наклейке красной краской написано АТАС."
    },
    ["mz/mz/music/boombox_tracks/belaya-noch.ogg"] = {
        soundName = "Белая ночь",
        casetteDesc = "Трек группы 'Форум', перепевки которого слыхали все, но мало кто слышал оригинал."
    },
    ["mz/mz/music/boombox_tracks/bud_moei_teniu.ogg"] = {
        soundName = "Будь моей тенью",
        casetteDesc = "Хорошо сохранившаяся кассета с логотипом группы 'Сплин'."
    },
    ["mz/mz/music/boombox_tracks/cain.ogg"] = {
        soundName = "Cain",
        casetteDesc = "Трек шведской группы 'Tiamat'. Не смотря на качество звука, звучит марчно и аутентично."
    },
    ["mz/mz/music/boombox_tracks/chudesnaya_strana.ogg"] = {
        soundName = "Чудесная страна",
        casetteDesc = "Старая запись группы 'Браво'. На тыльной стороне кассеты яркая наклейка со сказочным пляжным пейзажем."
    },
    ["mz/mz/music/boombox_tracks/daite_ognya.ogg"] = {
        soundName = "Дайте огня",
        casetteDesc = "Один из самых узнаваемых треков 'Альянса'. Классика русского рока."
    },
    ["mz/mz/music/boombox_tracks/dragula.ogg"] = {
        soundName = "Dragula",
        casetteDesc = "Популярный трек 'Rob Zombie'. Его не слышала разве что глухой. Исполнитель не имеет никакого отношения к феномену зомбирования."
    },
    ["mz/mz/music/boombox_tracks/freak_on_a_leash.ogg"] = {
        soundName = "Freak on a leash",
        casetteDesc = "Кассета c наклейкой 'KOЯN'. Откуда она в ЧЗО, вопрос без ответа."
    },
    ["mz/mz/music/boombox_tracks/gruppa_krovi.ogg"] = {
        soundName = "Группа крови",
        casetteDesc = "Нестареющая классика русского рока. Эта песня Виктора Цоя будет жить вечно, как и он сам."
    },
    ["mz/mz/music/boombox_tracks/grust_moya.ogg"] = {
        soundName = "Грусть моя, тоска моя",
        casetteDesc = "Выступление Высоцкого в записи. Кассета очень потрепана и видала лучшие деньки."
    },
    ["mz/mz/music/boombox_tracks/lesnik.ogg"] = {
        soundName = "Лесник",
        casetteDesc = "Песня группы 'Король и Шут', которую, хоть раз, слышал каждый."
    },
    ["mz/mz/music/boombox_tracks/man_that_you_fear.ogg"] = {
        soundName = "Man that you fear",
        casetteDesc = "На наклейке логотип 'Marilyn Manson'. Некоторые всерьез считают, что за прослушивание таких песен можно попасть в ад. В Зоне легко это проверить."
    },
    ["mz/mz/music/boombox_tracks/na-chernyjj-den.ogg"] = {
        soundName = "На чёрный день",
        casetteDesc = "Кассета c яркой надписью 'Янка'. Трек звучит как никогда жизненно и актулаьно."
    },
    ["mz/mz/music/boombox_tracks/nado_je.ogg"] = {
        soundName = "Надо же",
        casetteDesc = "Кассета Аллы Пугачевой c наклейкой, на которой запечатлена сама Примадонна."
    },
    ["mz/mz/music/boombox_tracks/naturtrne.ogg"] = {
        soundName = "Naturträne",
        casetteDesc = "Песня немецкой певицы Nina Hagen - по праву считающейся матерью всего панк-рока."
    },
    ["mz/mz/music/boombox_tracks/night_prowler.ogg"] = {
        soundName = "Night prowler",
        casetteDesc = "Трек 'AC/DC'. Наклейка с желтой молнией сохранилась. Не смотря на то, что группу активно запрещали, она спокойно пережила 'Железный занавес' и покорила пост-советские просторы."
    },
    ["mz/mz/music/boombox_tracks/nothing_else_matters.ogg"] = {
        soundName = "Nothing else matters",
        casetteDesc = "Кассета cо знаменитой балладой группы 'Metallica'. На кассете сохранился автограф фронтмэна группы, скорее всего поддельный."
    },
    ["mz/mz/music/boombox_tracks/o_lubvi.ogg"] = {
        soundName = "О любви",
        casetteDesc = "Тот самый трек группы 'Чиж и Ко'. Эту песню часто можно услышать на попойках в баре Свободы."
    },
    ["mz/mz/music/boombox_tracks/odnoy_cepiu.ogg"] = {
        soundName = "Скованные одной цепью",
        casetteDesc = "Песня 'Наутилус Помпилиус', которая, как вино, со временем становится только лучше. На корпусе кассета черной краской нарисована цепь крест на крест."
    },
    ["mz/mz/music/boombox_tracks/opium.ogg"] = {
        soundName = "Опиум для никого",
        casetteDesc = "Кассета c логотипом 'Агата Кристи'. Меланхоличная классика, хорошо вписывающася в атмосферу зоны отчуждения."
    },
    ["mz/mz/music/boombox_tracks/personal_jesus.ogg"] = {
        soundName = "Personal jesus",
        casetteDesc = "Кассета c наклейкой 'Depeche Mode'. Кассета как новенькая, скорее всего ее даже не слушали."
    },
    ["mz/mz/music/boombox_tracks/pogasli_svechi.ogg"] = {
        soundName = "Погасли свечи",
        casetteDesc = "Кассета без каких либо наклеек. Судя по звучанию исполнителем является Тимур Муцараев."
    },
    ["mz/mz/music/boombox_tracks/polkovniku.ogg"] = {
        soundName = "Полковнику никто не пишет",
        casetteDesc = "Один из первых треков БИ-2, ставший очень популярным, не без помощи одного известного фильма."
    },
    ["mz/mz/music/boombox_tracks/prekrasnoe-daleko.ogg"] = {
        soundName = "Прекрасное далеко",
        casetteDesc = "Запись детской песни из старого фильма. Красивая и грустная мелодия, от которой становится не по себе."
    },
    ["mz/mz/music/boombox_tracks/rape_me.ogg"] = {
        soundName = "Rape me",
        casetteDesc = "Один из легко узнаваемых треков Nirvana. В перевод лучше не вдаваться."
    },
    ["mz/mz/music/boombox_tracks/reason_to_live.ogg"] = {
        soundName = "Reason to live",
        casetteDesc = "Кассета c 'KISS'. При СССР за такую музыку можно было крепко встраять, но это риск не останавливал людей."
    },
    ["mz/mz/music/boombox_tracks/seemann.ogg"] = {
        soundName = "Seemann",
        casetteDesc = "Трек немецкой группы 'Rammstein'. На наклейке изображена рыжая ромашка, что не очень отражает звучание песни."
    },
    ["mz/mz/music/boombox_tracks/solncevorot.ogg"] = {
        soundName = "Солнцеворот",
        casetteDesc = "Песня Егора Летова. Как и все его песни, звучит вызывающе, надрывно и протестно."
    },
    ["mz/mz/music/boombox_tracks/temnaya_noch.ogg"] = {
        soundName = "Тёмная ночь",
        casetteDesc = "Старая, классическая песня, кто только ее не пел. Тем не мене, звучит все так же душевно."
    },
    ["mz/mz/music/boombox_tracks/tuman.ogg"] = {
        soundName = "Туман",
        casetteDesc = "Трек от 'Сектора Газа'. Русский рок как он есть, ни дать ни взять."
    },
    ["mz/mz/music/boombox_tracks/v_taverne.ogg"] = {
        soundName = "В таверне",
        casetteDesc = "Песня Ивана Кучина, к касете приклеена бумажка с отпечатком губ, сложенных в поцелуй, и надписью 'Любимому'."
    },
    ["mz/mz/music/boombox_tracks/ves_etot_bred.ogg"] = {
        soundName = "Весь этот бред",
        casetteDesc = "Кассета c наклейкой 'Сплин'. Корпус потрескался во множестве мест, нужно обращаться с осторожностью."
    },
    ["mz/mz/music/boombox_tracks/wabb.ogg"] = {
        soundName = "Белая Армия - Черный Барон",
        casetteDesc = "Старая песня времен гражданской войны. Артефакт минувшей эпохи."
    },
    ["mz/mz/music/boombox_tracks/were_not_gonna_take_it.ogg"] = {
        soundName = "Were not gonna take it",
        casetteDesc = "Кассета c наклейкой 'Twisted Sister'. На обратной стороне приклеена наклейка с крепко сжатым кулаком поднятым вверх."
    },
    ["mz/mz/music/boombox_tracks/-white-rabbit.ogg"] = {
        soundName = "White rabbit",
        casetteDesc = "Кассета с песней группы Jefferson Airplane's. На тыльной стороне нацарапано 'Wake up, Neo'"
    },
    ["mz/mz/music/boombox_tracks/yaroslavskaya.ogg"] = {
        soundName = "Ярославская",
        casetteDesc = "Песня Михаила Круга, чей шансон звучит по особенному близко и тепло."
    },
    ["mz/mz/music/boombox_tracks/speed_of_pain.ogg"] = {
        soundName = "Speed of pain",
        casetteDesc = "Потрёпанная кассета Marilyn Manson с размазанными чернилами на наклейке. Тягучий голос, мрачная мелодия — музыка для тех, кто потерял дорогу назад. На обороте царапина: 'Faster than the speed of light...'"
    },
    ["mz/mz/music/boombox_tracks/aerials.ogg"] = {
        soundName = "Aerials",
        casetteDesc = "Кассета с логотипом System of a Down, слегка потрёпанная, но ещё рабочая. Тяжёлые рифы, тягучая мелодия и голос Сержа, будто эхом отдающийся в пустоте. На обороте размазаны слова: 'Life is a waterfall...'"
    },
    ["mz/mz/music/boombox_tracks/central.ogg"] = {
        soundName = "Владимирский централ",
        casetteDesc = "Потёртая кассета с шансоном Михаила Круга. Пластик потрескался у краёв, но лента ещё крутится. Запись звучит с характерным хрипом, словно её слушали сотни раз. На наклейке выцвел штамп с нечитаемой датой."
    },
    ["mz/mz/music/boombox_tracks/e_95.ogg"] = {
        soundName = "Трасса Е-95",
        casetteDesc = "Кассета с логотипом Алисы, пластик с тёмными пятнами, будто долго лежала в бардачке старого грузовика. Лента слегка вытянулась, временами звук дрожит. Запись дышит бензином, ночной дорогой и сигаретным дымом."
    },
    ["mz/mz/music/boombox_tracks/glory_box.ogg"] = {
        soundName = "Glory Box",
        casetteDesc = "Кассета с логотипом Portishead, пластик слегка облупился, но плёнка в порядке. Звук тянется лениво, как дым сигареты в полутёмной комнате. Внутри что-то глухо перекатывается, будто кто-то спрятал под крышкой крошечный сувенир."
    },
    ["mz/mz/music/boombox_tracks/goret.ogg"] = {
        soundName = "Гореть",
        casetteDesc = "Кассета с логотипом Lumen, пластик закопчённый, будто её держали слишком близко к костру. Лента чуть перескакивает на припеве, как будто кто-то слушал этот момент слишком часто. Запись полна хриплых эмоций, звучит так, словно её пели на пределе сил.сет"
    },
    ["mz/mz/music/boombox_tracks/i_hate_eay.ogg"] = {
        soundName = "I hate everything about you",
        casetteDesc = "Кассета с логотипом Three Days Grace, пластик в царапинах, будто её небрежно бросали в рюкзак. Лента слегка потрёпана, на громких местах слышны еле уловимые искажения. Музыка звучит напряжённо, будто эмоции в ней заперты, но рвутся наружу."
    },
    ["mz/mz/music/boombox_tracks/kak_na_voine.ogg"] = {
        soundName = "Как на войне",
        casetteDesc = "Потрёпанная кассета с альбомом Агаты Кристи. Корпус заклеен армированным скотчем, но держится крепко. Лента играет с характерной хрипотцой на высоких нотах, будто её много раз перематывали на любимые моменты. На уголке кассеты остался старый ценник с нечитаемой суммой."
    },
    ["mz/mz/music/boombox_tracks/krasnoe_na_chernom.ogg"] = {
        soundName = "Красное на черном",
        casetteDesc = "Кассета группы Алиса, пластиковый корпус заляпан красной краской, будто кто-то специально пытался повторить название трека. Лента чуть растянута, звук временами плывёт. По углам корпуса отпечатки пальцев, которые уже не оттереть."
    },
    ["mz/mz/music/boombox_tracks/krilya.ogg"] = {
        soundName = "Крылья",
        casetteDesc = "Кассета группы Наутилус Помпилиус. Пластик пожелтел, а прозрачное окошко слегка помутнело от времени. Лента звучит мелодично, с лёгким шуршанием. На корпусе едва различимы царапины, похожие на очертания птичьих крыльев."
    },
    ["mz/mz/music/boombox_tracks/kto_vinovat.ogg"] = {
        soundName = "Кто виноват",
        casetteDesc = "Кассета группы Воскресение. Пластиковый корпус потёртый, с мелкими царапинами и трещиной сбоку. Лента играет ровно, с лёгким потрескиванием на тихих местах. В уголке корпуса засохшее пятно от кофе или чего-то похожего."
    },
    ["mz/mz/music/boombox_tracks/kukla_kolduna.ogg"] = {
        soundName = "Кукла колдуна",
        casetteDesc = "Кассета группы Король и Шут. Корпус в странных тёмных пятнах, будто кассету когда-то уронили в грязь. Лента играет чётко, но с лёгким дрожанием на высоких нотах. На обратной стороне кассеты наклейка с мультяшным изображением черепа в шутовском колпаке."
    },
    ["mz/mz/music/boombox_tracks/medvedica.ogg"] = {
        soundName = "Медведица",
        casetteDesc = "Кассета группы Мумий Тролль. Корпус слегка погнут, будто долго лежал под тяжёлыми вещами. Запись звучит отчётливо, с приятным шипением. На наклейке едва различимый силуэт созвездия Большой Медведицы."
    },
    ["mz/mz/music/boombox_tracks/mein_herz_brent.ogg"] = {
        soundName = "Mein Herz Brennt",
        casetteDesc = "Редкая кассета группы Rammstein, корпус чёрного матового цвета с тиснением. Лента звучит мощно и глубоко. По краям кассеты выжжены аккуратные узоры, напоминающие языки пламени. Сразу видно — такую кассету берегли и доставали лишь в особых случаях."
    },
    ["mz/mz/music/boombox_tracks/lullaby.ogg"] = {
        soundName = "...",
        casetteDesc = "Странная кассета, чье происхождение неизвестно. Имеет бирку с индексом Х и цифрами 7-096. На обратной стороне наклейка с аккуратной надписью 'Колыбельная'"
    },
    ["mz/mz/music/boombox_tracks/no_distance.ogg"] = {
        soundName = "No Distance Left to Run",
        casetteDesc = "Кассета группы Blur, прозрачный корпус слегка замутнён и покрыт царапинами, будто её таскали в кармане с мелочью. Лента звучит печально и мелодично, с лёгким потрескиванием в припеве. На крышке корпуса засохшие капли толи крови, толи краски."
    },
    ["mz/mz/music/boombox_tracks/pechal.ogg"] = {
        soundName = "Печаль",
        casetteDesc = "Кассета группы Кино, с заметно потёртой наклейкой. Лента звучит ровно и немного приглушённо, будто её переслушивали бесчисленное количество раз. Корпус кассеты видал лучшие дни."
    },
    ["mz/mz/music/boombox_tracks/posledni_geroy.ogg"] = {
        soundName = "Последний герой",
        casetteDesc = "Редкая кассета группы Би-2. Корпус цвета матового металлика с глубоким тиснением названия. Запись звучит отчётливо и чисто, будто никогда раньше не проигрывалась. На крышке кассеты блестит маленький металлический значок в форме звезды, а рядом два автографа — такая вещь могла принадлежать только настоящему фанату."
    },
    ["mz/mz/music/boombox_tracks/povorot.ogg"] = {
        soundName = "Поворот",
        casetteDesc = "Кассета группы Машина Времени. Корпус сильно потёрт, а прозрачное окошко слегка помутнело от частых перемоток. Лента звучит тепло и узнаваемо, с лёгким потрескиванием в кульминации. Корпус немного кривоват, словно кассету когда-то небрежно вставили не той стороной."
    },
    ["mz/mz/music/boombox_tracks/rasputin.ogg"] = {
        soundName = "Rasputin",
        casetteDesc = "Кассета группы Boney M, яркая наклейка с потертыми краями едва держится на корпусе. Лента звучит ритмично, хоть и слегка приглушённо. Корпус пахнет пылью и дешёвым одеколоном, навевая воспоминания о давно забытых вечеринках."
    },
    ["mz/mz/music/boombox_tracks/rising_sun.ogg"] = {
        soundName = "House of the Rising Sun",
        casetteDesc = "Кассета группы The Animals. Корпус пожелтевший и потрескавшийся по углам, будто долго лежал под солнцем. Звучание слегка хриплое и тягучее. На наклейке сохранился выцветший рисунок старинного дома."
    },
    ["mz/mz/music/boombox_tracks/schism.ogg"] = {
        soundName = "Schism",
        casetteDesc = "Кассета группы Tool, тёмный корпус со следами потертостей, словно долго носили в кармане куртки. Звучание ровное, глубокое, с едва уловимым дрожанием на басах. На наклейке едва различимый абстрактный символ, разглядеть который практически невозможно."
    },
    ["mz/mz/music/boombox_tracks/sopor.ogg"] = {
        soundName = "In der Palästra",
        casetteDesc = "Необычная кассета Sopor Aeternus. Корпус тускло-чёрный с бледными разводами, лента звучит меланхолично и потусторонне. На крышке приклеен высушенный цветок, напоминающий о давно забытом ритуале. Редкость даже по меркам Зоны."
    },
    ["mz/mz/music/boombox_tracks/spi_sobi.ogg"] = {
        soundName = "Спи собі сама",
        casetteDesc = "Кассета группы Скрябін. Корпус выцветший, слегка деформированный от жары или времени. Лента звучит чисто и грустно. С обратной стороны виден размазанный отпечаток пальца, который уже невозможно стереть."
    },
    ["mz/mz/music/boombox_tracks/taganskaya.ogg"] = {
        soundName = "Таганская",
        casetteDesc = "Кассета с шансоном, пластик гладкий, но на прозрачном окошке появились мутные разводы. Лента проигрывает с лёгким потрескиванием, будто её часто перематывали. Корпус пахнет старой бумагой, словно долго хранился среди забытых писем."
    },
    ["mz/mz/music/boombox_tracks/the_man_who_sold.ogg"] = {
        soundName = "The Man Who Sold the World",
        casetteDesc = "Редкая кассета группы Nirvana. Корпус цвета тёмного металлика, покрыт паутиной мелких царапин. Запись звучит чётко, с характерной ленивой хрипотцой. На внутренней стороне корпуса блестит тусклый отпечаток монеты неизвестного происхождения."
    },
    ["mz/mz/music/boombox_tracks/ticket.ogg"] = {
        soundName = "One Way Ticket",
        casetteDesc = "Кассета группы Eruption, корпус слегка оплавлен с одной стороны, будто её оставили рядом с нагревшимся прибором. Лента звучит ярко, с лёгкими артефактами на басах. Внутри под крышкой застрял клочок старого билета, текст на котором давно стёрся."
    },
    ["mz/mz/music/boombox_tracks/title.ogg"] = {
        soundName = "Без названия",
        casetteDesc = "Кассета выглядящая так, будто побывала в аномалии. На корпусе красиво выцарапано 'Лишь слепой увидит настоящую красоту'."
    },
    ["mz/mz/music/boombox_tracks/ulica_roz.ogg"] = {
        soundName = "Улица роз",
        casetteDesc = "Редкая кассета группы Ария. Корпус глянцево-чёрный, слегка потёртый по краям. Запись звучит громко и мощно, почти без искажений. Под прозрачной крышкой видны засохшие лепестки роз — чья-то сентиментальность в суровых условиях Зоны."
    },
    ["mz/mz/music/boombox_tracks/vahteram.ogg"] = {
        soundName = "Вахтерам",
        casetteDesc = "Кассета группы Бумбокс, корпус с выцветшей наклейкой, на которой едва различимы остатки старого автографа. Запись звучит глухо, но мелодично, как будто её слушали сквозь приоткрытое окно. По краям пластика засохшие капли чего-то липкого, возможно, кофе."
    },
    ["mz/mz/music/boombox_tracks/vihoda_net.ogg"] = {
        soundName = "Выхода нет",
        casetteDesc = "Редкая кассета группы Сплин. Корпус чёрный с матовым покрытием, почти без следов износа. Лента звучит чисто, с характерной меланхолией. На корпусе нарисован маленький компас, стрелка которого неподвижно застыла, указывая в никуда."
    },
    ["mz/mz/music/boombox_tracks/zhizn_moya.ogg"] = {
        soundName = "Жизнь моя",
        casetteDesc = "Кассета неизвестного исполнителя, пластик слегка растрескался у краёв. Лента звучит с тёплой хрипотцой, будто записывалась на домашней студии. На корпусе остался след от содранной наклейки, словно кто-то пытался скрыть название."
    },
    ["mz/mz/music/boombox_tracks/zodiak.ogg"] = {
        soundName = "Зодиак",
        casetteDesc = "Редкая кассета группы Зодиак. Прозрачный корпус с серебристыми вставками, слегка помутневший от времени. Звучит мелодично и завораживающе, с едва заметным электронным шипением. Внутри корпуса, между слоями пластика, переливается изображение звёздного неба."
    },
}

local function InitializationItems()
    local itemsListMaterials = ix.itemsListMaterials

    for soundPath, soundData in next, tableCassetteSounds do
        local filename = string.match(soundPath, ".*/([^/]+)%.%w+$")

        local ITEM = ix.item.Register("cassette_" .. filename, nil, nil, nil, true)
        ITEM.name            = "Кассета «" .. soundData.soundName .. "»"
        ITEM.description     = soundData.casetteDesc
        ITEM.model           = "models/mz/props/other/cas.mdl" --[[ Модель при дропе ]]
        ITEM.weight          = .1 --[[ Вес предмета ]]
        ITEM.itemIcon     = { --[[ иконка ]]
            material = itemsListMaterials.ui_icon_equipment_anomaly,
            x = 450,
            y = 2100,
            width = 50,
            height = 50,
        }

        ITEM.width = 1
        ITEM.height = 1
        ITEM.noDeathDrop = true

        ITEM.cassetteSound = soundPath
    end


    local ITEM = ix.item.Register("interact_record_player", nil, nil, nil, true)
    ITEM.name            = "Магнитофон"
    ITEM.description     = "Старый кассетный проигрыватель, произведенный еще в СССР. Звучит не лучшим образом, но зато работает."
    ITEM.model           = "models/mz/props/other/mafon1.mdl" --[[ Модель при дропе ]]
    ITEM.weight          = 1.5 --[[ Вес предмета ]]
    ITEM.itemIcon     = { --[[ иконка ]]
        material = itemsListMaterials.ui_icon_mz_items,
        x = 1000,
        y = 1000,
        width = 100,
        height = 100,
    }
    ITEM.noDeathDrop = true
    ITEM.width = 2
    ITEM.height = 2
    
    ITEM.functions.combine = {
        OnRun = function(item, data)
            local holdItem = ix.item.instances[data[1]]
            if holdItem == nil then
                return false
            end

            if holdItem.cassetteSound == nil then
                return false
            end

            local client = item.player
            local itemPlayerID = holdItem:GetPlayerID()
            local itemCharacterID = holdItem:GetCharacterID()
            local playerID = client:SteamID64()
            local characterID = client:GetCharacter():GetID()

            if (itemPlayerID and itemCharacterID and itemPlayerID == playerID and itemCharacterID != characterID) then
                client:NotifyLocalized("itemOwned")
                return false
            end

            item:ImportСassette(holdItem)
            return false
        end,
        OnCanRun = function(item, data)
            local cassette = item:GetData("cassette")
            if cassette ~= nil then
                return false
            end

            local holdItem = ix.item.instances[data[1]]
            if holdItem and holdItem.cassetteSound != nil then
                return true
            end

            return false
        end
    }

    ITEM.functions.TakeOutCassette = {
        name = "Вынуть кассету",
        icon = "icon16/arrow_up.png",
        OnRun = function(item)
            local client = item.player
            local character = client:GetCharacter()
            local baseInventory = character:GetInventory()
            local baseInventoryID = baseInventory:GetID()

            local playEntity = client
            local entity = item.entity

            if IsValid(entity) then
                playEntity = entity
            end

            --[[ Transfer Item ]]
            local itemCassette = item:GetData("cassette")
            if itemCassette then
                local status, result = baseInventory:Add(itemCassette, 1)
                if status == false then
                    client:Notify(result)
                    return false
                else
                    item:SetData("cassette")

                    if playEntity.cassetteSound then
                        playEntity:StopSound(playEntity.cassetteSound)
                    end

                    net.Start("stalkerInventory.Refresh")
                    net.Send(client)
                end
            end

            return false, "noInvalid"
        end,
        OnCanRun = function(item)
            local client = item.player
            local character = client:GetCharacter()
            local baseInventory, equipmentInventory, equipmentInventoryID = character:GetInventory(), character:GetEquipmentInventory()
            local baseInventoryID = baseInventory:GetID()

            local itemEntity, containerItem, itemInvID = item.entity, item:GetData("cassette"), item.invID
            return not IsValid(itemEntity) and IsValid(client) and containerItem ~= nil and
            hook.Run("CanTransferItem", item, ix.item.inventories[0], baseInventory) ~= false
        end
    }

    ITEM.functions.PlayCassette = {
        name = "Играть кассету",
        icon = "icon16/control_play.png",
        OnRun = function(item)
            local client = item.player
            local character = client:GetCharacter()
            local baseInventory = character:GetInventory()
            local baseInventoryID = baseInventory:GetID()

            local playEntity = client
            local entity = item.entity

            if IsValid(entity) then
                playEntity = entity
            end

            --[[ Transfer Item ]]
            local itemCassette = item:GetItemTableCassette()
            if itemCassette and itemCassette.cassetteSound then

                if playEntity.cassetteSound then
                    playEntity:StopSound(playEntity.cassetteSound)
                end

                playEntity.cassetteSound = itemCassette.cassetteSound
                playEntity:EmitSound(playEntity.cassetteSound)
            end

            return false, "noInvalid"
        end,
        OnCanRun = function(item)
            local client = item.player
            local character = client:GetCharacter()
            local baseInventory, equipmentInventory, equipmentInventoryID = character:GetInventory(), character:GetEquipmentInventory()
            local baseInventoryID = baseInventory:GetID()

            local itemEntity, containerItem, itemInvID = item.entity, item:GetData("cassette"), item.invID
            return --[[ not IsValid(itemEntity) and ]] IsValid(client) and containerItem ~= nil and
            hook.Run("CanTransferItem", item, ix.item.inventories[0], baseInventory) ~= false
        end
    }

    ITEM.functions.SlotCassette = {
        name = "Остановить проигрывание",
        icon = "icon16/control_stop.png",
        OnRun = function(item)
            local client = item.player
            local character = client:GetCharacter()
            local baseInventory = character:GetInventory()
            local baseInventoryID = baseInventory:GetID()

            local playEntity = client
            local entity = item.entity

            if IsValid(entity) then
                playEntity = entity
            end

            --[[ Transfer Item ]]
            if playEntity.cassetteSound then
                playEntity:StopSound(playEntity.cassetteSound)
            end

            return false, "noInvalid"
        end,
        OnCanRun = function(item)
            local client = item.player
            local character = client:GetCharacter()
            local baseInventory, equipmentInventory, equipmentInventoryID = character:GetInventory(), character:GetEquipmentInventory()
            local baseInventoryID = baseInventory:GetID()

            local itemEntity, containerItem, itemInvID = item.entity, item:GetData("cassette"), item.invID
            return --[[ not IsValid(itemEntity) and ]] IsValid(client) and containerItem ~= nil and
            hook.Run("CanTransferItem", item, ix.item.inventories[0], baseInventory) ~= false
        end
    }

    ITEM.ImportСassette = function(item, itemCassette)
        item:SetData("cassette", itemCassette.uniqueID)
        itemCassette:Remove()
    end

    ITEM.ExportСassette = function(item, itemCassette)
        local cassetteUID = this:GetData("cassette")
        if cassetteUID then
            local client = item.player
            local character = client:GetCharacter()
            local baseInventory = character:GetInventory()
            local baseInventoryID = baseInventory:GetID()

            local status, result = baseInventory:Add(cassetteUID, 1)
            if status == false then
                client:Notify(result)
                return false
            else
                item:SetData("cassette")
                net.Start("stalkerInventory.Refresh")
                net.Send(client)
            end
        end
    end

    ITEM.HasСassette = function(item)
        local containerItem = item:GetData("cassette")
        return containerItem and true or false
    end

    ITEM.GetItemTableCassette = function(item)
        local containerItem = item:GetData("cassette")

        if containerItem then
            return ix.item.list[containerItem]
        end
    end

    local function DropFunc(item)
        local client = item.player

        if client.cassetteSound then
            client:StopSound(client.cassetteSound)
        end
    end

    ITEM:Hook("PlaceDrop", DropFunc)
    ITEM:Hook("drop", DropFunc)
    ITEM:Hook("take", function(item, entity)
        local entity = item.entity

        if IsValid(entity) and entity.cassetteSound then
            entity:StopSound(entity.cassetteSound)
        end
    end)

    ITEM.OnEntityTakeDamage = function()
        return false
    end
end

hook.Add("PostInitializedItemsList", PLUGIN.uniqueID .. "PostInitializedItemsList_MiscItems", InitializationItems)

if IX_PLUGINS_LOADED then
    InitializationItems()
end