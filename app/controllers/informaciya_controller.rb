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
      Image.find_by_alt("Стоимость чернового ремонта в новостройке").info_image.url(:thumb),
      Image.find_by_alt("стоимость черновой отделки в новостройке").info_image.url(:thumb),
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
    href = url_for controller: :vidy_rabot, action: :stjazhka_pola_cena, only_path: true
    @floor_prices = [
      Work.find_by_name("<a href='#{href}' target='_blank'>Стяжка пола по маякам</a> до 5 см + монтаж маяков по лазерному уровню").price.to_f,
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
    @sum_wall_price
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
    @sum_electric_price
    # Общее
    @sum_price = @sum_floor_price + @sum_wall_price + @sum_electric_price
    @one_meter_price = @sum_price / 50
  end

  def chernovoj_remont_komfort
    @title =       "Узнайте, сколько стоит черновая отделка в новостройке Комфорт от бригады частных мастеров Ремонтами 7"
    @description = "Выполним черновую отделку квартиры в новостройке категории Комфорт по оптимальной цене. Бригада частных мастеров выполнит работы по цене от 3 801 руб/м2"
    @keywords =    "сколько стоит черновая отделка в новостройке, черновой ремонт Комфорт"
  end

  def remont_kvartiry_standart
    @title =       "Капитальный ремонт квартир под ключ категории Стандарт и цены - бригада частных мастеров"
    @description = "Выполним капитальный ремонт квартиры под ключ категории Стандарт по цене от 4 841 руб/м2. Бригада частных мастеров работает качественно и профессионально!"
    @keywords =    "капитальный ремонт квартир под ключ цены"
  end

  def remont_kvartiry_komfort
    @title =       "Стоимость ремонта квартиры под ключ категории Комфорт и цена за м2 - частная бригада мастеров"
    @description = "Выполним ремонт квартиры под ключ по самым оптимальным ценам. Стоимость ремонта квартиры под ключ категории Комфорт у нашей бригады составит от 6 700 руб/м2"
    @keywords =    "Стоимость ремонта квартиры под ключ цена м2"
  end

  def remont_kvartiry_komfort_pljus
    @title =       "Ремонт квартир под ключ категории Комфорт Плюс и цена - частная бригада"
    @description = "Цена ремонта квартиры под ключ категории Комфорт Плюс при обращении в нашу бригаду составит от 7 273 руб/м2. Работаем профессионально. Москва и МО."
    @keywords =    "ремонт квартир под ключ цена"
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
  end

  def kosmeticheskij_remont_komnaty_ceny
    @title =       "Цены на косметический ремонт комнаты - частные мастера"
    @description = "Бригада частных мастеров выполнит косметический ремонт комнаты по доступным ценам. Работаем профессионально, качественно и быстро."
    @keywords =    "Косметический ремонт комнаты цены, стоимость косметического ремонта комнаты"
  end

  def cena_remonta_koridora
    @title =       "Цена косметического ремонта коридора или прихожей - стоимость работ частного мастера"
    @description = "Цена ремонта прихожей или коридора в квартире складывается из нескольких факторов. Частный мастер выполнит работы в Москве и Подмосковье недорого и качественно."
    @keywords =    "ремонта коридора цена"
  end

  def kosmeticheskij_remont_kuhni_cena
    @title =       "Косметический ремонт кухни и цена - частный мастер бригады Ремонтами 7"
    @description = "Бригада частных мастеров Ремонтами 7 выполнит косметический ремонт кухни, цена которого доступна и выгодна. Посмотреть стоимость косметического ремонта можно на примере расчета для маленькой кухни. У нас работают только опытные специалисты."
    @keywords =    "косметический ремонт кухни цена, ремонт маленькой кухни"
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
