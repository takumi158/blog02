Rails.application.routes.draw do
  get 'top/index'
  resources :bbs

  root "top#index"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
