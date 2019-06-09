Rails.application.routes.draw do

  get '/home', to: 'static#home'

  resources :genres, :artists, :songs


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
