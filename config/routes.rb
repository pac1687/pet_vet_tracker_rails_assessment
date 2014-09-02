Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'pets#index'})
  match('pets', {:via => :get, :to => 'pets#index'})
  match('pets', {:via => :post, :to => 'pets#create'})
  match('pets/new', {:via => :get, :to => 'pets#index'})
  match('pets/:id', {:via => :get, :to => 'pets#show'})
  match('pets/:id/edit', {:via => :get, :to => 'pets#edit'})
  match('pets/:id', {:via => [:patch, :put], :to => 'pets#update'})
  match('pets/:id', {:via => :delete, :to => 'pets#destroy'})
end
