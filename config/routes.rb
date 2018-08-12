Rails.application.routes.draw do
  resources :galleries
  resources :articles

  root 'main_menu#home'
  match '/prices', to: 'main_menu#prices', via: 'get'
  match '/information', to: 'main_menu#information', via: 'get'
  match '/consumption_of_materials', to: 'main_menu#consumption_of_materials', via: 'get'
  match '/contacts', to: 'main_menu#contacts', via: 'get'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
