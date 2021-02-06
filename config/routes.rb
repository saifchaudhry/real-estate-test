Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'assets#index'
  resources :houses
  resources :commercial_units
  resources :assets do
  	post 'order'
  end

end
