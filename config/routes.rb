Rails.application.routes.draw do
  resources :galleries, path: '/foto-nashih-rabot'
  resources :infos,     path: '/informaciya', param: :link
  resources :articles,  path: '/news'
  resources :images,    only: [:create, :destroy]

  get '/chernovoj-remont-standart',                          to: 'informaciya#chernovojRemontStandart'
  get '/chernovoj-remont-komfort',                           to: 'informaciya#chernovojRemontKomfort'
  get '/remont-kvartiry-standart',                           to: 'informaciya#remontKvartiryStandart'
  get '/remont-kvartiry-komfort',                            to: 'informaciya#remontKvartiryKomfort'
  get '/remont-kvartiry-komfort-pljus',                      to: 'informaciya#remontKvartiryKomfortPljus'
  get '/remont-kvartiry-premium',                            to: 'informaciya#remontKvartiryPremium'
  get '/remont-kvartiry-jekonom',                            to: 'informaciya#remontKvartiryJekonom'
  get '/kosmeticheskij-remont-komnaty-ceny',                 to: 'informaciya#kosmeticheskijRemontKomnatyCeny'
  get '/cena-remonta-koridora',                              to: 'informaciya#cenaRemontaKoridora'
  get '/kosmeticheskij-remont-kuhni-cena',                   to: 'informaciya#kosmeticheskijRemontKuhniCena'
  get '/obshivka-balkona-plastikovymi-panelyami-i-vagonkoy', to: 'informaciya#obshivkaBalkonaPlastikovymiPanelyamiIVagonkoy'
  get '/remont-vannoj-komnaty-ceny',                         to: 'informaciya#remontVannojKomnatyCeny'
  get '/raschet-peskobetona-dlja-stjazhki',                  to: 'informaciya#raschetPeskobetonaDljaStjazhki'
  get '/raschet-keramzita-na-styazhku',                      to: 'informaciya#raschetKeramzitaNaStyazhku'
  get '/raschet-ploschadi-sten-pod-pokleyku',                to: 'informaciya#raschetPloschadiStenPodPokleyku'
  get '/polipropilenovye-truby',                             to: 'informaciya#polipropilenovyeTruby'
  get '/elektricheskij-teplyj-pol-v-kvartire',               to: 'informaciya#elektricheskijTeplyjPolVKvartire'
  get '/gidroizoljacija-pola-v-kvartire',                    to: 'informaciya#gidroizoljacijaPolaVKvartire'

  root 'main_menu#home'
  get '/ceny',              to: 'main_menu#prices'
  get '/informaciya',       to: 'main_menu#information'
  get '/rashod-materialov', to: 'main_menu#consumption_of_materials'
  get '/kontakty',          to: 'main_menu#contacts'
end
