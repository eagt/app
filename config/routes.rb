Rails.application.routes.draw do
  resources :cars

  root :to => "cars#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
