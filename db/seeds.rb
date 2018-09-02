# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Test_Gallery = Gallery.create( title: 'Test gallery title', alt: 'Test gallery alt')
Test_Gallery_Image = GalleryImage.create(title: 'Test gallery image title', alt: 'Test gallery image alt', gallery: Test_Gallery )

works = Work.create([
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
  { name: '<a href="/pokraska-sten-cena" target="_blank">Покраска стен</a> (1 слой/2 слоя/3 слоя)',        price: 90/170/250, unit: "м<sup>2</sup>/м.п.<sup>*</sup>", plane: "wall" },
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

image_background = File.open(File.join(Rails.root, '/app/assets/images/images/background.jpg'))
image_logo = File.open(File.join(Rails.root, '/app/assets/images/images/logo.png'))
images = Image.create([
  # Background
  { title: "background", alt: "background", image: image_background },
  # Logo
  { title: "logo", alt: "logo", image: image_logo }
])
