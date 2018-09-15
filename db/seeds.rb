# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Work.create([
  # Пол
  { name: '<a href="/stjazhka-pola-cena">Стяжка пола по маякам</a> до 5 см + монтаж маяков по лазерному уровню',                                           price: 400, unit: "м<sup>2</sup>", plane: "floor" },
  { name: 'Стяжка пола по маякам до 7 см + монтаж маяков по лазерному уровню',                                                                             price: 600, unit: "м<sup>2</sup>", plane: "floor" },
  { name: '<a href="/stjazhka-pola-s-keramzitom">Стяжка пола по маякам (утепленная с керамзитом)</a>&nbsp;более 7 см + монтаж маяков по лазерному уровню', price: 800, unit: "м<sup>2</sup>", plane: "floor" },
  { name: 'Засыпка керамзита',                                                                                                                             price: 60,  unit: "м<sup>2</sup>", plane: "floor" },
  { name: 'Армирование стяжки пола сеткой',                                                                                                                price: 100, unit: "м<sup>2</sup>", plane: "floor" },
  { name: 'Гидроизоляция обмазочная (Водостоп, Гипердесмо)',                                                                                               price: 350, unit: "м<sup>2</sup>", plane: "floor" },
  { name: 'Чистовая <a href="/samovyravnivajushhajasja-stjazhka">cтяжка самовыравнивающейся смесью</a> до 5 мм (наливной пол)',                            price: 180, unit: "м<sup>2</sup>", plane: "floor" },
  { name: 'Грунтовка бетоноконтактом',                                                                                                                     price: 50,  unit: "м<sup>2</sup>", plane: "floor" },
  { name: '<a href="/ukladka-laminata-cena">Укладка ламината</a>&nbsp;в комнате по прямой + укладка подложки',                                             price: 200, unit: "м<sup>2</sup>", plane: "floor" },
  { name: '<a href="/ukladka-parketnoy-doski">Укладка паркетной доски</a>&nbsp;по прямой&nbsp;+ укладка подложки',                                         price: 350, unit: "м<sup>2</sup>", plane: "floor" },
  { name: 'Устройство тепло и звукоизоляции пола',                                                                                                         price: 200, unit: "м<sup>2</sup>", plane: "floor" },
  { name: 'Монтаж плинтуса ПВХ',                                                                                                                           price: 100, unit: "м/п",           plane: "floor" },
  { name: 'Демонтаж старого ламината (без сохранения)',                                                                                                    price: 100, unit: "м<sup>2</sup>", plane: "floor" },
  # Стены
  { name: 'Грунтовка стен после каждого цикла работ (необходима для наилучшего результата)',               price: 40,  unit: "м<sup>2</sup>",                         plane: "wall" },
  { name: 'Штукатурка стен по маякам (толщина слоя до 3 см)',                                              price: 450, unit: "м<sup>2</sup>/м.п.<sup>*</sup>",        plane: "wall" },
  { name: 'Установка маяков по уровню',                                                                    price: 50,  unit: "м<sup>2</sup>",                         plane: "wall" },
  { name: 'Выравнивание штукатурной смесью по плоскости',                                                  price: 300, unit: "м<sup>2</sup>/м.п.<sup>*</sup>",        plane: "wall" },
  { name: 'Штукатурка + грунтовка дверных и оконных откосов с уголками',                                   price: 450, unit: "м.п.",                                  plane: "wall" },
  { name: '<a href="/shpaklevka-sten-pod-oboi-ceny" target="_blank">Шпаклевка стен под обои</a> (2 слоя)', price: 220, unit: "м<sup>2</sup>/м.п.<sup>*</sup>",        plane: "wall" },
  { name: 'Шпаклевка стен под покраску (3 слоя)',                                                          price: 300, unit: "м<sup>2</sup>/м.п.<sup>*</sup>",        plane: "wall" },
  { name: 'Поклейка малярной сетки',                                                                       price: 100, unit: "м<sup>2</sup>",                         plane: "wall" },
  { name: 'Шпаклевка стен финишной шпаклевкой Шитрок',                                                     price: 200, unit: "м<sup>2</sup>",                         plane: "wall" },
  { name: 'Шпаклевка гипсокартона',                                                                        price: 250, unit: "м<sup>2</sup>",                         plane: "wall" },
  { name: 'Шлифовка стен',                                                                                 price: 90,  unit: "м<sup>2</sup>",                         plane: "wall" },
  { name: 'Монтаж перегородки, пеноблоки (до 10 м2)',                                                      price: 550, unit: "м<sup>2</sup>",                         plane: "wall" },
  { name: 'Монтаж перегородки, кирпич 1/2',                                                                price: 650, unit: "м<sup>2</sup>",                         plane: "wall" },
  { name: 'Монтаж перегородки ГКЛ (1 слой)',                                                               price: 390, unit: "м<sup>2</sup>",                         plane: "wall" },
  { name: 'Обшивка стен панелями ПВХ, МДФ',                                                                price: 450, unit: "м<sup>2</sup>",                         plane: "wall" },
  { name: '<a href="/pokleyka-oboev-cena" target="_blank">Поклейка обоев</a> (флизелин, винил)',           price: 220, unit: "м<sup>2</sup>",                         plane: "wall" },
  { name: '<a href="/pokleyka-oboev-pod-pokrasku" target="_blank">Поклейка обоев под покраску</a>',        price: 180, unit: "м<sup>2</sup>",                         plane: "wall" },
  { name: 'Поклейка бумажных обоев',                                                                       price: 200, unit: "м<sup>2</sup>",                         plane: "wall" },
  { name: '<a href="/pokraska-sten-cena" target="_blank">Покраска стен</a> (1 слой/2 слоя/3 слоя)',        price: "90/170/250", unit: "м<sup>2</sup>/м.п.<sup>*</sup>", plane: "wall" },
  { name: 'Покраска обоев',                                                                                price: 170, unit: "м<sup>2</sup>",                         plane: "wall" },
  { name: 'Демонтаж обоев',                                                                                price: 70,  unit: "м<sup>2</sup>",                         plane: "wall" },
  # Потолок
  { name: 'Монтаж реечного потолка',                                      price: 530, unit: "м<sup>2</sup>",                  plane: "roof" },
  { name: 'Грунтовка потолка (1 слой)',                                   price: 50,  unit: "м<sup>2</sup>",                  plane: "roof" },
  { name: 'Выравнивание штукатуркой по маякам',                           price: 520, unit: "м<sup>2</sup>/м.п.<sup>*</sup>", plane: "roof" },
  { name: 'Установка маяков по уровню',                                   price: 50,  unit: "м<sup>2</sup>",                  plane: "roof" },
  { name: 'Шпаклевка потолка под покраску',                               price: 380, unit: "м<sup>2</sup>/м.п.<sup>*</sup>", plane: "roof" },
  { name: 'Покраска потолка (2 слоя)',                                    price: 230, unit: "м<sup>2</sup>/м.п.<sup>*</sup>", plane: "roof" },
  { name: 'Шлифовка потолка',                                             price: 120, unit: "м<sup>2</sup>",                  plane: "roof" },
  { name: 'Поклейка стеклохолста (паутинки) на потолок',                  price: 220, unit: "м<sup>2</sup>",                  plane: "roof" },
  { name: 'Подвесной потолок из ГКЛ (1 уровень)',                         price: 520, unit: "м<sup>2</sup>/м.п.<sup>*</sup>", plane: "roof" },
  { name: 'Подвесной потолок из ГКЛ (многоуровневый)',                    price: 600, unit: "м/п",                            plane: "roof" },
  { name: 'Монтаж ГКЛ с коробом под подсветку',                           price: 800, unit: "м/п",                            plane: "roof" },
  { name: 'Подвесной потолок "Армстронг" 1200х600 (от 10 м<sup>2</sup>)', price: 330, unit: "м<sup>2</sup>",                  plane: "roof" },
  { name: 'Монтаж плинтуса (до 5 см) + шпатлевка + покраска',             price: 250, unit: "м/п",                            plane: "roof" },
  { name: 'Монтаж плинтуса (до 10 см) + шпатлевка + покраска',            price: 300, unit: "м/п",                            plane: "roof" },
  { name: 'Устройство шумоизоляции',                                      price: 250, unit: "м<sup>2</sup>",                  plane: "roof" },
  { name: 'Устройство теплоизоляции',                                     price: 250, unit: "м<sup>2</sup>",                  plane: "roof" },
  # Кафельная, керамическая плитка (пол, стены)
  { name: '<a href="/ukladka-plitki">Укладка плитки</a> 20х30, 20х40, 30х40',                                         price: 900,          unit: "м<sup>2</sup>", plane: "tile" },
  { name: '<a href="/ukladka-keramogranita-cena">Укладка керамогранита</a>&nbsp;на пол&nbsp;(кухня, прихожая и пр.)', price: 1000,         unit: "м<sup>2</sup>", plane: "tile" },
  { name: 'Монтаж кухонного фартука',                                                                                 price: "договорная", unit: "комплект",      plane: "tile" },
  { name: 'Обработка стен составом "антиплесень"',                                                                    price: 60,           unit: "м<sup>2</sup>", plane: "tile" },
  { name: 'Затирка швов плитки 20х30, 20х40, 30х30, 40х40 (пол, стены)',                                              price: 90,           unit: "м<sup>2</sup>", plane: "tile" },
  # Сантехнические работы
  { name: 'Разводка труб (полипропилен)',               price: 3900, unit: "точка", plane: "plumbing" },
  { name: 'Штробление под прокладку труб',              price: 380,  unit: "м/п",   plane: "plumbing" },
  { name: 'Установка водорозетки, крана',               price: 280,  unit: "шт",    plane: "plumbing" },
  { name: 'Установка полотенцесушителя',                price: 2500, unit: "шт",    plane: "plumbing" },
  { name: 'Установка радиатора отопления (без сборки)', price: 3300, unit: "шт",    plane: "plumbing" },
  { name: 'Установка ванной',                           price: 3500, unit: "шт",    plane: "plumbing" },
  { name: 'Установка унитаза',                          price: 2000, unit: "шт",    plane: "plumbing" },
  { name: 'Установка смесителя',                        price: 1500, unit: "шт",    plane: "plumbing" },
  { name: 'Установка водонагревателя (бойлера)',        price: 2500, unit: "шт",    plane: "plumbing" },
  { name: 'Установка стиральной машины',                price: 2200, unit: "шт",    plane: "plumbing" },
  # Электрика
  { name: 'Электромонтаж (розетка, выключатель, освещение)',     price: 450,   unit: "точка",         plane: "electric" },
  { name: 'Штробление под кабель в кирпиче, штукатурке, блоках', price: 200,   unit: "м/п",           plane: "electric" },
  { name: 'Установка розетки, выключателя',                      price: 100,   unit: "шт",            plane: "electric" },
  { name: 'Монтаж проходного выключателя',                       price: 250,   unit: "шт",            plane: "electric" },
  { name: 'Монтаж светильника (потолок)',                        price: 600,   unit: "шт",            plane: "electric" },
  { name: 'Монтаж светильника (настенное бра)',                  price: 500,   unit: "шт",            plane: "electric" },
  { name: 'Монтаж светильника точечного',                        price: 250,   unit: "шт",            plane: "electric" },
  { name: 'Монтаж люстры на потолок',                            price: 1000,  unit: "шт",            plane: "electric" },
  { name: 'Прокладка кабеля',                                    price: 50,    unit: "м/п",           plane: "electric" },
  { name: 'Теплый пол с установкой терморегулятора',             price: 800,   unit: "м<sup>2</sup>", plane: "electric" },
  { name: 'Устройство слаботочного щитка',                       price: 3000,  unit: "шт",            plane: "electric" },
  { name: 'Устройство эл. щитка с автоматами 12',                price: 5500,  unit: "шт",            plane: "electric" },
  { name: 'Устройство эл. щитка с автоматами 18',                price: 8300,  unit: "шт",            plane: "electric" },
  { name: 'Устройство эл. щитка с автоматами 24',                price: 11000, unit: "шт",            plane: "electric" },
  { name: 'Устройство эл. щитка с автоматами 36',                price: 16500, unit: "шт",            plane: "electric" },
  # Дополнительные работы
  { name: 'Подъем стройматериалов на этаж (не более 40 кг)',     price: 50, unit: "мешок", plane: "extra" },
  { name: 'Вынос мусора на улицу',                               price: 50, unit: "мешок", plane: "extra" }
])

# Статьи в информации
infos = Info.create([
  {
    link: "chernovoj-remont-standart",
    title: "Черновой ремонт в новостройке категории Стандарт и стоимость - бригада частных мастеров",
    description: "Бригада частных мастеров сделает черновой ремонт квартиры в новостройке по выгодной цене. Стоимость чернового ремонта категории Стандарт в новостройке составляет от 2 598 руб/м2",
    keywords: "стоимость чернового ремонта в новостройке",
    name: "Стоимость работ по черновому ремонту категории Стандарт",
    body: ''
  },
  {
    link: "chernovoj-remont-komfort",
    title: "Узнайте, сколько стоит черновая отделка в новостройке Комфорт от бригады частных мастеров Ремонтами 7",
    description: "Выполним черновую отделку квартиры в новостройке категории Комфорт по оптимальной цене. Бригада частных мастеров выполнит работы по цене от 3 801 руб/м2",
    keywords: "сколько стоит черновая отделка в новостройке, черновой ремонт Комфорт",
    name: "Стоимость работ по черновой отделке категории Комфорт",
    body: ''
  },
  {
    link: "remont-kvartiry-standart",
    title: "Капитальный ремонт квартир под ключ категории Стандарт и цены - бригада частных мастеров",
    description: "Выполним капитальный ремонт квартиры под ключ категории Стандарт по цене от 4 841 руб/м2. Бригада частных мастеров работает качественно и профессионально!",
    keywords: "капитальный ремонт квартир под ключ цены",
    name: "Стоимость работ по ремонту квартиры Стандарт (капитальный ремонт квартиры минимум)",
    body: ''
  },
  {
    link: "remont-kvartiry-komfort",
    title: "Стоимость ремонта квартиры под ключ категории Комфорт и цена за м2 - частная бригада мастеров",
    description: "Выполним ремонт квартиры под ключ по самым оптимальным ценам. Стоимость ремонта квартиры под ключ категории Комфорт у нашей бригады составит от 6 700 руб/м2",
    keywords: "Стоимость ремонта квартиры под ключ цена м2",
    name: "Стоимость работ по ремонту квартиры Комфорт (ремонт под ключ оптимальный)",
    body: ''
  },
  {
    link: "remont-kvartiry-komfort-pljus",
    title: "Ремонт квартир под ключ категории Комфорт Плюс и цена - частная бригада",
    description: "Цена ремонта квартиры под ключ категории Комфорт Плюс при обращении в нашу бригаду составит от 7 273 руб/м2. Работаем профессионально. Москва и МО.",
    keywords: "ремонт квартир под ключ цена",
    name: "Стоимость работ по ремонту квартиры Комфорт Плюс (ремонт под ключ с плюсом!)",
    body: ''
  },
  {
    link: "remont-kvartiry-premium",
    title: "Стоимость евроремонта Премиум за квадратный метр",
    description: "Бригада частных мастеров выполнит высококлассный евроремонт категории Премиум в Москве и Подмосковье. Стоимость евроремонта квартиры составит от 12 000 руб/м2.",
    keywords: "стоимость евроремонта за квадратный метр",
    name: "Перечень и стоимость работ по ремонту категории Премиум (евроремонт под ключ)",
    body: ''
  },
  {
    link: "remont-kvartiry-jekonom",
    title: "Косметический ремонт квартиры Эконом в Москве МО и цены на работу от частных мастеров бригады Ремонтами 7",
    description: "Бригада Ремонтами 7 выполнит косметический ремонт квартиры категории Эконом в Москве и Подмосковье по низким ценам. Цены на косметический ремонт категории Эконом позволят отремонтировать квартиру недорого и составляют от 2 800 руб/м2",
    keywords: "косметический ремонт квартир цены",
    name: "Стоимость работ по ремонту квартиры Эконом (косметический ремонт квартиры)",
    body: ''
  },
  {
    link: "kosmeticheskij-remont-komnaty-ceny",
    title: "Цены на косметический ремонт комнаты - частные мастера",
    description: "Бригада частных мастеров выполнит косметический ремонт комнаты по доступным ценам. Работаем профессионально, качественно и быстро.",
    keywords: "Косметический ремонт комнаты цены, стоимость косметического ремонта комнаты",
    name: "Цена косметического ремонта комнат",
    body: ''
  },
  {
    link: "cena-remonta-koridora",
    title: "Цена косметического ремонта коридора или прихожей - стоимость работ частного мастера",
    description: "Цена ремонта прихожей или коридора в квартире складывается из нескольких факторов. Частный мастер выполнит работы в Москве и Подмосковье недорого и качественно.",
    keywords: "ремонта коридора цена",
    name: "Цена косметического ремонта прихожей в квартире",
    body: ''
  },
  {
    link: "kosmeticheskij-remont-kuhni-cena",
    title: "Косметический ремонт кухни и цена - частный мастер бригады Ремонтами 7",
    description: "Бригада частных мастеров Ремонтами 7 выполнит косметический ремонт кухни, цена которого доступна и выгодна. Посмотреть стоимость косметического ремонта можно на примере расчета для маленькой кухни. У нас работают только опытные специалисты.",
    keywords: "косметический ремонт кухни цена, ремонт маленькой кухни",
    name: "Цена косметического ремонта кухни",
    body: ''
  },
  {
    link: "obshivka-balkona-plastikovymi-panelyami-i-vagonkoy",
    title: "Обшивка и отделка балкона или лоджии пластиковыми панелями",
    description: "Обшивка балкона пластиковыми панелями ПВХ, стоимость работ",
    keywords: "Обшивка балкона пластиковыми панелями ПВХ, стоимость работ",
    name: "Цена на обшивку балкона (лоджии) пластиковыми панелями ПВХ, панелями МДФ и вагонкой",
    body: ''
  },
  {
    link: "remont-vannoj-komnaty-ceny",
    title: "Сколько будет стоить ремонт ванной комнаты",
    description: "Бригада частных мастеров выполнит капитальный ремонт ванной комнаты по доступной стоимости. Работаем в Москве и Подмосковье качественно и быстро. Стоимость ремонта ванной комнаты составит ...",
    keywords: "сколько стоит ремонт ванной комнаты, ремонт ванной комнаты стоимость работ",
    name: "Капитальный ремонт ванной комнаты - стоимость работ",
    body: ''
  },
  {
    link: "raschet-peskobetona-dlja-stjazhki",
    title: "Расчёт пескобетона для стяжки пола с подробным примером",
    description: "Расчет количества пескобетона на стяжку, подробный расчет сухой смеси для стяжки пола",
    keywords: "Расчет пескобетона для стяжки пола, расчет смеси для стяжки пола",
    name: "Расчет количества сухой смеси для стяжки пола",
    body: ''
  },
  {
    link: "raschet-keramzita-na-styazhku",
    title: "Расчет керамзита на стяжку пола",
    description: "Расчет керамзита для стяжки, толщина слоя и необходимая фракция.",
    keywords: "Расчет керамзита на стяжку пола",
    name: "Расчет керамзита для стяжки пола",
    body: ''
  },
  {
    link: "raschet-ploschadi-sten-pod-pokleyku",
    title: "Расчет площади стен под поклейку обоев",
    description: "Расчет площади стен под поклейку обоев",
    keywords: "Расчет площади стен под поклейку обоев",
    name: "Расчет площади стен для поклейки обоев",
    body: ''
  },
  {
    link: "polipropilenovye-truby",
    title: "Полипропиленовые трубы в доме - разновидности и характеристики",
    description: "Полипропиленовые трубы для сантехники являются лучшим решением для дома. Смотрите видео!",
    keywords: "Сантехника полипропиленовые трубы",
    name: "Полипропиленовые трубы",
    body: ''
  },
  {
    link: "elektricheskij-teplyj-pol-v-kvartire",
    title: "Электрический теплый пол в квартире - кабельный и пленочный инфракрасный",
    description: "Выгоды и преимущества установки электрических теплых полов в квартире.",
    keywords: "Электрический теплый пол в квартире",
    name: "Теплый пол",
    body: ''
  },
  {
    link: "gidroizoljacija-pola-v-kvartire",
    title: "Гидроизоляция пола в ванной - смесь Водостоп",
    description: "Устройство гидроизоляции пола в ванной и душевой комнате смесью Водостоп и её преимущества",
    keywords: "гидроизоляция пола в ванной, жидкая обмазочная гидроизоляция",
    name: 'Гидроизоляция пола обмазочная "Водостоп"',
    body: ''
  }
])
# Тестовая галерея
testGallery = Gallery.create( title: 'Test gallery title', alt: 'Test gallery alt')
image_background = File.open(File.join(Rails.root, '/app/assets/images/background/background.jpg'))
image_logo =       File.open(File.join(Rails.root, '/app/assets/images/logo/logo.png'))

gallery1 = File.open(File.join(Rails.root, '/app/assets/images/galleries/2018-05-12-210033_1280x1024_scrot.png'))
gallery2 = File.open(File.join(Rails.root, '/app/assets/images/galleries/2018-05-12-205959_1280x1024_scrot.png'))

info_images = {
  "1_1" =>  File.open(File.join(Rails.root, '/app/assets/images/infos/1_1.jpg')),
  "1_2" =>  File.open(File.join(Rails.root, '/app/assets/images/infos/1_2.jpg')),
  "2_1" =>  File.open(File.join(Rails.root, '/app/assets/images/infos/2_1.jpg')),
  "2_2" =>  File.open(File.join(Rails.root, '/app/assets/images/infos/2_2.jpg')),
  "3_1" =>  File.open(File.join(Rails.root, '/app/assets/images/infos/3_1.jpg')),
  "4_1" =>  File.open(File.join(Rails.root, '/app/assets/images/infos/4_1.jpg')),
  "5_1" =>  File.open(File.join(Rails.root, '/app/assets/images/infos/5_1.jpg')),
  "6_1" =>  File.open(File.join(Rails.root, '/app/assets/images/infos/6_1.jpg')),
  "7_1" =>  File.open(File.join(Rails.root, '/app/assets/images/infos/7_1.jpg')),
  "8_1" =>  File.open(File.join(Rails.root, '/app/assets/images/infos/8_1.jpg')),
  "9_1" =>  File.open(File.join(Rails.root, '/app/assets/images/infos/9_1.jpg')),
  "9_2" =>  File.open(File.join(Rails.root, '/app/assets/images/infos/9_2.jpg')),
  "10_1" => File.open(File.join(Rails.root, '/app/assets/images/infos/10_1.jpg')),
  "11_1" => File.open(File.join(Rails.root, '/app/assets/images/infos/11_1.jpg')),
  "11_2" => File.open(File.join(Rails.root, '/app/assets/images/infos/11_2.jpg')),
  "11_3" => File.open(File.join(Rails.root, '/app/assets/images/infos/11_3.jpg')),
  "12_1" => File.open(File.join(Rails.root, '/app/assets/images/infos/12_1.jpg')),
  "13_1" => File.open(File.join(Rails.root, '/app/assets/images/infos/13_1.jpg')),
  "14_1" => File.open(File.join(Rails.root, '/app/assets/images/infos/14_1.jpg')),
  "14_2" => File.open(File.join(Rails.root, '/app/assets/images/infos/14_2.jpg')),
  "17_1" => File.open(File.join(Rails.root, '/app/assets/images/infos/17_1.jpg')),
  "17_2" => File.open(File.join(Rails.root, '/app/assets/images/infos/17_2.jpg')),
  "17_3" => File.open(File.join(Rails.root, '/app/assets/images/infos/17_3.png')),
  "18_1" => File.open(File.join(Rails.root, '/app/assets/images/infos/18_1.jpg'))
}

Image.create([
  # Background
  { title: "background", alt: "background", background: image_background },
  # Logo
  { title: "logo", alt: "logo", logo: image_logo },
  # Gallery
  { title: 'Test gallery image title 1', alt: 'Test gallery image alt 1', gallery: testGallery, gallery_image: gallery1, gallery_cover: true },
  { title: 'Test gallery image title 2', alt: 'Test gallery image alt 2', gallery: testGallery, gallery_image: gallery2 },
  # Info
  { title: '',                                                                         alt: 'Стоимость чернового ремонта в новостройке',                                                            info: infos[0],  info_image: info_images["1_1"] },
  { title: '',                                                                         alt: 'stoimost-chernovogo-remonta',                                                                          info: infos[0],  info_image: info_images["1_2"] },
  { title: 'стоимость черновой отделки Комфорт в новостройке',                         alt: 'стоимость черновой отделки в новостройке',                                                             info: infos[1],  info_image: info_images["2_1"] },
  { title: 'стоимость черновой отделки в новостройках Москвы',                         alt: 'stoimost-chernovoy-otdelki',                                                                           info: infos[1],  info_image: info_images["2_2"] },
  { title: 'капитальный ремонт квартир под ключ и цены',                               alt: 'расчет стоимости работ по капитальному ремонту квартир под ключ категории Стандарт',                   info: infos[2],  info_image: info_images["3_1"] },
  { title: 'стоимость ремонта квартиры под ключ Комфорт',                              alt: 'Расчет стоимости ремонта квартиры под ключ категории Комфорт',                                         info: infos[3],  info_image: info_images["4_1"] },
  { title: 'ремонт квартир под ключ цена Комфорт Плюс',                                alt: 'Расчет цены ремонта под ключ категории Комфорт Плюс',                                                  info: infos[4],  info_image: info_images["5_1"] },
  { title: 'стоимость евроремонта за квадратный метр',                                 alt: 'Расчет стоимости евроремонта категории Премиум в Москве за квадратный метр',                           info: infos[5],  info_image: info_images["6_1"] },
  { title: 'Пример расчета стоимости косметического ремонта квартир категории Эконом', alt: 'kosmeticheskiy-remont-kvartir-ceny',                                                                   info: infos[6],  info_image: info_images["7_1"] },
  { title: 'Пример выполненного косметического ремонта комнаты по доступной цене',     alt: 'косметический ремонт комнаты цены',                                                                    info: infos[7],  info_image: info_images["8_1"] },
  { title: 'цена ремонта коридора',                                                    alt: 'remont-koridora-cena',                                                                                 info: infos[8],  info_image: info_images["9_1"] },
  { title: 'стоимость косметического ремонта прихожей',                                alt: 'stoimost-remonta-prihozhey',                                                                           info: infos[8],  info_image: info_images["9_2"] },
  { title: 'косметический ремонт кухни по оптимальной цене',                           alt: 'remont-kuhni-cena',                                                                                    info: infos[9],  info_image: info_images["10_1"] },
  { title: '',                                                                         alt: 'пластиковые панели под дерево на балконе',                                                             info: infos[10], info_image: info_images["11_1"] },
  { title: '',                                                                         alt: 'красивая отделка балкона панелями ПВХ',                                                                info: infos[10], info_image: info_images["11_2"] },
  { title: '',                                                                         alt: 'балкон пластиковыми панелями',                                                                         info: infos[10], info_image: info_images["11_3"] },
  { title: 'сколько стоит ремонт ванной комнаты',                                      alt: 'Пример готовой работы частных мастеров по капитальному ремонту ванной комнаты по доступной стоимости', info: infos[11], info_image: info_images["12_1"] },
  { title: 'расчет пескобетона для стяжки пола',                                       alt: 'Пример расчета пескобетона для стяжки',                                                                info: infos[12], info_image: info_images["13_1"] },
  { title: '',                                                                         alt: 'стяжка_с_керамзитом_по_уровню.jpg',                                                                    info: infos[13], info_image: info_images["14_1"] },
  { title: '',                                                                         alt: 'keramzit',                                                                                             info: infos[13], info_image: info_images["14_2"] },
  { title: 'теплый электрический пол, расположенный в квартире',                       alt: 'пример укладки теплого электрического пола в квартире',                                                info: infos[16], info_image: info_images["17_1"] },
  { title: 'прогрев воздуха',                                                          alt: 'схема прогревания воздуха в комнате с системой теплый пол',                                            info: infos[16], info_image: info_images["17_2"] },
  { title: 'инфракрасный пленочный пол',                                               alt: 'пример работы мастера по устройству инфракрасного пленочного теплого пол',                             info: infos[16], info_image: info_images["17_3"] },
  { title: 'гидроизоляция в ванной',                                                   alt: 'Готовая обмазочная гидроизоляция в ванной комнате',                                                    info: infos[17], info_image: info_images["18_1"] }
])

Contact.create(
  name: "Ваган",
  phone: "8 (985) 094-27-61",
  email: "info@remontami7.ru"
)
