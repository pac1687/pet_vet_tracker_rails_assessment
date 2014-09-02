Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'pets#index'})
  match('pets', {:via => :get, :to => 'pets#index'})
  match('pets', {:via => :post, :to => 'pets#create'})
  match('pets/new', {:via => :get, :to => 'pets#index'})
  match('pets/:id', {:via => :get, :to => 'pets#show'})
end
