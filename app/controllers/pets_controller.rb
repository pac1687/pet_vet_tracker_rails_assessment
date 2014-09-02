class PetsController < ApplicationController
  def index
    @pets = Pet.all
    render('pets/index.html.erb')
  end
end