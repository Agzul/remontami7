class VidyRabotController < ApplicationController
  def shpaklevka_sten_cena
    @work_names = [
      "Шпаклевка стен под обои в 2 слоя",
      "Шпаклевка стен под покраску в 3 слоя",
      "Шпаклевка стен финишной шпаклевкой Шитрок",
      "Шпаклевка гипсокартона",
      "Шпаклевка оконных откосов (ширина не более 40 см)",
      "Шлифовка стен",
      "Грунтовка",
      'Грунтовка "Бетоконтактом"',
      "Наклейка малярной сетки",
      "Удаление старой шпаклевки со стен"
    ]
    link = url_for controller: :vidy_rabot, action: :shpaklevka_sten_pod_oboi_ceny, only_path: true
    @work_prices = [
      Work.find_by_name("<a href='#{link}' target='_blank'>Шпаклевка стен под обои</a> (2 слоя)").price,
      Work.find_by_name("Шпаклевка стен под покраску (3 слоя)").price,
      Work.find_by_name("Шпаклевка стен финишной шпаклевкой Шитрок").price,
      Work.find_by_name("Шпаклевка гипсокартона").price,
      Work.find_by_name("Штукатурка + грунтовка дверных и оконных откосов с уголками").price.to_i-150,
      Work.find_by_name("Шлифовка стен").price,
      Work.find_by_name("Грунтовка стен после каждого цикла работ (необходима для наилучшего результата)").price,
      Work.find_by_name("Грунтовка бетоноконтактом").price,
      Work.find_by_name("Поклейка малярной сетки").price,
      Work.find_by_name("<a href='#{link}' target='_blank'>Шпаклевка стен под обои</a> (2 слоя)").price.to_i-50
    ]
    @work_units = [
      Work.find_by_name("<a href='#{link}' target='_blank'>Шпаклевка стен под обои</a> (2 слоя)").unit,
      Work.find_by_name("Шпаклевка стен под покраску (3 слоя)").unit,
      Work.find_by_name("Шпаклевка стен финишной шпаклевкой Шитрок").unit,
      Work.find_by_name("Шпаклевка гипсокартона").unit,
      Work.find_by_name("Штукатурка + грунтовка дверных и оконных откосов с уголками").unit,
      Work.find_by_name("Шлифовка стен").unit,
      Work.find_by_name("Грунтовка стен после каждого цикла работ (необходима для наилучшего результата)").unit,
      Work.find_by_name("Грунтовка бетоноконтактом").unit,
      Work.find_by_name("Поклейка малярной сетки").unit,
      Work.find_by_name("<a href='#{link}' target='_blank'>Шпаклевка стен под обои</a> (2 слоя)").unit
    ]
    link  = url_for controller: :vidy_rabot, action: :pokraska_sten_cena, only_path: true
    link1 = url_for controller: :vidy_rabot, action: :pokleyka_oboev_pod_pokrasku, only_path: true

    @additional_service_names = [
      "<a href='#{link}' target='_blank'>Покраска стен</a> (1 слой/2 слоя/3 слоя)",
      "<a href='#{link1}' target='_blank'>Поклейка обоев под покраску</a>"
    ]
    @additional_service_prices = [
      Work.find_by_name("<a href='#{link}' target='_blank'>Покраска стен</a> (1 слой/2 слоя/3 слоя)").price,
      Work.find_by_name("<a href='#{link1}' target='_blank'>Поклейка обоев под покраску</a>").price
    ]
    @additional_service_units = [
      Work.find_by_name("<a href='#{link}' target='_blank'>Покраска стен</a> (1 слой/2 слоя/3 слоя)").unit,
      Work.find_by_name("<a href='#{link1}' target='_blank'>Поклейка обоев под покраску</a>").unit
    ]
  end

  def shpaklevka_sten_pod_oboi_ceny
  end

  def shpaklevka_sten_pod_pokrasku_cena
  end

  def shtukaturka_sten_cena
  end

  def pokleyka_oboev_cena
  end

  def poklejka_vinilovyh_oboev
  end

  def poklejka_oboev_na_flizelinovoj_osnove
  end

  def pokleyka_tekstilnyh_oboev
  end

  def pokleyka_oboev_pod_pokrasku
  end

  def pokleyka_steklooboev
  end

  def pokraska_sten_potolka_cena
  end

  def pokraska_sten_cena
  end

  def pokraska_potolka_cena
  end

  def stjazhka_pola_cena
  end

  def samovyravnivajushhajasja_stjazhka
  end

  def stjazhka_pola_s_keramzitom
  end

  def ukladka_laminata_cena
  end

  def ukladka_parketnoy_doski
  end

  def ukladka_plitki
  end

  def ukladka_plitki_na_stenu
  end

  def ukladka_plitki_na_pol
  end

  def ukladka_keramogranita_cena
  end

  def uteplenie_i_otdelka_balkonov_i_lodzhij
  end

  def ustanovka_mezhkomnatnyh_dverej
  end

  def natyazhnye_potolki_v_moskve
  end
end
