class InformaciyaController < ApplicationController
  def index
    @title =       "Информация о ремонте квартир в Москве"
    @description = "Информация о ремонтных и отделочных работах в Москве и МО"
    @keywords =    "Информация о ремонте"

    @link_names = [
      "Стоимость работ по черновому ремонту категории Стандарт",
      "Стоимость работ по черновой отделке категории Комфорт",
      "Стоимость работ по ремонту квартиры Стандарт (капитальный ремонт квартиры минимум)",
      "Стоимость работ по ремонту квартиры Комфорт (ремонт под ключ оптимальный)",
      "Стоимость работ по ремонту квартиры Комфорт Плюс (ремонт под ключ с плюсом!)",
      "Перечень и стоимость работ по ремонту категории Премиум (евроремонт под ключ)",
      "Стоимость работ по ремонту квартиры Эконом (косметический ремонт квартиры)",
      "Цена косметического ремонта комнат",
      "Цена косметического ремонта прихожей в квартире",
      "Цена косметического ремонта кухни",
      "Цена на обшивку балкона (лоджии) пластиковыми панелями ПВХ, панелями МДФ и вагонкой",
      "Капитальный ремонт ванной комнаты - стоимость работ",
      "Расчет количества сухой смеси для стяжки пола",
      "Расчет керамзита для стяжки пола",
      "Расчет площади стен для поклейки обоев",
      "Полипропиленовые трубы",
      "Теплый пол",
      'Гидроизоляция пола обмазочная "Водостоп"'
    ]
    @links = [
      "/informaciya/chernovoj-remont-standart",
      "/informaciya/chernovoj-remont-komfort",
      "/informaciya/remont-kvartiry-standart",
      "/informaciya/remont-kvartiry-komfort",
      "/informaciya/remont-kvartiry-komfort-pljus",
      "/informaciya/remont-kvartiry-premium",
      "/informaciya/remont-kvartiry-jekonom",
      "/informaciya/kosmeticheskij-remont-komnaty-ceny",
      "/informaciya/cena-remonta-koridora",
      "/informaciya/kosmeticheskij-remont-kuhni-cena",
      "/informaciya/obshivka-balkona-plastikovymi-panelyami-i-vagonkoy",
      "/informaciya/remont-vannoj-komnaty-ceny",
      "/informaciya/raschet-peskobetona-dlja-stjazhki",
      "/informaciya/raschet-keramzita-na-styazhku",
      "/informaciya/raschet-ploschadi-sten-pod-pokleyku",
      "/informaciya/polipropilenovye-truby",
      "/informaciya/elektricheskij-teplyj-pol-v-kvartire",
      "/informaciya/gidroizoljacija-pola-v-kvartire"
    ]
    @preview_image = [
      Image.find_by_alt("stoimost-chernovogo-remonta").info_image.url(:thumb),
      Image.find_by_alt("stoimost-chernovoy-otdelki").info_image.url(:thumb),
      Image.find_by_alt("расчет стоимости работ по капитальному ремонту квартир под ключ категории Стандарт").info_image.url(:thumb),
      Image.find_by_alt("Расчет стоимости ремонта квартиры под ключ категории Комфорт").info_image.url(:thumb),
      Image.find_by_alt("Расчет цены ремонта под ключ категории Комфорт Плюс").info_image.url(:thumb),
      Image.find_by_alt("Расчет стоимости евроремонта категории Премиум в Москве за квадратный метр").info_image.url(:thumb),
      Image.find_by_alt("kosmeticheskiy-remont-kvartir-ceny").info_image.url(:thumb),
      Image.find_by_alt("косметический ремонт комнаты цены").info_image.url(:thumb),
      Image.find_by_alt("remont-koridora-cena").info_image.url(:thumb),
      Image.find_by_alt("remont-kuhni-cena").info_image.url(:thumb),
      Image.find_by_alt("пластиковые панели под дерево на балконе").info_image.url(:thumb),
      Image.find_by_alt("Пример готовой работы частных мастеров по капитальному ремонту ванной комнаты по доступной стоимости").info_image.url(:thumb),
      Image.find_by_alt("Пример расчета пескобетона для стяжки").info_image.url(:thumb),
      Image.find_by_alt("стяжка_с_керамзитом_по_уровню.jpg").info_image.url(:thumb),
      nil,
      nil,
      Image.find_by_alt("пример укладки теплого электрического пола в квартире").info_image.url(:thumb),
      Image.find_by_alt("Готовая обмазочная гидроизоляция в ванной комнате").info_image.url(:thumb)
    ]
  end

  def chernovoj_remont_standart
    @title =       "Черновой ремонт в новостройке категории Стандарт и стоимость - бригада частных мастеров"
    @description = "Бригада частных мастеров сделает черновой ремонт квартиры в новостройке по выгодной цене. Стоимость чернового ремонта категории Стандарт в новостройке составляет от 2 598 руб/м2"
    @keywords =    "стоимость чернового ремонта в новостройке"
    # Пол
    @floor_names = [
      "Стяжка пола по маякам (до 5 см)",
      "Установка маяков по лазерному уровню",
      'Грунтовка составом "Бетоконтакт"'
    ]
    link = url_for controller: :vidy_rabot, action: :stjazhka_pola_cena, only_path: true
    @floor_prices = [
      Work.find_by_name("<a href='#{link}' target='_blank'>Стяжка пола по маякам</a> до 5 см + монтаж маяков по лазерному уровню").price.to_f,
      Work.find_by_name('Установка маяков по уровню').price.to_f,
      Work.find_by_name('Грунтовка бетоноконтактом').price.to_f
    ]
    @sum_floor_price = 0
    for i in 0...@floor_prices.size
      @sum_floor_price +=@floor_prices[i]
    end
    @sum_floor_price *= 50
    # Стены
    @wall_names = [
      "Грунтовка стен под штукатурку",
      "Установка маяков по лазерному уровню",
      "Штукатурка стен по маякам (толщина слоя до 3 см)",
      "Шлифовка после оштукатуривания",
      "Грунтовка дверных откосов",
      "Штукатурка откосов (дверные) по уголкам",
      "Шлифовка откосов"
    ]
    @wall_prices = [
      Work.find_by_name('Грунтовка стен после каждого цикла работ (необходима для наилучшего результата)').price.to_f,
      Work.find_by_name('Установка маяков по уровню').price.to_f,
      Work.find_by_name('Штукатурка стен по маякам (толщина слоя до 3 см)').price.to_f,
      Work.find_by_name('Шлифовка стен').price.to_f,
      Work.find_by_name('Грунтовка стен после каждого цикла работ (необходима для наилучшего результата)').price.to_f,
      Work.find_by_name('Штукатурка + грунтовка дверных и оконных откосов с уголками').price.to_f,
      Work.find_by_name('Шлифовка стен').price.to_f
    ]
    @wall_volumes = [138, 138, 138, 138, 12, 12, 12]
    @wall_units = ["м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м/п", "м/п", "м/п"]
    @sum_wall_price = 0
    for i in 0...@wall_prices.size
      @sum_wall_price +=@wall_prices[i]*@wall_volumes[i]
    end
    # Электрика
    @electric_names = ["Прокладка кабеля", "Штробление под прокладку кабеля"]
    @electric_prices = [
      Work.find_by_name("Прокладка кабеля").price.to_f,
      Work.find_by_name("Штробление под кабель в кирпиче, штукатурке, блоках").price.to_f
    ]
    @electric_volumes = [300, 16]
    @electric_units = ["м/п", "м/п"]
    @sum_electric_price = 0
    for i in 0...@electric_prices.size
      @sum_electric_price +=@electric_prices[i]*@electric_volumes[i]
    end
    # Общее
    @sum_price = @sum_floor_price + @sum_wall_price + @sum_electric_price
    @one_meter_price = @sum_price / 50
  end

  def chernovoj_remont_komfort
    @title =       "Узнайте, сколько стоит черновая отделка в новостройке Комфорт от бригады частных мастеров Ремонтами 7"
    @description = "Выполним черновую отделку квартиры в новостройке категории Комфорт по оптимальной цене. Бригада частных мастеров выполнит работы по цене от 3 801 руб/м2"
    @keywords =    "сколько стоит черновая отделка в новостройке, черновой ремонт Комфорт"

    # Стяжка пола
    @floor_names = [
      "Стяжка пола по маякам с керамзитом утепленная, свыше 7 см + монтаж маяков по лазерному уровню",
      "Гидроизоляция пола в санузле (Водостоп)"
    ]
    link = url_for controller: :vidy_rabot, action: :stjazhka_pola_s_keramzitom, only_path: true
    @floor_prices = [
      Work.find_by_name("<a href='#{link}' target='_blank'>Стяжка пола по маякам (утепленная с керамзитом)</a>&nbsp;более 7 см + монтаж маяков по лазерному уровню").price.to_f,
      Work.find_by_name('Гидроизоляция обмазочная (Водостоп, Гипердесмо)').price.to_f
    ]
    @floor_volumes = [ 50, 3.5 ]
    @floor_units = [ "м<sup>2</sup>", "м<sup>2</sup>" ]
    @sum_floor_price = 0
    for i in 0...@floor_volumes.size
      @sum_floor_price +=@floor_prices[i]*@floor_volumes[i]
    end
    # Сантехника
    @plumbing_names = [
      "Разводка сантехники (разодка горячей и холодной воды, канализации к сантехническим приборам, ванная, 2 раковины, унитаз, полотенцесушитель)",
      "Штробление под трубы"
    ]
    @plumbing_prices = [
      Work.find_by_name('Разводка труб (полипропилен)').price.to_f,
      Work.find_by_name('Штробление под прокладку труб').price.to_f
    ]
    @plumbing_volumes = [ 8, 4 ]
    @plumbing_units = [ "точек", nil ]
    @sum_plumbing_price = 0
    for i in 0...@plumbing_volumes.size
      @sum_plumbing_price +=@plumbing_prices[i]*@plumbing_volumes[i]
    end
    # Электрика
    @electric_names = [
      "Прокладка кабелей",
      "Штробление под прокладку кабелей",
      "Устройство эл.щитка с автоматами 18"
    ]
    @electric_prices = [
      Work.find_by_name('Прокладка кабеля').price.to_f,
      Work.find_by_name('Штробление под кабель в кирпиче, штукатурке, блоках').price.to_f,
      Work.find_by_name('Устройство эл. щитка с автоматами 18').price.to_f
    ]
    @electric_volumes = [ 310, 16, 1 ]
    @electric_units = [ "м/п", "м/п", "шт" ]
    @sum_electric_price = 0
    for i in 0...@electric_volumes.size
      @sum_electric_price +=@electric_prices[i]*@electric_volumes[i]
    end
    # Стены
    @wall_names = [
      "Монтаж перегородок (пеноблоки)",
      "Армирование перегородок",
      "Грунтовка стен (2 цикла)",
      "Установка маяков по лазерному уровню",
      "Штукатурка стен по маякам (толщина слоя до 3 см)",
      "Шлифовка стен",
      "Штукатурка и грунтовка дверных, оконных откосов с уголком"
    ]
    @wall_prices = [
      Work.find_by_name('Монтаж перегородки, пеноблоки (до 10 м2)').price.to_f,
      Work.find_by_name('Армирование стяжки пола сеткой').price.to_f,
      Work.find_by_name('Грунтовка стен после каждого цикла работ (необходима для наилучшего результата)').price.to_f,
      Work.find_by_name('Установка маяков по уровню').price.to_f,
      Work.find_by_name('Штукатурка стен по маякам (толщина слоя до 3 см)').price.to_f,
      Work.find_by_name('Шлифовка стен').price.to_f,
      Work.find_by_name('Штукатурка + грунтовка дверных и оконных откосов с уголками').price.to_f
    ]
    @wall_volumes = [ 12, 12, 276, 138, 138, 138, 15 ]
    @wall_units = [ "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м/п" ]
    @sum_wall_price = 0
    for i in 0...@wall_volumes.size
      @sum_wall_price +=@wall_prices[i]*@wall_volumes[i]
    end
    # Общее
    @sum_price = @sum_floor_price + @sum_plumbing_price + @sum_electric_price + @sum_wall_price
    @one_meter_price = @sum_price / 50
  end

  def remont_kvartiry_standart
    @title =       "Капитальный ремонт квартир под ключ категории Стандарт и цены - бригада частных мастеров"
    @description = "Выполним капитальный ремонт квартиры под ключ категории Стандарт по цене от 4 841 руб/м2. Бригада частных мастеров работает качественно и профессионально!"
    @keywords =    "капитальный ремонт квартир под ключ цены"

    # Стяжка пола
    @floor_names = [
      "Стяжка пола по маякам (до 5 см)",
      "Установка маяков по лазерному уровню"
    ]
    link = url_for controller: :vidy_rabot, action: :stjazhka_pola_cena, only_path: true
    @floor_prices = [
      Work.find_by_name("<a href='#{link}' target='_blank'>Стяжка пола по маякам</a> до 5 см + монтаж маяков по лазерному уровню").price.to_f,
      Work.find_by_name('Установка маяков по уровню').price.to_f
    ]
    @floor_volumes = [ 60, 60 ]
    @floor_units = [ "м<sup>2</sup>", "м<sup>2</sup>" ]
    @sum_floor_price = 0
    for i in 0...@floor_volumes.size
      @sum_floor_price +=@floor_prices[i]*@floor_volumes[i]
    end
    # Сантехника
    @plumbing_names = [
      "Разводка сантехники (полипропилен)",
      "Штробление под трубы"
    ]
    @plumbing_prices = [
      Work.find_by_name('Разводка труб (полипропилен)').price.to_f,
      Work.find_by_name('Штробление под прокладку труб').price.to_f
    ]
    @plumbing_volumes = [ 5, 2 ]
    @plumbing_units = [ "точек", "м/п" ]
    @sum_plumbing_price = 0
    for i in 0...@plumbing_volumes.size
      @sum_plumbing_price +=@plumbing_prices[i]*@plumbing_volumes[i]
    end
    # Электрика
    @electric_names = [
      "Электромонтажные работы",
      "Прокладка кабеля",
      "Штробление под прокладку провода",
      "Монтаж электрощитка на 12 автоматов"
    ]
    @electric_prices = [
      Work.find_by_name('Электромонтаж (розетка, выключатель, освещение)').price.to_f,
      Work.find_by_name('Прокладка кабеля').price.to_f,
      Work.find_by_name('Штробление под кабель в кирпиче, штукатурке, блоках').price.to_f,
      Work.find_by_name('Устройство эл. щитка с автоматами 12').price.to_f
    ]
    @electric_volumes = [ 15, 300, 15, 1 ]
    @electric_units = [ "точек", "м/п", "м/п", "шт" ]
    @sum_electric_price = 0
    for i in 0...@electric_volumes.size
      @sum_electric_price +=@electric_prices[i]*@electric_volumes[i]
    end
    # Стены
    @wall_names = [
      "Грунтовка стен",
      "Штукатурка стен по плоскости",
      "Грунтовка стен (второй цикл)",
      "Шпаклевка стен под обои (2 слоя)",
      "Шлифовка стен",
      "Штукатурка+грунтовка дверных и оконных откосов"
    ]
    link = url_for controller: :vidy_rabot, action: :shpaklevka_sten_pod_oboi_ceny, only_path: true
    @wall_prices = [
      Work.find_by_name('Грунтовка стен после каждого цикла работ (необходима для наилучшего результата)').price.to_f,
      Work.find_by_name('Выравнивание штукатурной смесью по плоскости').price.to_f,
      Work.find_by_name('Грунтовка стен после каждого цикла работ (необходима для наилучшего результата)').price.to_f,
      Work.find_by_name("<a href='#{link}' target='_blank'>Шпаклевка стен под обои</a> (2 слоя)").price.to_f,
      Work.find_by_name('Шлифовка стен').price.to_f,
      Work.find_by_name('Штукатурка + грунтовка дверных и оконных откосов с уголками').price.to_f
    ]
    @wall_volumes = [ 160, 160, 160, 132, 132, 12 ]
    @wall_units = [ "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м/п" ]
    @sum_wall_price = 0
    for i in 0...@wall_volumes.size
      @sum_wall_price +=@wall_prices[i]*@wall_volumes[i]
    end
    # Потолок
    @roof_names = [ "Монтаж реечного потолка" ]
    @roof_prices = [ Work.find_by_name('Монтаж реечного потолка').price.to_f ]
    @roof_volumes = [ 60 ]
    @roof_units = [ "м<sup>2</sup>" ]
    @sum_roof_price = 0
    for i in 0...@roof_volumes.size
      @sum_roof_price +=@roof_prices[i]*@roof_volumes[i]
    end
    # Плиточные работы
    link = url_for controller: :vidy_rabot, action: :ukladka_plitki, only_path: true
    @tile_names = [
      "<a href='#{link}' target='_blank'>Укладка кафеля</a> в санузле (пол и стены)",
      "Затирка швов"
    ]
    @tile_prices = [
      Work.find_by_name("<a href='#{link}' target='_blank'>Укладка плитки</a> 20х30, 20х40, 30х40").price.to_f,
      Work.find_by_name("Затирка швов плитки 20х30, 20х40, 30х30, 40х40 (пол, стены)").price.to_f
    ]
    @tile_volumes = [ 27.5, 27.5 ]
    @tile_units = [ "м<sup>2</sup>", "м<sup>2</sup>" ]
    @sum_tile_price = 0
    for i in 0...@tile_volumes.size
      @sum_tile_price +=@tile_prices[i]*@tile_volumes[i]
    end
    # Малярные работы
    link = url_for controller: :vidy_rabot, action: :pokleyka_oboev_cena, only_path: true
    @paint_names = [
      "Грунтовка стен",
      "Оклейка обоями (винил, флизелин)"
    ]
    @paint_prices = [
      Work.find_by_name("Грунтовка стен после каждого цикла работ (необходима для наилучшего результата)").price.to_f,
      Work.find_by_name("<a href='#{link}' target='_blank'>Поклейка обоев</a> (флизелин, винил)").price.to_f
    ]
    @paint_volumes = [ 132, 132 ]
    @paint_units = [ "м<sup>2</sup>", "м<sup>2</sup>" ]
    @sum_paint_price = 0
    for i in 0...@paint_volumes.size
      @sum_paint_price +=@paint_prices[i]*@paint_volumes[i]
    end
    # Финальные работы
    link = url_for controller: :vidy_rabot, action: :ukladka_laminata_cena, only_path: true
    @finish_names = [
      "<a href='#{link}' target='_blank'>Укладка ламината</a> по прямой + подложка",
      "Монтаж порожков",
      "Монтаж пластикового плинтуса ПВХ"
    ]
    @finish_prices = [
      Work.find_by_name("<a href='#{link}' target='_blank'>Укладка ламината</a>&nbsp;в комнате по прямой + укладка подложки").price.to_f,
      250,
      Work.find_by_name("Монтаж плинтуса ПВХ").price.to_f
    ]
    @finish_volumes = [ 56, 1, 35 ]
    @finish_units = [ "м<sup>2</sup>", "шт", "м/п" ]
    @sum_finish_price = 0
    for i in 0...@finish_volumes.size
      @sum_finish_price +=@finish_prices[i]*@finish_volumes[i]
    end
    # Общее
    @sum_price = @sum_floor_price + @sum_plumbing_price + @sum_electric_price + @sum_wall_price + @sum_roof_price + @sum_tile_price + @sum_paint_price + @sum_finish_price
    @one_meter_price = @sum_price / 60
  end

  def remont_kvartiry_komfort
    @title =       "Стоимость ремонта квартиры под ключ категории Комфорт и цена за м2 - частная бригада мастеров"
    @description = "Выполним ремонт квартиры под ключ по самым оптимальным ценам. Стоимость ремонта квартиры под ключ категории Комфорт у нашей бригады составит от 6 700 руб/м2"
    @keywords =    "Стоимость ремонта квартиры под ключ цена м2"

    # Пол
    @floor_names = [
      "Стяжка пола по маякам (до 5 см)",
      "Установка маяков по лазерному уровню"
    ]
    link = url_for controller: :vidy_rabot, action: :stjazhka_pola_cena, only_path: true
    @floor_prices = [
      Work.find_by_name("<a href='#{link}' target='_blank'>Стяжка пола по маякам</a> до 5 см + монтаж маяков по лазерному уровню").price.to_f,
      Work.find_by_name('Установка маяков по уровню').price.to_f
    ]
    @floor_volumes = [ 60, 60 ]
    @floor_units = [ "м<sup>2</sup>", "м<sup>2</sup>" ]
    @sum_floor_price = 0
    for i in 0...@floor_volumes.size
      @sum_floor_price +=@floor_prices[i]*@floor_volumes[i]
    end

    # Сантехника
    @plumbing_names = [
      "Разводка сантехники (полипропилен)",
      "Штробление под трубы"
    ]
    @plumbing_prices = [
      Work.find_by_name('Разводка труб (полипропилен)').price.to_f,
      Work.find_by_name('Штробление под прокладку труб').price.to_f
    ]
    @plumbing_volumes = [ 6, 10 ]
    @plumbing_units = [ "точек", "м/п" ]
    @sum_plumbing_price = 0
    for i in 0...@plumbing_volumes.size
      @sum_plumbing_price +=@plumbing_prices[i]*@plumbing_volumes[i]
    end

    # Электрика
    @electric_names = [
      "Электромонтажные работы",
      "Прокладка кабеля",
      "Штробление под прокладку провода",
      "Монтаж электрощитка на 12 автоматов"
    ]
    @electric_prices = [
      Work.find_by_name('Электромонтаж (розетка, выключатель, освещение)').price.to_f,
      Work.find_by_name('Прокладка кабеля').price.to_f,
      Work.find_by_name('Штробление под кабель в кирпиче, штукатурке, блоках').price.to_f,
      Work.find_by_name('Устройство эл. щитка с автоматами 12').price.to_f
    ]
    @electric_volumes = [ 20, 230, 15, 1 ]
    @electric_units = [ "точек", "м/п", "м/п", "шт" ]
    @sum_electric_price = 0
    for i in 0...@electric_volumes.size
      @sum_electric_price +=@electric_prices[i]*@electric_volumes[i]
    end

    # Стены
    @wall_names = [
      "Грунтовка стен",
      "Штукатурка стен по маякам",
      "Установка маяков по лазерному уровню",
      "Грунтовка стен",
      "Шпаклевка стен под обои (2 слоя)",
      "Шлифовка (ошкуривание) стен",
      "Штукатурка + грунтовка откосов (оконные, дверные)",
      "Шпаклевка откосов (оконные, дверные)"
    ]
    link = url_for controller: :vidy_rabot, action: :shpaklevka_sten_pod_oboi_ceny, only_path: true
    @wall_prices = [
      Work.find_by_name('Грунтовка стен после каждого цикла работ (необходима для наилучшего результата)').price.to_f,
      Work.find_by_name('Штукатурка стен по маякам (толщина слоя до 3 см)').price.to_f,
      Work.find_by_name('Установка маяков по уровню').price.to_f,
      Work.find_by_name("Грунтовка стен после каждого цикла работ (необходима для наилучшего результата)").price.to_f,
      Work.find_by_name("<a href='#{link}' target='_blank'>Шпаклевка стен под обои</a> (2 слоя)").price.to_f,
      Work.find_by_name('Шлифовка стен').price.to_f,
      Work.find_by_name('Штукатурка + грунтовка дверных и оконных откосов с уголками').price.to_f,
      Work.find_by_name('Шпаклевка стен финишной шпаклевкой Шитрок').price.to_f
    ]
    @wall_volumes = [ 160, 160, 160, 160, 125, 125, 15, 15 ]
    @wall_units = [ "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м/п", "м/п" ]
    @sum_wall_price = 0
    for i in 0...@wall_volumes.size
      @sum_wall_price +=@wall_prices[i]*@wall_volumes[i]
    end

    # Потолок
    @roof_names = [
      "Грунтовка потолков",
      "Штукатурка потолков по маякам",
      "Установка маяков по лазерному уровню",
      "Шпаклевка потолков под покраску",
      "Шлифовка потолков",
      "Грунтовка потолков",
      "Покраска потолков (2 слоя)",
      "Монтаж прямого натяжного потолка (санузел)"
    ]
    @roof_prices = [
      Work.find_by_name('Грунтовка потолка (1 слой)').price.to_f,
      Work.find_by_name('Выравнивание штукатуркой по маякам').price.to_f,
      Work.find_by_name('Установка маяков по уровню').price.to_f,
      Work.find_by_name('Шпаклевка потолка под покраску').price.to_f,
      Work.find_by_name('Шлифовка потолка').price.to_f,
      Work.find_by_name('Грунтовка потолка (1 слой)').price.to_f,
      Work.find_by_name('Покраска потолка (2 слоя)').price.to_f,
      Work.find_by_name('Подвесной потолок из ГКЛ (1 уровень)').price.to_f
    ]
    @roof_volumes = [ 56, 56, 56, 56, 56, 56, 56, 4 ]
    @roof_units = [ "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>" ]
    @sum_roof_price = 0
    for i in 0...@roof_volumes.size
      @sum_roof_price +=@roof_prices[i]*@roof_volumes[i]
    end

    # Плиточные работы
    link = url_for controller: :vidy_rabot, action: :ukladka_plitki, only_path: true
    @tile_names = [
      "Укладка кафельной плитки (санузел)",
      "Затирка швов"
    ]
    @tile_prices = [
      Work.find_by_name("<a href='#{link}' target='_blank'>Укладка плитки</a> 20х30, 20х40, 30х40").price.to_f,
      Work.find_by_name("Затирка швов плитки 20х30, 20х40, 30х30, 40х40 (пол, стены)").price.to_f
    ]
    @tile_volumes = [ 30, 30 ]
    @tile_units = [ "м<sup>2</sup>", "м<sup>2</sup>" ]
    @sum_tile_price = 0
    for i in 0...@tile_volumes.size
      @sum_tile_price +=@tile_prices[i]*@tile_volumes[i]
    end

    # Малярные работы
    link = url_for controller: :vidy_rabot, action: :pokleyka_oboev_cena, only_path: true
    @paint_names = [
      "Грунтовка стен",
      "Поклейка обоев (флизелин, винил)",
      "Грунтовка + окраска дверных и оконных откосов"
    ]
    @paint_prices = [
      Work.find_by_name("Грунтовка стен после каждого цикла работ (необходима для наилучшего результата)").price.to_f,
      Work.find_by_name("<a href='#{link}' target='_blank'>Поклейка обоев</a> (флизелин, винил)").price.to_f,
      Work.find_by_name("Покраска обоев").price.to_f
    ]
    @paint_volumes = [ 120, 120, 15 ]
    @paint_units = [ "м<sup>2</sup>", "м<sup>2</sup>", "м/п" ]
    @sum_paint_price = 0
    for i in 0...@paint_volumes.size
      @sum_paint_price +=@paint_prices[i]*@paint_volumes[i]
    end

    # Финальные работы
    link = url_for controller: :vidy_rabot, action: :ukladka_laminata_cena, only_path: true
    @finish_names = [
      "<a href='#{link}' target='_blank'>Укладка ламината</a> по прямой + подложка",
      "Монтаж порожков",
      "Монтаж пластиковых плинтусов (пол)"
    ]
    @finish_prices = [
      Work.find_by_name("<a href='#{link}' target='_blank'>Укладка ламината</a>&nbsp;в комнате по прямой + укладка подложки").price.to_f,
      250,
      Work.find_by_name("Монтаж плинтуса ПВХ").price.to_f
    ]
    @finish_volumes = [ 56, 1, 56 ]
    @finish_units = [ "м<sup>2</sup>", "шт", "м/п" ]
    @sum_finish_price = 0
    for i in 0...@finish_volumes.size
      @sum_finish_price +=@finish_prices[i]*@finish_volumes[i]
    end

    # Общее
    @sum_price = @sum_floor_price + @sum_plumbing_price + @sum_electric_price + @sum_wall_price + @sum_roof_price + @sum_tile_price + @sum_paint_price + @sum_finish_price
    @one_meter_price = @sum_price / 60
  end

  def remont_kvartiry_komfort_pljus
    @title =       "Ремонт квартир под ключ категории Комфорт Плюс и цена - частная бригада"
    @description = "Цена ремонта квартиры под ключ категории Комфорт Плюс при обращении в нашу бригаду составит от 7 273 руб/м2. Работаем профессионально. Москва и МО."
    @keywords =    "ремонт квартир под ключ цена"

    # Пол
    @floor_names = [
      "Стяжка пола по уровню (толщина более 7 см) с керамзитом + установка маяков",
      "Засыпка керамзита",
      "Монтаж теплого пола (санузел) с установкой терморегулятора",
      "Гидроизоляция пола (санузел)"
    ]
    link = url_for controller: :vidy_rabot, action: :stjazhka_pola_s_keramzitom, only_path: true
    @floor_prices = [
      Work.find_by_name("<a href='#{link}' target='_blank'>Стяжка пола по маякам (утепленная с керамзитом)</a>&nbsp;более 7 см + монтаж маяков по лазерному уровню").price.to_f,
      Work.find_by_name('Засыпка керамзита').price.to_f,
      800,
      Work.find_by_name('Гидроизоляция обмазочная (Водостоп, Гипердесмо)').price.to_f
    ]
    @floor_volumes = [ 60, 56, 4, 4 ]
    @floor_units = [ "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>" ]
    @sum_floor_price = 0
    for i in 0...@floor_volumes.size
      @sum_floor_price +=@floor_prices[i]*@floor_volumes[i]
    end

    # Сантехника
    @plumbing_names = [
      "Разводка сантехники (полипропилен)",
      "Штробление под трубы"
    ]
    @plumbing_prices = [
      Work.find_by_name('Разводка труб (полипропилен)').price.to_f,
      Work.find_by_name('Штробление под прокладку труб').price.to_f
    ]
    @plumbing_volumes = [ 8, 15 ]
    @plumbing_units = [ "точек", "м/п" ]
    @sum_plumbing_price = 0
    for i in 0...@plumbing_volumes.size
      @sum_plumbing_price +=@plumbing_prices[i]*@plumbing_volumes[i]
    end

    # Электрика
    @electric_names = [
      "Электромонтажные работы",
      "Прокладка кабеля",
      "Штробление под прокладку провода",
      "Монтаж электрощитка на 18 автоматов"
    ]
    @electric_prices = [
      Work.find_by_name('Электромонтаж (розетка, выключатель, освещение)').price.to_f,
      Work.find_by_name('Прокладка кабеля').price.to_f,
      Work.find_by_name('Штробление под кабель в кирпиче, штукатурке, блоках').price.to_f,
      Work.find_by_name('Устройство эл. щитка с автоматами 18').price.to_f
    ]
    @electric_volumes = [ 28, 310, 15, 1 ]
    @electric_units = [ "точек", "м/п", "м/п", "шт" ]
    @sum_electric_price = 0
    for i in 0...@electric_volumes.size
      @sum_electric_price +=@electric_prices[i]*@electric_volumes[i]
    end

    # Стены
    @wall_names = [
      "Зашивание стояков отопления",
      "Монтаж перегородок газоблоков",
      "Грунтовка стен",
      "Штукатурка стен по маякам (до 3 см)",
      "Установка маяков по лазерному уровню",
      "Грунтовка стен (второй цикл)",
      "Шпатлевка стен под обои (2 слоя)",
      "Шлифовка стен",
      "Штукатурка + грунтовка оконных, дверных откосов",
      "Шпаклевка + грунтовка оконных, дверных откосов"
    ]
    @wall_prices = [
      1040,
      580,
      Work.find_by_name("Грунтовка стен после каждого цикла работ (необходима для наилучшего результата)").price.to_f,
      Work.find_by_name('Штукатурка стен по маякам (толщина слоя до 3 см)').price.to_f,
      Work.find_by_name("Установка маяков по уровню").price.to_f,
      Work.find_by_name("Грунтовка стен после каждого цикла работ (необходима для наилучшего результата)").price.to_f,
      Work.find_by_name('Шпаклевка стен финишной шпаклевкой Шитрок').price.to_f,
      Work.find_by_name('Шлифовка стен').price.to_f,
      Work.find_by_name('Штукатурка + грунтовка дверных и оконных откосов с уголками').price.to_f,
      Work.find_by_name('Шпаклевка стен финишной шпаклевкой Шитрок').price.to_f
    ]
    @wall_volumes = [ 2, 20, 160, 160, 160, 124, 124, 124, 10, 10 ]
    @wall_units = [ "шт", "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м/п", "м/п" ]
    @sum_wall_price = 0
    for i in 0...@wall_volumes.size
      @sum_wall_price +=@wall_prices[i]*@wall_volumes[i]
    end

    # Потолок
    @roof_names = [
      "Монтаж потолков из гипсокартона (одноуровневый)",
      "Грунтовка потолков",
      "Шпаклевка потолков (2 слоя) под покраску",
      "Шлифовка потолков",
      "Грунтовка потолков",
      "Покраска потолков (2 слоя)",
      "Монтаж натяжного потолка (санузел)"
    ]
    @roof_prices = [
      Work.find_by_name('Подвесной потолок из ГКЛ (1 уровень)').price.to_f,
      Work.find_by_name('Грунтовка потолка (1 слой)').price.to_f,
      Work.find_by_name('Шпаклевка потолка под покраску').price.to_f,
      Work.find_by_name('Шлифовка потолка').price.to_f,
      Work.find_by_name('Грунтовка потолка (1 слой)').price.to_f,
      Work.find_by_name('Покраска потолка (2 слоя)').price.to_f,
      Work.find_by_name('Подвесной потолок из ГКЛ (многоуровневый)').price.to_f
    ]
    @roof_volumes = [ 56, 56, 56, 56, 56, 56, 4 ]
    @roof_units = [ "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>" ]
    @sum_roof_price = 0
    for i in 0...@roof_volumes.size
      @sum_roof_price +=@roof_prices[i]*@roof_volumes[i]
    end

    # Плиточные работы
    @tile_names = [
      "Монтаж сантехкороба из ГКЛ и люка-невидимки",
      "Монтаж экрана ванны из ГКЛ и люка-невидимки",
      "Укладка кафельной плитки (кухня)",
      "Затирка швов",
      "Укладка кафельной плитки (санузел)",
      "Затирка швов"
    ]
    link = url_for url_for controller: :vidy_rabot, action: :ukladka_plitki, only_path: true
    @tile_prices = [
      3500,
      3500,
      Work.find_by_name("<a href='#{link}' target='_blank'>Укладка плитки</a> 20х30, 20х40, 30х40").price.to_f,
      Work.find_by_name('Затирка швов плитки 20х30, 20х40, 30х30, 40х40 (пол, стены)').price.to_f,
      Work.find_by_name("<a href='#{link}' target='_blank'>Укладка плитки</a> 20х30, 20х40, 30х40").price.to_f,
      Work.find_by_name('Затирка швов плитки 20х30, 20х40, 30х30, 40х40 (пол, стены)').price.to_f
    ]
    @tile_volumes = [ 1, 1, 12, 12, 30, 30 ]
    @tile_units = [ "шт", "шт", "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>" ]
    @sum_tile_price = 0
    for i in 0...@tile_volumes.size
      @sum_tile_price +=@tile_prices[i]*@tile_volumes[i]
    end

    # Малярные работы
    link = url_for controller: :vidy_rabot, action: :pokleyka_oboev_cena, only_path: true
    @paint_names = [
      "Грунтовка стен",
      "Поклейка обоев (флизелин, винил)",
      "Грунтовка + окраска дверных и оконных откосов"
    ]
    @paint_prices = [
      Work.find_by_name("Грунтовка стен после каждого цикла работ (необходима для наилучшего результата)").price.to_f,
      Work.find_by_name("<a href='#{link}' target='_blank'>Поклейка обоев</a> (флизелин, винил)").price.to_f,
      Work.find_by_name("Покраска обоев").price.to_f
    ]
    @paint_volumes = [ 120, 120, 10 ]
    @paint_units = [ "м<sup>2</sup>", "м<sup>2</sup>", "м/п" ]
    @sum_paint_price = 0
    for i in 0...@paint_volumes.size
      @sum_paint_price +=@paint_prices[i]*@paint_volumes[i]
    end

    # Финальные работы
    @finish_names = [
      "Укладка паркетной доски",
      "Монтаж порожков",
      "Монтаж пластиковых плинтусов (пол)",
      "Установка пластиковых плинтусов+шпатлевка+покраска (потолок) до 5 см"
    ]
    link = url_for controller: :vidy_rabot, action: :ukladka_parketnoy_doski, only_path: true
    @finish_prices = [
      Work.find_by_name("<a href='#{link}' target='_blank'>Укладка паркетной доски</a>&nbsp;по прямой&nbsp;+ укладка подложки").price.to_f,
      250,
      Work.find_by_name("Монтаж плинтуса ПВХ").price.to_f,
      Work.find_by_name("Монтаж плинтуса (до 5 см) + шпатлевка + покраска").price.to_f
    ]
    @finish_volumes = [ 56, 1, 56, 52 ]
    @finish_units = [ "м<sup>2</sup>", "шт", "м/п", "м/п" ]
    @sum_finish_price = 0
    for i in 0...@finish_volumes.size
      @sum_finish_price +=@finish_prices[i]*@finish_volumes[i]
    end

    # Общее
    @sum_price = @sum_floor_price + @sum_plumbing_price + @sum_electric_price + @sum_wall_price + @sum_roof_price + @sum_tile_price + @sum_paint_price + @sum_finish_price
    @one_meter_price = @sum_price / 60
  end

  def remont_kvartiry_premium
    @title =       "Стоимость евроремонта Премиум за квадратный метр"
    @description = "Бригада частных мастеров выполнит высококлассный евроремонт категории Премиум в Москве и Подмосковье. Стоимость евроремонта квартиры составит от 12 000 руб/м2."
    @keywords =    "стоимость евроремонта за квадратный метр"
  end

  def remont_kvartiry_jekonom
    @title =       "Косметический ремонт квартиры Эконом в Москве МО и цены на работу от частных мастеров бригады Ремонтами 7"
    @description = "Бригада Ремонтами 7 выполнит косметический ремонт квартиры категории Эконом в Москве и Подмосковье по низким ценам. Цены на косметический ремонт категории Эконом позволят отремонтировать квартиру недорого и составляют от 2 800 руб/м2"
    @keywords =    "косметический ремонт квартир цены"

    # Демонтажные работы
    @destroy_names = [
      "Удаление обоев",
      "Удаление краски (потолок)",
      "Удаление шпатлевки (потолок)",
      "Демонтаж линолеума",
      "Демонтаж плинтусов"
    ]
    @destroy_prices = [
      Work.find_by_name("Демонтаж обоев").price.to_f,
      250,
      100,
      60,
      30
    ]
    @destroy_volumes = [ 125, 56, 56, 56, 71 ]
    @destroy_units = [ "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м/п" ]
    @sum_destroy_price = 0
    for i in 0...@destroy_volumes.size
      @sum_destroy_price +=@destroy_prices[i]*@destroy_volumes[i]
    end

    # Стены
    @wall_names = [
      "Грунтовка стен",
      "Поклейка флизелиновых обоев",
      "Укладка плитки на кухне (фартук)",
      "Затирка швов плитки",
      "Монтаж пластиковых панелей (санузел)"
    ]
    link = url_for controller: :vidy_rabot, action: :pokleyka_oboev_cena, only_path: true
    @wall_prices = [
      Work.find_by_name("Грунтовка стен после каждого цикла работ (необходима для наилучшего результата)").price.to_f,
      Work.find_by_name("<a href='#{link}' target='_blank'>Поклейка обоев</a> (флизелин, винил)").price.to_f,
      1000,
      Work.find_by_name("Затирка швов плитки 20х30, 20х40, 30х30, 40х40 (пол, стены)").price.to_f,
      Work.find_by_name('Обшивка стен панелями ПВХ, МДФ').price.to_f*30
    ]
    @wall_volumes = [ 125, 122, 1, 3, 1 ]
    @wall_units = [ "м<sup>2</sup>", "м<sup>2</sup>", "Комплект", "м<sup>2</sup>", "Комплект" ]
    @sum_wall_price = 0
    for i in 0...@wall_volumes.size
      @sum_wall_price +=@wall_prices[i]*@wall_volumes[i]
    end

    # Потолок
    @roof_names = [
      "Грунтовка потолка",
      "Шпаклевка потолка под покраску",
      "Ошкуривание (шлифовка) потолка",
      "Покраска потолка водоэмульсионной краской (2 слоя)",
      "Устройство реечного потолка типа 'Армстронг' (санузел)",
      "Монтаж потолочного плинтуса (1 комната)"
    ]
    @roof_prices = [
      Work.find_by_name('Грунтовка потолка (1 слой)').price.to_f,
      Work.find_by_name('Шпаклевка потолка под покраску').price.to_f,
      Work.find_by_name('Шлифовка потолка').price.to_f,
      Work.find_by_name('Покраска потолка (2 слоя)').price.to_f,
      Work.find_by_name('Подвесной потолок "Армстронг" 1200х600 (от 10 м<sup>2</sup>)').price.to_f*12,
      Work.find_by_name('Монтаж плинтуса (до 5 см) + шпатлевка + покраска').price.to_f
    ]
    @roof_volumes = [ 56, 56, 56, 56, 1, 20 ]
    @roof_units = [ "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "Комплект", "м/п" ]
    @sum_roof_price = 0
    for i in 0...@roof_volumes.size
      @sum_roof_price +=@roof_prices[i]*@roof_volumes[i]
    end

    # Пол
    @floor_names = [
      "Укладка ламината по прямой с подложкой",
      "Укладка плитки на пол (кухня)",
      "Затирка плитки на кухне",
      "Укладка плитки (санузел)",
      "Затирка швов плитки",
      "Монтаж плинтуса ПВХ",
      "Устройство порожка"
    ]
    link  = url_for controller: :vidy_rabot, action: :ukladka_laminata_cena, only_path: true
    link1 = url_for controller: :vidy_rabot, action: :ukladka_plitki, only_path: true
    @floor_prices = [
      Work.find_by_name("<a href='#{link}' target='_blank'>Укладка ламината</a>&nbsp;в комнате по прямой + укладка подложки").price.to_f,
      Work.find_by_name("<a href='#{link1}' target='_blank'>Укладка плитки</a> 20х30, 20х40, 30х40").price.to_f,
      Work.find_by_name("<a href='#{link1}' target='_blank'>Укладка плитки</a> 20х30, 20х40, 30х40").price.to_f,
      Work.find_by_name("<a href='#{link1}' target='_blank'>Укладка плитки</a> 20х30, 20х40, 30х40").price.to_f,
      Work.find_by_name('Затирка швов плитки 20х30, 20х40, 30х30, 40х40 (пол, стены)').price.to_f,
      Work.find_by_name('Монтаж плинтуса ПВХ').price.to_f,
      250
    ]
    @floor_volumes = [ 46, 10, 10, 4, 4, 41, 2 ]
    @floor_units = [ "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м/п", "шт" ]
    @sum_floor_price = 0
    for i in 0...@floor_volumes.size
      @sum_floor_price +=@floor_prices[i]*@floor_volumes[i]
    end

    # Электрика
    @electric_names = [
      "Монтаж вытяжки в санузле (вентилятор)",
      "Устройство выключателя, розетки в готовую коробку"
    ]
    @electric_prices = [
      900,
      Work.find_by_name("Электромонтаж (розетка, выключатель, освещение)").price.to_f
    ]
    @electric_volumes = [1, 14]
    @electric_units = ["шт", "шт"]
    @sum_electric_price = 0
    for i in 0...@electric_prices.size
      @sum_electric_price +=@electric_prices[i]*@electric_volumes[i]
    end

    # Общее
    @sum_price = @sum_destroy_price + @sum_wall_price + @sum_roof_price + @sum_floor_price + @sum_electric_price
    @one_meter_price = @sum_price / 60
  end

  def kosmeticheskij_remont_komnaty_ceny
    @title =       "Цены на косметический ремонт комнаты - частные мастера"
    @description = "Бригада частных мастеров выполнит косметический ремонт комнаты по доступным ценам. Работаем профессионально, качественно и быстро."
    @keywords =    "Косметический ремонт комнаты цены, стоимость косметического ремонта комнаты"

    # Демонтажные работы
    @destroy_names = [
      "Снятие старых обоев",
      "Демонтаж линолеума насухо",
      "Демонтаж плинтусов"
    ]
    @destroy_prices = [
      Work.find_by_name("Демонтаж обоев").price.to_f,
      50,
      30
    ]
    @destroy_volumes = [ 29, 10, 19 ]
    @destroy_units = [ "м<sup>2</sup>", "м<sup>2</sup>", "м/п" ]
    @sum_destroy_price = 0
    for i in 0...@destroy_volumes.size
      @sum_destroy_price +=@destroy_prices[i]*@destroy_volumes[i]
    end

    # Потолок
    @roof_names = [
      "Грунтовка потолка",
      "Шпаклевка потолка",
      "Шлифовка потолка",
      "Окраска потолка"
    ]
    @roof_prices = [
      Work.find_by_name('Грунтовка потолка (1 слой)').price.to_f,
      Work.find_by_name('Шпаклевка потолка под покраску').price.to_f,
      Work.find_by_name('Шлифовка потолка').price.to_f,
      Work.find_by_name('Покраска потолка (2 слоя)').price.to_f
    ]
    @roof_volumes = [ 10, 10, 10, 10 ]
    @roof_units = [ "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>" ]
    @sum_roof_price = 0
    for i in 0...@roof_volumes.size
      @sum_roof_price +=@roof_prices[i]*@roof_volumes[i]
    end

    # Стены
    @wall_names = [
      "Шпаклевка стен под обои",
      "Грунтовка стен",
      "Поклейка обоев (винил, флизелин)"
    ]
    link  = url_for controller: :vidy_rabot, action: :shpaklevka_sten_pod_oboi_ceny, only_path: true
    link1 = url_for controller: :vidy_rabot, action: :pokleyka_oboev_cena, only_path: true
    @wall_prices = [
      Work.find_by_name("<a href='#{link}' target='_blank'>Шпаклевка стен под обои</a> (2 слоя)").price.to_f,
      Work.find_by_name("Грунтовка стен после каждого цикла работ (необходима для наилучшего результата)").price.to_f,
      Work.find_by_name("<a href='#{link1}' target='_blank'>Поклейка обоев</a> (флизелин, винил)").price.to_f
    ]
    @wall_volumes = [ 29, 29, 29 ]
    @wall_units = [ "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>" ]
    @sum_wall_price = 0
    for i in 0...@wall_volumes.size
      @sum_wall_price +=@wall_prices[i]*@wall_volumes[i]
    end

    # Пол
    @floor_names = [
      "Укладка ламината с подложкой",
      "Монтаж плинтуса ПВХ"
    ]
    link  = url_for controller: :vidy_rabot, action: :ukladka_laminata_cena, only_path: true
    link1 = url_for controller: :vidy_rabot, action: :ukladka_plitki, only_path: true
    @floor_prices = [
      Work.find_by_name("<a href='#{link}' target='_blank'>Укладка ламината</a>&nbsp;в комнате по прямой + укладка подложки").price.to_f,
      Work.find_by_name('Монтаж плинтуса ПВХ').price.to_f
    ]
    @floor_volumes = [ 10, 14 ]
    @floor_units = [ "м<sup>2</sup>", "м/п" ]
    @sum_floor_price = 0
    for i in 0...@floor_volumes.size
      @sum_floor_price +=@floor_prices[i]*@floor_volumes[i]
    end

    # Общее
    @sum_price = @sum_destroy_price + @sum_wall_price + @sum_roof_price + @sum_floor_price
    @one_meter_price = @sum_price / 10
  end

  def cena_remonta_koridora
    @title =       "Цена косметического ремонта коридора или прихожей - стоимость работ частного мастера"
    @description = "Цена ремонта прихожей или коридора в квартире складывается из нескольких факторов. Частный мастер выполнит работы в Москве и Подмосковье недорого и качественно."
    @keywords =    "ремонта коридора цена"

    # Демонтажные работы
    @destroy_names = [
      "Удаление обоев",
      "Демонтаж линолеума",
      "Демонтаж плинтусов"
    ]
    @destroy_prices = [
      Work.find_by_name("Демонтаж обоев").price.to_f,
      50,
      30
    ]
    @destroy_volumes = [ 16.4, 4.6, 10 ]
    @destroy_units = [ "м<sup>2</sup>", "м<sup>2</sup>", "м/п" ]
    @sum_destroy_price = 0
    for i in 0...@destroy_volumes.size
      @sum_destroy_price +=@destroy_prices[i]*@destroy_volumes[i]
    end

    # Потолок
    @roof_names = [
      "Грунтовка потолка",
      "Шпаклевка потолка",
      "Шлифовка потолка",
      "Покраска потолка"
    ]
    @roof_prices = [
      Work.find_by_name('Грунтовка потолка (1 слой)').price.to_f,
      Work.find_by_name('Шпаклевка потолка под покраску').price.to_f,
      Work.find_by_name('Шлифовка потолка').price.to_f,
      Work.find_by_name('Покраска потолка (2 слоя)').price.to_f
    ]
    @roof_volumes = [ 4.6, 4.6, 4.6, 4.6 ]
    @roof_units = [ "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>" ]
    @sum_roof_price = 0
    for i in 0...@roof_volumes.size
      @sum_roof_price +=@roof_prices[i]*@roof_volumes[i]
    end

    # Стены
    @wall_names = [
      "Шпаклевка стен под обои",
      "Грунтовка стен",
      "Поклейка обоев (винил, флизелин)"
    ]
    link  = url_for controller: :vidy_rabot, action: :shpaklevka_sten_pod_oboi_ceny, only_path: true
    link1 = url_for controller: :vidy_rabot, action: :pokleyka_oboev_cena, only_path: true
    @wall_prices = [
      Work.find_by_name("<a href='#{link}' target='_blank'>Шпаклевка стен под обои</a> (2 слоя)").price.to_f,
      Work.find_by_name("Грунтовка стен после каждого цикла работ (необходима для наилучшего результата)").price.to_f,
      Work.find_by_name("<a href='#{link1}' target='_blank'>Поклейка обоев</a> (флизелин, винил)").price.to_f
    ]
    @wall_volumes = [ 16.4, 16.4, 16.4 ]
    @wall_units = [ "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>" ]
    @sum_wall_price = 0
    for i in 0...@wall_volumes.size
      @sum_wall_price +=@wall_prices[i]*@wall_volumes[i]
    end

    # Пол
    @floor_names = [
      "Самовыравнивающаяся стяжка",
      "Грунтовка пола 'Бетоконтакт'",
      "Укладка ламината с подложкой",
      "Монтаж плинтуса ПВХ"
    ]
    link  = url_for controller: :vidy_rabot, action: :ukladka_laminata_cena, only_path: true
    link1 = url_for controller: :vidy_rabot, action: :ukladka_plitki, only_path: true
    link2 = url_for controller: :vidy_rabot, action: :samovyravnivajushhajasja_stjazhka, only_path: true
    @floor_prices = [
      Work.find_by_name("Чистовая <a href='#{link2}' target='_blank'>cтяжка самовыравнивающейся смесью</a> до 5 мм (наливной пол)").price.to_f,
      Work.find_by_name('Грунтовка бетоноконтактом').price.to_f,
      Work.find_by_name("<a href='#{link}' target='_blank'>Укладка ламината</a>&nbsp;в комнате по прямой + укладка подложки").price.to_f,
      Work.find_by_name('Монтаж плинтуса ПВХ').price.to_f
    ]
    @floor_volumes = [ 4.6, 4.6, 4.6, 10 ]
    @floor_units = [ "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м/п" ]
    @sum_floor_price = 0
    for i in 0...@floor_volumes.size
      @sum_floor_price +=@floor_prices[i]*@floor_volumes[i]
    end

    # Общее
    @sum_price = @sum_destroy_price + @sum_wall_price + @sum_roof_price + @sum_floor_price
    @one_meter_price = @sum_price / 4.6
  end

  def kosmeticheskij_remont_kuhni_cena
    @title =       "Косметический ремонт кухни и цена - частный мастер бригады Ремонтами 7"
    @description = "Бригада частных мастеров Ремонтами 7 выполнит косметический ремонт кухни, цена которого доступна и выгодна. Посмотреть стоимость косметического ремонта можно на примере расчета для маленькой кухни. У нас работают только опытные специалисты."
    @keywords =    "косметический ремонт кухни цена, ремонт маленькой кухни"

    # Потолок
    @roof_names = [
      "Зачистка от старой краски",
      "Грунтовка потолка составом 'Бетононтакт'",
      "Шпаклевка потолка под покраску",
      "Шлифовка потолка",
      "Грунтовка потолка",
      "Покраска потолка водоэмульсионной краской (2 слоя)"
    ]
    @roof_prices = [
      200,
      Work.find_by_name('Грунтовка бетоноконтактом').price.to_f,
      Work.find_by_name('Шпаклевка потолка под покраску').price.to_f,
      Work.find_by_name('Шлифовка потолка').price.to_f,
      Work.find_by_name('Грунтовка потолка (1 слой)').price.to_f,
      Work.find_by_name('Покраска потолка (2 слоя)').price.to_f
    ]
    @roof_volumes = [ 6, 6, 6, 6, 6, 6 ]
    @roof_units = [ "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>" ]
    @sum_roof_price = 0
    for i in 0...@roof_volumes.size
      @sum_roof_price +=@roof_prices[i]*@roof_volumes[i]
    end

    # Стены
    @wall_names = [
      "Демонтаж плитки с кухонного фартука",
      "Снятие старых обоев",
      "Грунтовка стен глубокого проникновения",
      "Штукатурка стен по плоскости",
      "Шпатлевка стен под обои",
      "Шлифовка стен",
      "Обработка стен составом 'Антиплесень'",
      "Поклейка обоев (винил, флизелин) с подбором рисунка",
      "Монтаж кухонного фартука (обычная плитка 20х20, пл. 4,2 м<sup>2</sup>)"
    ]
    link  = url_for controller: :vidy_rabot, action: :shpaklevka_sten_pod_oboi_ceny, only_path: true
    link1 = url_for controller: :vidy_rabot, action: :pokleyka_oboev_cena, only_path: true
    @wall_prices = [
      80,
      Work.find_by_name("Демонтаж обоев").price.to_f,
      Work.find_by_name("Грунтовка бетоноконтактом").price.to_f,
      Work.find_by_name("Выравнивание штукатурной смесью по плоскости").price.to_f,
      Work.find_by_name("<a href='#{link}' target='_blank'>Шпаклевка стен под обои</a> (2 слоя)").price.to_f,
      Work.find_by_name("Шлифовка стен").price.to_f,
      Work.find_by_name('Обработка стен составом "антиплесень"').price.to_f,
      Work.find_by_name("<a href='#{link1}' target='_blank'>Поклейка обоев</a> (флизелин, винил)").price.to_f,
      5000
    ]
    @wall_volumes = [ 1.5, 22, 22, 22, 22, 22, 22, 22, 1 ]
    @wall_units = [ "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "м<sup>2</sup>", "шт" ]
    @sum_wall_price = 0
    for i in 0...@wall_volumes.size
      @sum_wall_price +=@wall_prices[i]*@wall_volumes[i]
    end

    # Пол
    link0  = url_for controller: :vidy_rabot, action: :samovyravnivajushhajasja_stjazhka, only_path: true
    @floor_names = [
      "Демонтаж линолеума",
      "Демонтаж плинтусов",
      "<a href='#{link0}' target='_blank'>Выравнивание основы под ламинат</a>",
      "Укладка ламината + подложка",
      "Монтаж плинтуса ПВХ",
      "Устройство порожка"
    ]
    link  = url_for controller: :vidy_rabot, action: :ukladka_laminata_cena, only_path: true
    link1 = url_for controller: :vidy_rabot, action: :samovyravnivajushhajasja_stjazhka, only_path: true
    @floor_prices = [
      50,
      30,
      Work.find_by_name("Чистовая <a href='#{link1}' target='_blank'>cтяжка самовыравнивающейся смесью</a> до 5 мм (наливной пол)").price.to_f,
      Work.find_by_name("<a href='#{link}' target='_blank'>Укладка ламината</a>&nbsp;в комнате по прямой + укладка подложки").price.to_f,
      Work.find_by_name('Монтаж плинтуса ПВХ').price.to_f,
      250
    ]
    @floor_volumes = [ 6, 10, 6, 6, 10, 1 ]
    @floor_units = [ "м<sup>2</sup>", "м/п", "м<sup>2</sup>", "м<sup>2</sup>", "м/п", "шт" ]
    @sum_floor_price = 0
    for i in 0...@floor_volumes.size
      @sum_floor_price +=@floor_prices[i]*@floor_volumes[i]
    end

    # Общее
    @sum_price = @sum_wall_price + @sum_roof_price + @sum_floor_price
    @one_meter_price = @sum_price / 6
  end

  def obshivka_balkona_plastikovymi_panelyami_i_vagonkoy
    @title =       "Обшивка и отделка балкона или лоджии пластиковыми панелями"
    @description = "Обшивка балкона пластиковыми панелями ПВХ, стоимость работ"
    @keywords =    "Обшивка балкона пластиковыми панелями ПВХ, стоимость работ"
  end

  def remont_vannoj_komnaty_ceny
    @title =       "Сколько будет стоить ремонт ванной комнаты"
    @description = "Бригада частных мастеров выполнит капитальный ремонт ванной комнаты по доступной стоимости. Работаем в Москве и Подмосковье качественно и быстро. Стоимость ремонта ванной комнаты составит ..."
    @keywords =    "сколько стоит ремонт ванной комнаты, ремонт ванной комнаты стоимость работ"
  end

  def raschet_peskobetona_dlja_stjazhki
    @title =       "Расчёт пескобетона для стяжки пола с подробным примером"
    @description = "Расчет количества пескобетона на стяжку, подробный расчет сухой смеси для стяжки пола"
    @keywords =    "Расчет пескобетона для стяжки пола, расчет смеси для стяжки пола"
  end

  def raschet_keramzita_na_styazhku
    @title =       "Расчет керамзита на стяжку пола"
    @description = "Расчет керамзита для стяжки, толщина слоя и необходимая фракция."
    @keywords =    "Расчет керамзита на стяжку пола"
  end

  def raschet_ploschadi_sten_pod_pokleyku
    @title =       "Расчет площади стен под поклейку обоев"
    @description = "Расчет площади стен под поклейку обоев"
    @keywords =    "Расчет площади стен под поклейку обоев"
  end

  def polipropilenovye_truby
    @title =       "Полипропиленовые трубы в доме - разновидности и характеристики"
    @description = "Полипропиленовые трубы для сантехники являются лучшим решением для дома. Смотрите видео!"
    @keywords =    "Сантехника полипропиленовые трубы"
  end

  def elektricheskij_teplyj_pol_v_kvartire
    @title =       "Электрический теплый пол в квартире - кабельный и пленочный инфракрасный"
    @description = "Выгоды и преимущества установки электрических теплых полов в квартире."
    @keywords =    "Электрический теплый пол в квартире"
  end

  def gidroizoljacija_pola_v_kvartire
    @title =       "Гидроизоляция пола в ванной - смесь Водостоп"
    @description = "Устройство гидроизоляции пола в ванной и душевой комнате смесью Водостоп и её преимущества"
    @keywords =    "гидроизоляция пола в ванной, жидкая обмазочная гидроизоляция"
  end
end
