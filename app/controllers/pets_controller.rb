class PetsController < ApplicationController
  def index
    @pets = Pet.all
    @pet = Pet.new
    render('pets/index.html.erb')
  end

  def show
    @pet = Pet.find(params[:id])
    render('pets/show.html.erb')
  end

  def create
    @pet = Pet.new(params[:pet])
    if @pet.save
      render('pets/success.html.erb')
    else
      @pets = Pet.all
      render('pets/index.html.erb')
    end
  end
end