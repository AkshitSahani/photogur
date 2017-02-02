Rails.application.routes.draw do

  root 'pictures#index'
  get '/pictures/album' => 'pictures#album'
  resources :pictures
end
