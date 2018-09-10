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

# Тестовая галерея
Test_Gallery = Gallery.create( title: 'Test gallery title', alt: 'Test gallery alt')

image_background = File.open(File.join(Rails.root, '/app/assets/images/images/backgrounds/background.jpg'))
image_logo =       File.open(File.join(Rails.root, '/app/assets/images/images/logos/logo.png'))
gallery_image1 =   File.open(File.join(Rails.root, '/app/assets/images/images/gallery_images/2018-05-12-210033_1280x1024_scrot.png'))
gallery_image2 =   File.open(File.join(Rails.root, '/app/assets/images/images/gallery_images/2018-05-12-205959_1280x1024_scrot.png'))
Image.create([
  # Background
  { title: "background", alt: "background", background: image_background },
  # Logo
  { title: "logo", alt: "logo", logo: image_logo },
  # Gallery
  { title: 'Test gallery image title 1', alt: 'Test gallery image alt 1', gallery: Test_Gallery, gallery_image: gallery_image1, gallery_cover: true },
  { title: 'Test gallery image title 2', alt: 'Test gallery image alt 2', gallery: Test_Gallery, gallery_image: gallery_image2 }
])

Contact.create(
  name: "Ваган",
  phone: "8 (985) 094-27-61",
  email: "info@remontami7.ru"
)

Info.create([
  {
    link: "chernovoj-remont-standart",
    title: "Черновой ремонт в новостройке категории Стандарт и стоимость - бригада частных мастеров",
    description: "Бригада частных мастеров сделает черновой ремонт квартиры в новостройке по выгодной цене. Стоимость чернового ремонта категории Стандарт в новостройке составляет от 2 598 руб/м2",
    keywords: "стоимость чернового ремонта в новостройке",
    name: "Стоимость чернового ремонта в новостройке",
    body: '
      <p><img alt="Стоимость чернового ремонта в новостройке" src="/d/649707/d/3472025606_5.jpg" style="border-width: 0px; float: right; margin: 5px;" width="180" height="118">Мы понимаем, что для Вас очень важно просчитать все затраты на проведение чернового ремонта квартиры. Именно поэтому у нас стоимость чернового ремонта в новостройке&nbsp;категории&nbsp;<span style="font-size: 11pt; color: #800000;">Стандарт</span> совершенно прозрачна и не содержит скрытых пунктов для дополнительных расходов.</p>
      <div class="for-mobile-view"><table class="table1" style="width: 100%; height: 300px;" border="0" align="center"><caption><strong>Квартира площадью 50 м<sup>2</sup>,&nbsp;санузел стандартный 3,5 м<sup>2</sup></strong></caption>
      <tbody>
      <tr>
      <td style="text-align: center; width: 60%;">Вид работ</td>
      <td style="text-align: center;">Объём работ</td>
      <td style="text-align: center;">Цена, руб</td>
      <td style="text-align: center; width: 20%;">Сумма, руб</td>
      </tr>
      <tr>
      <td colspan="4" style="background-color: #ffe4b5; height: 2px;"></td>
      </tr>
      <tr>
      <td colspan="4" style="text-align: center;"><strong><em>Пол (стяжка)</em></strong></td>
      </tr>
      <tr style="height: 10px;">
      <td>Стяжка пола по маякам (до 5 см)</td>
      <td>50 м<sup>2</sup></td>
      <td>400</td>
      <td>20 000</td>
      </tr>
      <tr style="height: 10px;">
      <td>Установка маяков по лазерному уровню</td>
      <td>50 м<sup>2</sup></td>
      <td>50</td>
      <td>2 500</td>
      </tr>
      <tr style="height: 10px;">
      <td>Грунтовка составом "Бетоконтакт"</td>
      <td>50</td>
      <td>50</td>
      <td>2 500</td>
      </tr>
      <tr>
      <td colspan="3" style="text-align: right;"><strong>ИТОГО</strong>:</td>
      <td><strong>&nbsp;25 000</strong></td>
      </tr>
      <tr>
      <td colspan="4" style="text-align: right; background-color: #ffe4b5; height: 2px;"></td>
      </tr>
      <tr>
      <td colspan="4" style="text-align: center;"><em><strong>Выравнивание стен</strong></em></td>
      </tr>
      <tr>
      <td>Грунтовка стен под штукатурку</td>
      <td>138м<sup>2</sup></td>
      <td>50</td>
      <td>6 900</td>
      </tr>
      <tr>
      <td>Установка маяков по лазерному уровню</td>
      <td>138 м<sup>2</sup></td>
      <td>50</td>
      <td>6 900</td>
      </tr>
      <tr>
      <td>Штукатурка стен по маякам (толщина слоя до 3 см)</td>
      <td>138 м<sup>2</sup></td>
      <td>470</td>
      <td>64 860</td>
      </tr>
      <tr>
      <td>Шлифовка после оштукатуривания</td>
      <td>138 м<sup>2</sup></td>
      <td>90</td>
      <td>12 420</td>
      </tr>
      <tr>
      <td>Грунтовка дверных откосов</td>
      <td>12 м/п</td>
      <td>50</td>
      <td>600</td>
      </tr>
      <tr>
      <td>Штукатурка откосов (дверные) по уголкам</td>
      <td>12 м/п<sup><br></sup></td>
      <td>500</td>
      <td>5 000</td>
      </tr>
      <tr>
      <td>Шлифовка откосов</td>
      <td>12 м/л</td>
      <td>90</td>
      <td>1 080</td>
      </tr>
      <tr>
      <td colspan="3" style="text-align: right;"><strong>ИТОГО:</strong></td>
      <td><strong>97 760</strong></td>
      </tr>
      <tr>
      <td colspan="4" style="text-align: right; height: 2px; background-color: #ffe4b5;"></td>
      </tr>
      <tr>
      <td colspan="4" style="text-align: center;"><em><strong>Электрика</strong></em></td>
      </tr>
      <tr>
      <td>Прокладка кабеля</td>
      <td>300 м/п</td>
      <td>50</td>
      <td>15 000</td>
      </tr>
      <tr>
      <td>Штробление под прокладку кабеля</td>
      <td>16 м/п</td>
      <td>200</td>
      <td>3 200</td>
      </tr>
      <tr>
      <td colspan="3" style="text-align: right;"><strong>ИТОГО:</strong></td>
      <td><strong>18 200</strong></td>
      </tr>
      <tr>
      <td colspan="4" style="text-align: center; background-color: #ffe4b5; height: 2px;"></td>
      </tr>
      <tr>
      <td colspan="3" style="background-color: #fafad2; text-align: right;"><strong>Всего работ на сумму:&nbsp;</strong></td>
      <td style="background-color: #fafad2;"><strong>140 960&nbsp;руб</strong></td>
      </tr>
      <tr>
      <td colspan="4" style="text-align: center;"><span style="color: #ff0000;"><strong>Цена за 1 м</strong><sup><strong>2</strong></sup></span><strong>&nbsp;</strong>по&nbsp;квартире (140 960 руб/50 м<sup>2</sup>) равна <strong><span style="color: #ff0000;">2 820<sup>*</sup></span>&nbsp;руб/м<sup>2</sup></strong></td>
      </tr>
      </tbody>
      </table></div>
      <p><span style="color: #993300;"><em>Внимание! Скидки на определенные виды работ определяются после осмотра места работ мастером. <strong>Выезд мастера бесплатно! </strong>Стоимость работ по черновому ремонту в новостройке будет неизменна до окончания работ.</em></span></p>
      <p>Посмотрите для сравнения <a href="/chernovoj-remont-komfort" target="_blank">черновой ремонт Комфорт</a>&nbsp;</p>
      <p><span style="color: #ff0000;"><sup>*&nbsp;</sup></span>Цена чернового ремонта квартиры не всегда рассчитывается исходя из стоимости 1 кв.метра и зависит от множества факторов. Точная оценка стоимости ремонта производится при составлении сметы (с подробным описанием всех работ, в т.ч. скрытых) и спецификации материалов. На весь период ремонта цены на работы, указанные в смете, фиксируются и пересмотру не подлежат. Ориентировочную итоговую стоимость интресующих работ может назвать мастер.</p>
      <p><a href="/d/649707/d/stoimost-chernovogo-remonta.jpg" class="highslide" onclick="return hs.expand(this)"><img alt="stoimost-chernovogo-remonta" src="/thumb/Me0celpOoYi0npIpkHtBEw/360r300/649707/stoimost-chernovogo-remonta.jpg" style="border-width: 0px; float: left; margin: 5px;" width="360" height="270"></a>Наш специалист обладает огромным опытом в выполнении черновых работ в новостройках и подскажет, какие работы требуется выполнить в обязательном порядке, так как они будут основой для выполнения дальнейшей качественной чистовой отделки квартиры, а какие не обязательно или можно сделать позже.&nbsp;</p>
      <p>Бригада частных мастеров Ремонтами 7 сделает недорогой и качественный черновой ремонт в новостройке, стоимость которого зависит от тех строительных материалов, которые будут приобретены. При необходимости мы всегда можем порекомендовать лучший строительный материал и необходимый объем. Мы имеем долгосрочные и выгодные контакты на приобретение качественных строительных материалов со скидками!&nbsp;</p>
      <hr>
      <p><span style="font-size: 12pt;"><em>Помните, что черновая отделка квартиры - крайне важный этап, именно он фундамент и залог качественной отделки!</em></span></p>
      <hr>
      <p>Смотрите также:</p>
      <div class="for-mobile-view"><table class="table0" style="width: 100%;" border="0" align="center">
      <tbody>
      <tr align="center">
      <td><a href="/shtukaturka-shpaklevka-sten-pod-pokrasku-cena"><img alt="shtukaturka-sten-i-vyravnivanie" src="/thumb/M7w31nWMeayLxwpz3pKrSA/180r160/649707/shtukaturka-sten-i-vyravnivanie.jpg" style="border-width: 0;" width="200" height="150"></a></td>
      <td><a href="/samovyravnivajushhajasja-stjazhka"><img alt="самовыравнивающаяся стяжка" src="/thumb/pYwEfkrqreDk1kehQqzSpg/180r160/649707/самовыравнивающаяся_стяжка.jpg" style="border-width: 0;" width="200" height="150"></a></td>
      <td><a href="/pokraska-potolka-cena"><img alt="pokraska-potolka-vodoemulsionnoy-kraskoy" src="/thumb/Pg7j3VQugMGxAlGYYVOHUA/180r160/649707/pokraska-potolka-vodoemulsionnoy-kraskoy.jpg" style="border-width: 0;" width="200" height="150"></a></td>
      </tr>
      <tr align="center">
      <td><em>Штуркатурка под покраску</em></td>
      <td><em>Самовыравнивающаяся стяжка</em></td>
      <td><em>Покраска потолка</em></td>
      </tr>
      </tbody>
      </table></div>'
    }
    
])
