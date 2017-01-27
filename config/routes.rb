Rails.application.routes.draw do

  root 'pictures#index'

  get 'pictures' => 'pictures#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'pictures' => 'pictures#create'

  get 'pictures/new' => 'pictures#new'

  get 'pictures/:id' => 'pictures#show', as: 'picture'

  get 'pictures/:id/edit' => 'pictures#edit', as: "edit_picture"

  patch 'pictures/:id' => 'pictures#update'
end
