Rails.application.routes.draw do
  # Админ
  resources :user_sessions, only: [:new, :create, :destroy]
  get  'login'  => 'user_sessions#new',     :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout
  # Scaffolds
  resources :galleries, path: '/foto-nashih-rabot'
  post '/galleries/show_images', to: 'galleries#show_images', :as => 'show_images'

  resources :sliders
  resources :articles,  path: '/news'
  # Главное меню
  root 'main_menu#home'
  get '/ceny',              to: 'main_menu#prices'
  get '/rashod-materialov', to: 'main_menu#consumption_of_materials'
  get '/kontakty',          to: 'main_menu#contacts'
  # Информация
  get '/informaciya',                                                    to: "informaciya#index"
  get '/informaciya/chernovoj-remont-standart',                          to: "informaciya#chernovoj_remont_standart"
  get '/informaciya/chernovoj-remont-komfort',                           to: "informaciya#chernovoj_remont_komfort"
  get '/informaciya/remont-kvartiry-standart',                           to: "informaciya#remont_kvartiry_standart"
  get '/informaciya/remont-kvartiry-komfort',                            to: "informaciya#remont_kvartiry_komfort"
  get '/informaciya/remont-kvartiry-komfort-pljus',                      to: "informaciya#remont_kvartiry_komfort_pljus"
  get '/informaciya/remont-kvartiry-premium',                            to: "informaciya#remont_kvartiry_premium"
  get '/informaciya/remont-kvartiry-jekonom',                            to: "informaciya#remont_kvartiry_jekonom"
  get '/informaciya/kosmeticheskij-remont-komnaty-ceny',                 to: "informaciya#kosmeticheskij_remont_komnaty_ceny"
  get '/informaciya/cena-remonta-koridora',                              to: "informaciya#cena_remonta_koridora"
  get '/informaciya/kosmeticheskij-remont-kuhni-cena',                   to: "informaciya#kosmeticheskij_remont_kuhni_cena"
  get '/informaciya/obshivka-balkona-plastikovymi-panelyami-i-vagonkoy', to: "informaciya#obshivka_balkona_plastikovymi_panelyami_i_vagonkoy"
  get '/informaciya/remont-vannoj-komnaty-ceny',                         to: "informaciya#remont_vannoj_komnaty_ceny"
  get '/informaciya/raschet-peskobetona-dlja-stjazhki',                  to: "informaciya#raschet_peskobetona_dlja_stjazhki"
  get '/informaciya/raschet-keramzita-na-styazhku',                      to: "informaciya#raschet_keramzita_na_styazhku"
  get '/informaciya/raschet-ploschadi-sten-pod-pokleyku',                to: "informaciya#raschet_ploschadi_sten_pod_pokleyku"
  get '/informaciya/polipropilenovye-truby',                             to: "informaciya#polipropilenovye_truby"
  get '/informaciya/elektricheskij-teplyj-pol-v-kvartire',               to: "informaciya#elektricheskij_teplyj_pol_v_kvartire"
  get '/informaciya/gidroizoljacija-pola-v-kvartire',                    to: "informaciya#gidroizoljacija_pola_v_kvartire"
  # Виды ремонта
  get '/vidy-remonta/evroremont-kvartir',             to: "vidy_remonta#evroremont_kvartir"
  get '/vidy-remonta/kapitalnyj-remont-kvartir',      to: "vidy_remonta#kapitalnyj_remont_kvartir"
  get '/vidy-remonta/kosmeticheskiy-remont-kvartiry', to: "vidy_remonta#kosmeticheskiy_remont_kvartiry"
  get '/vidy-remonta/remont-kvartir-pod-klyuch',      to: "vidy_remonta#remont_kvartir_pod_klyuch"
  get '/vidy-remonta/kompleksnyj-remont-kvartir',     to: "vidy_remonta#kompleksnyj_remont_kvartir"
  get '/vidy-remonta/remont-v-novostrojke',           to: "vidy_remonta#remont_v_novostrojke"
  get '/vidy-remonta/chernovoj-remont-v-novostrojke', to: "vidy_remonta#chernovoj_remont_v_novostrojke"
  get '/vidy-remonta/chastichnyj-remont-kvartir',     to: "vidy_remonta#chastichnyj_remont_kvartir"
  get '/vidy-remonta/kosmeticheskij-remont-komnaty',  to: "vidy_remonta#kosmeticheskij_remont_komnaty"
  get '/vidy-remonta/remont-kuhni',                   to: "vidy_remonta#remont_kuhni"
  get '/vidy-remonta/remont-koridora-pod-kljuch',     to: "vidy_remonta#remont_koridora_pod_kljuch"
  get '/vidy-remonta/remont-vannoj-komnaty-v-moskve', to: "vidy_remonta#remont_vannoj_komnaty_v_moskve"
  get '/vidy-remonta/remont-gostinoj',                to: "vidy_remonta#remont_gostinoj"
  get '/vidy-remonta/remont-spalni',                  to: "vidy_remonta#remont_spalni"
  get '/vidy-remonta/remont-detskoy-komnaty',         to: "vidy_remonta#remont_detskoy_komnaty"
  get '/vidy-remonta/remont-tualeta-v-kvartire',      to: "vidy_remonta#remont_tualeta_v_kvartire"
  # Виды работ
  get '/vidy-rabot/shpaklevka-sten-cena',                   to: "vidy_rabot#shpaklevka_sten_cena"
  get '/vidy-rabot/shpaklevka-sten-pod-oboi-ceny',          to: "vidy_rabot#shpaklevka_sten_pod_oboi_ceny"
  get '/vidy-rabot/shpaklevka-sten-pod-pokrasku-cena',      to: "vidy_rabot#shpaklevka_sten_pod_pokrasku_cena"
  get '/vidy-rabot/shtukaturka-sten-cena',                  to: "vidy_rabot#shtukaturka_sten_cena"
  get '/vidy-rabot/pokleyka-oboev-cena',                    to: "vidy_rabot#pokleyka_oboev_cena"
  get '/vidy-rabot/poklejka-vinilovyh-oboev',               to: "vidy_rabot#poklejka_vinilovyh_oboev"
  get '/vidy-rabot/poklejka-oboev-na-flizelinovoj-osnove',  to: "vidy_rabot#poklejka_oboev_na_flizelinovoj_osnove"
  get '/vidy-rabot/pokleyka-tekstilnyh-oboev',              to: "vidy_rabot#pokleyka_tekstilnyh_oboev"
  get '/vidy-rabot/pokleyka-oboev-pod-pokrasku',            to: "vidy_rabot#pokleyka_oboev_pod_pokrasku"
  get '/vidy-rabot/pokleyka-steklooboev',                   to: "vidy_rabot#pokleyka_steklooboev"
  get '/vidy-rabot/pokraska-sten-potolka-cena',             to: "vidy_rabot#pokraska_sten_potolka_cena"
  get '/vidy-rabot/pokraska-sten-cena',                     to: "vidy_rabot#pokraska_sten_cena"
  get '/vidy-rabot/pokraska-potolka-cena',                  to: "vidy_rabot#pokraska_potolka_cena"
  get '/vidy-rabot/stjazhka-pola-cena',                     to: "vidy_rabot#stjazhka_pola_cena"
  get '/vidy-rabot/samovyravnivajushhajasja-stjazhka',      to: "vidy_rabot#samovyravnivajushhajasja_stjazhka"
  get '/vidy-rabot/stjazhka-pola-s-keramzitom',             to: "vidy_rabot#stjazhka_pola_s_keramzitom"
  get '/vidy-rabot/ukladka-laminata-cena',                  to: "vidy_rabot#ukladka_laminata_cena"
  get '/vidy-rabot/ukladka-parketnoy-doski',                to: "vidy_rabot#ukladka_parketnoy_doski"
  get '/vidy-rabot/ukladka-plitki',                         to: "vidy_rabot#ukladka_plitki"
  get '/vidy-rabot/ukladka-plitki-na-stenu',                to: "vidy_rabot#ukladka_plitki_na_stenu"
  get '/vidy-rabot/ukladka-plitki-na-pol',                  to: "vidy_rabot#ukladka_plitki_na_pol"
  get '/vidy-rabot/ukladka-keramogranita-cena',             to: "vidy_rabot#ukladka_keramogranita_cena"
  get '/vidy-rabot/uteplenie-i-otdelka-balkonov-i-lodzhij', to: "vidy_rabot#uteplenie_i_otdelka_balkonov_i_lodzhij"
  get '/vidy-rabot/ustanovka-mezhkomnatnyh-dverej',         to: "vidy_rabot#ustanovka_mezhkomnatnyh_dverej"
  get '/vidy-rabot/natyazhnye-potolki-v-moskve',            to: "vidy_rabot#natyazhnye_potolki_v_moskve"
end
