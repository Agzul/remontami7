Rails.application.routes.draw do
  resources :user_sessions, only: [:new, :create, :destroy]
  get  'login'  => 'user_sessions#new',     :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

  resources :sliders
  resources :galleries, path: '/foto-nashih-rabot'
  resources :infos,     path: '/informaciya', param: :link
  resources :articles,  path: '/news'
  resources :images,    only: [:create, :update, :destroy]

  root 'main_menu#home'
  get '/ceny',              to: 'main_menu#prices'
  get '/informaciya',       to: 'main_menu#information'
  get '/rashod-materialov', to: 'main_menu#consumption_of_materials'
  get '/kontakty',          to: 'main_menu#contacts'
end
