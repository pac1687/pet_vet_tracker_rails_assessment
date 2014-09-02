class PetsController < ApplicationController
  def index
    @pets = Pet.all
    render('pets/index.html.erb')
  end

  def show
    @pet = Pet.find(params[:id])
    render('pets/show.html.erb')
  end
end