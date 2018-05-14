Rails.application.routes.draw do
  resources :bbs

  root "bbs#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
