Rails.application.routes.draw do
  # Админ
  resources :user_sessions, only: [:new, :create, :destroy]
  get  'login'  => 'user_sessions#new',     :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout
  # Scaffolds
  resources :sliders
  resources :galleries, path: '/foto-nashih-rabot'
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
end
