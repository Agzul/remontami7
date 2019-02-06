######################### Главные переменные ###################################
# КОЛИЧЕСТВО ГАЛЕРЕЙ (С ЕДЕНИЦЫ!)
GALLERY_NUMBERS = 16
################################################################################
# КОЛИЧЕСТВО ВИДОВ РЕМОНТА (С ЕДЕНИЦЫ!)
VIDY_REMONTA_NUMBERS = 16
########################## Получение изображений ###############################
# Фон, лого, слоган
image_background = File.open(File.join(Rails.root, '/app/assets/images/background/background.jpg'))
image_logo =       File.open(File.join(Rails.root, '/app/assets/images/logo/logo.png'))
image_tagline =    File.open(File.join(Rails.root, '/app/assets/images/tagline/slog.png'))
# Галерея
gallery_images = Array.new(GALLERY_NUMBERS){ Array.new }
gallery_titles = [
  "Установка дверей",
  "Укладка керамогранита",
  "Укладка декоративного кирпича",
  "Электрика",
  "Шпаклевка",
  "Покраска стен",
  "Наливной пол",
  "Укладка ламината",
  "Укладка паркета",
  "Косметический ремонт комнаты",
  "Поклейка обоев",
  "Частичный ремонт квартиры",
  "Ремонт детской комнаты",
  "Стяжка пола",
  "Укладка плитки",
  "Монтаж пластиковых панелей"
]
for i in 0...GALLERY_NUMBERS
  if File.file? File.join(Rails.root, "/app/assets/images/galleries/#{i+1}_1.jpg")
    j=0
    loop do
      if File.file? File.join(Rails.root, "/app/assets/images/galleries/#{i+1}_#{j+1}.jpg")
        gallery_images[i][j] = File.open(File.join(Rails.root, "/app/assets/images/galleries/#{i+1}_#{j+1}.jpg"))
        j+=1
      else
        break
      end
    end
  end
end
# Контакты
static_pages_images_contacts = []
for i in 0...4
  if File.file? File.join(Rails.root, "/app/assets/images/static_pages/contacts/#{i}.png")
    static_pages_images_contacts[i] = File.open(File.join(Rails.root, "/app/assets/images/static_pages/contacts/#{i}.png"))
  elsif File.file? File.join(Rails.root, "/app/assets/images/static_pages/contacts/#{i}.jpg")
    static_pages_images_contacts[i] = File.open(File.join(Rails.root, "/app/assets/images/static_pages/contacts/#{i}.jpg"))
  end
end
# Информация
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
# Слайдер
slider = Slider.create
slider_images = [
  File.open(File.join(Rails.root, '/app/assets/images/sliders/shpaklevka-sten-i-cena-rabot.jpg')),
  File.open(File.join(Rails.root, '/app/assets/images/sliders/ukladka-laminata-cena.jpg')),
  File.open(File.join(Rails.root, '/app/assets/images/sliders/cementno-peschanaya-styazhka-pola.jpg')),
  File.open(File.join(Rails.root, '/app/assets/images/sliders/master-po-pokleyke-oboev.jpg')),
  File.open(File.join(Rails.root, '/app/assets/images/sliders/pokraska-sten.jpg')),
  File.open(File.join(Rails.root, '/app/assets/images/sliders/samovyravnivayuschayasya-styazhka-pola.jpg'))
]
# Виды ремонта
vidy_remonta_titles = [
  "Пример готовой работы по евроремонту квартир под ключ",
  "Пример выполненных работ по евроремонту квартиры в Москве на Варшавском шоссе",
  "евроремонт однокомнатной квартиры под ключ в Москве, частная бригада",
  "капитальный ремонт квартир в Москве",
  "пример работы косметического ремонта квартир в Москве",
  "косметический ремонт квартир в Москве от частных мастеров",
  "косметический ремонт квартир под ключ в Москве",
  "ремонт квартир под ключ в Москве, недорого выполненный бригадой частных мастеров",
  "фото работ по ремонту квартир под ключ",
  "комплексный ремонт квартир в Москве, бригада частных мастеров",
  "комплексный ремонт квартиры в Москве и Подмосковье, выполняет частная бригада мастеров",
  "фото квартиры в новостройке Подмосковья, требующей ремонт по средней стоимости",
  "ремонт квартир в новостройке Московской области, недорого выполненный с соблюдением всего перечня работ",
  "",
  "",
  "частичный ремонт квартир, фрагмент работы",
  "частичный ремонт квартиры в Москве",
  "",
  "косметический ремонт комнаты, сделанный в квартире Москвы",
  "пример готовой работы по ремонту кухни 6 кв.м, сделанному частным мастером",
  "фото готовой работы по ремонту малогабаритной кухни площадью 6 кв.м",
  "На фото процесс выполнения ремонта на кухне в Москве",
  "пример сделанного ремонта коридора под ключ в Москве, частный мастер",
  "ремонт прихожей в хрущёвке с функциональной мебелью",
  "пример выполненных работ по ремонту прихожей в панельном доме в Москве",
  "Пример готовой работы по капитальному ремонту ванной комнаты в Москве недорого",
  "Фото готовой работы частных мастеров по ремонту ванной комнаты",
  "ремонт гостиной в Москве, пример работы частного мастера",
  "ремонт гостиной в хрущевке Москвы, который выполнил частный мастер по разумным ценам",
  "ремонт в спальне в Москве, выполненный частным мастером",
  "ремонт маленькой спальни 12 кв м в Москве, пример работы частного мастера",
  "пример зонирования детской комнаты при ремонте",
  "",
  "",
  "ремонт туалета в квартире, выполненный частным мастером",
  "пример ремонта санузла под ключ в Москве, выполненного частным мастером",
  "",
  ""
]
vidy_remonta_alts = [
  "евроремонт квартир под ключ",
  "evroremont_kvartiri_v_moskve",
  "евроремонт однокомнатной квартиры под ключ в Москве, частная бригада",
  "капитальный ремонт квартир в Москве",
  "косметический ремонт квартир",
  "косметический ремонт квартир в Москве",
  "косметический ремонт квартир под ключ",
  "remont-kvartir-v-moskve-pod-klyuch",
  "remont-kvartir-pod-klyuch",
  "комплексный ремонт квартир",
  "комплексный ремонт квартиры в Москве и МО",
  "средняя стоимость ремонта квартир в новостройках",
  "ремонт новостроек под ключ стоимость",
  "черновой ремонт в новостройке",
  "черновой ремонт квартиры",
  "частичный ремонт квартир",
  "частичный ремонт квартиры в Москве",
  "косметический ремонт комнаты",
  "косметический ремонт комнаты в Москве",
  "remont-kuhni-6-kv.m",
  "remont-malogabaritnoy-kuhni",
  "remont-kuhni-v-moskve",
  "ремонт коридора под ключ",
  "ремонт прихожей в хрущевке",
  "ремонт прихожей в панельном доме",
  "ремонт ванной комнаты в Москве",
  "ремонт ванной комнаты частным мастером",
  "ремонт гостиной",
  "ремонт гостиной комнаты в Москве",
  "ремонт спальни в Москве",
  "ремонт спальни 12 кв м",
  "remont-v-detskoj-komnate",
  "ремонт в комнате мальчика с пиратскими мотивами",
  "детская для девочки",
  "ремонт туалета",
  "ремонт санузла под ключ",
  "ремонт санузла совмещенного",
  "ремонт санузла и ванной"
]
vidy_remonta_images = []
k = 0
for i in 0...VIDY_REMONTA_NUMBERS
  if File.file? File.join(Rails.root, "/app/assets/images/vidy_remonta/#{i+1}_1.jpg")
    j = 0
    loop do
      if File.file? File.join(Rails.root, "/app/assets/images/vidy_remonta/#{i+1}_#{j+1}.jpg")
        vidy_remonta_images[k] = File.open(File.join(Rails.root, "/app/assets/images/vidy_remonta/#{i+1}_#{j+1}.jpg"))
        j += 1
        k += 1
      else
        break
      end
    end
  end
end
################################################################################


############################# Запись в бд ######################################
Image.create([
  # Фон, лого, слоган
  { title: "background", alt: "background", background: image_background },
  { title: "logo", alt: "logo", logo: image_logo },
  { title: "slog", alt: "slog", tagline: image_tagline },
  # Информация
  { title: '',                                                                         alt: 'Стоимость чернового ремонта в новостройке',                                                            info_image: info_images["1_1"]  },
  { title: '',                                                                         alt: 'stoimost-chernovogo-remonta',                                                                          info_image: info_images["1_2"]  },
  { title: 'стоимость черновой отделки Комфорт в новостройке',                         alt: 'стоимость черновой отделки в новостройке',                                                             info_image: info_images["2_1"]  },
  { title: 'стоимость черновой отделки в новостройках Москвы',                         alt: 'stoimost-chernovoy-otdelki',                                                                           info_image: info_images["2_2"]  },
  { title: 'капитальный ремонт квартир под ключ и цены',                               alt: 'расчет стоимости работ по капитальному ремонту квартир под ключ категории Стандарт',                   info_image: info_images["3_1"]  },
  { title: 'стоимость ремонта квартиры под ключ Комфорт',                              alt: 'Расчет стоимости ремонта квартиры под ключ категории Комфорт',                                         info_image: info_images["4_1"]  },
  { title: 'ремонт квартир под ключ цена Комфорт Плюс',                                alt: 'Расчет цены ремонта под ключ категории Комфорт Плюс',                                                  info_image: info_images["5_1"]  },
  { title: 'стоимость евроремонта за квадратный метр',                                 alt: 'Расчет стоимости евроремонта категории Премиум в Москве за квадратный метр',                           info_image: info_images["6_1"]  },
  { title: 'Пример расчета стоимости косметического ремонта квартир категории Эконом', alt: 'kosmeticheskiy-remont-kvartir-ceny',                                                                   info_image: info_images["7_1"]  },
  { title: 'Пример выполненного косметического ремонта комнаты по доступной цене',     alt: 'косметический ремонт комнаты цены',                                                                    info_image: info_images["8_1"]  },
  { title: 'цена ремонта коридора',                                                    alt: 'remont-koridora-cena',                                                                                 info_image: info_images["9_1"]  },
  { title: 'стоимость косметического ремонта прихожей',                                alt: 'stoimost-remonta-prihozhey',                                                                           info_image: info_images["9_2"]  },
  { title: 'косметический ремонт кухни по оптимальной цене',                           alt: 'remont-kuhni-cena',                                                                                    info_image: info_images["10_1"] },
  { title: '',                                                                         alt: 'пластиковые панели под дерево на балконе',                                                             info_image: info_images["11_1"] },
  { title: '',                                                                         alt: 'красивая отделка балкона панелями ПВХ',                                                                info_image: info_images["11_2"] },
  { title: '',                                                                         alt: 'балкон пластиковыми панелями',                                                                         info_image: info_images["11_3"] },
  { title: 'сколько стоит ремонт ванной комнаты',                                      alt: 'Пример готовой работы частных мастеров по капитальному ремонту ванной комнаты по доступной стоимости', info_image: info_images["12_1"] },
  { title: 'расчет пескобетона для стяжки пола',                                       alt: 'Пример расчета пескобетона для стяжки',                                                                info_image: info_images["13_1"] },
  { title: '',                                                                         alt: 'стяжка_с_керамзитом_по_уровню.jpg',                                                                    info_image: info_images["14_1"] },
  { title: '',                                                                         alt: 'keramzit',                                                                                             info_image: info_images["14_2"] },
  { title: 'теплый электрический пол, расположенный в квартире',                       alt: 'пример укладки теплого электрического пола в квартире',                                                info_image: info_images["17_1"] },
  { title: 'прогрев воздуха',                                                          alt: 'схема прогревания воздуха в комнате с системой теплый пол',                                            info_image: info_images["17_2"] },
  { title: 'инфракрасный пленочный пол',                                               alt: 'пример работы мастера по устройству инфракрасного пленочного теплого пол',                             info_image: info_images["17_3"] },
  { title: 'гидроизоляция в ванной',                                                   alt: 'Готовая обмазочная гидроизоляция в ванной комнате',                                                    info_image: info_images["18_1"] },
  # Слайдер
  { slider_image: slider_images[5], slider: slider },
  { slider_image: slider_images[4], slider: slider },
  { slider_image: slider_images[3], slider: slider },
  { slider_image: slider_images[2], slider: slider, title: "og" },
  { slider_image: slider_images[1], slider: slider },
  { slider_image: slider_images[0], slider: slider },
  # Контакты
  { static_image: static_pages_images_contacts[0], alt: "contact" },
  { static_image: static_pages_images_contacts[1], alt: "qr-code" },
  { static_image: static_pages_images_contacts[2], alt: "remont-kvartir" },
  { static_image: static_pages_images_contacts[3], alt: "remont-kottedzhey" }
])
# Галерея
for i in 0...GALLERY_NUMBERS
  j=0
  gallery = Gallery.create(title: gallery_titles[i])
  loop do
    if gallery_images[i][j]
      if j == 0
        Image.create(
          gallery: gallery,
          gallery_image: gallery_images[i][j],
          gallery_cover: true
        )
      else
        Image.create(
          gallery_image: gallery_images[i][j],
          gallery: gallery
        )
      end
      j+=1
    else
      break
    end
  end
end
# Виды ремонта
for i in 0...vidy_remonta_images.size
  if vidy_remonta_images[i]
    Image.create(
      title: vidy_remonta_titles[i],
      alt: vidy_remonta_alts[i],
      vid_remonta_image: vidy_remonta_images[i]
    )
  end
end
################################################################################
