Rails.application.routes.draw do
  resources :galleries, :path => 'foto-nashih-rabot'
  resources :articles,  :path => 'news'

  root 'main_menu#home'
  get '/ceny',              to: 'main_menu#prices'
  get '/informaciya',       to: 'main_menu#information'
  get '/rashod-materialov', to: 'main_menu#consumption_of_materials'
  get '/kontakty',          to: 'main_menu#contacts'
end
