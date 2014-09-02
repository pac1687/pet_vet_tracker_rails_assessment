class VeterinariansController < ApplicationController
  def index
    @veterinarians = Veterinarian.all
    @veterinarian = Veterinarian.new
    render('veterinarians/index.html.erb')
  end

  def show
    @veterinarian = Veterinarian.find(params[:id])
    render('veterinarians/show.html.erb')
  end

  def create
    @veterinarian = Veterinarian.new(params[:veterinarian])
    if @veterinarian.save
      render('veterinarians/success.html.erb')
    else
      @veterinarians = Veterinarian.all
      render('veterinarians/index.html.erb')
    end
  end

  def edit
    @veterinarian = Veterinarian.find(params[:id])
    render('veterinarians/edit.html.erb')
  end

  def update
    @veterinarian = Veterinarian.find(params[:id])
    if @veterinarian.update(params[:veterinarian])
      render('veterinarians/success.html.erb')
    else
      render('veterinarians/edit.html.erb')
    end
  end

  def destroy
    @veterinarian = Veterinarian.find(params[:id])
    @veterinarian.destroy
    render('veterinarians/destroy.html.erb')
  end
end