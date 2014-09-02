class VetAppointmentsController < ApplicationController
  def new
    @veterinarians = Veterinarian.all
    @pet = Pet.find(params[:pet_id])
    @vet_appointment = @pet.vet_appointments.new
    render('vet_appointments/new.html.erb')
  end

  def create
    @pet = Pet.find(params[:pet_id])
    @vet_appointment = VetAppointment.new(params[:vet_appointment])
    if @vet_appointment.save
      render('vet_appointments/success.html.erb')
    else
      @veterinarians = Veterinarian.all
      render('vet_appointments/new.html.erb')
    end
  end

  def edit
    @veterinarians = Veterinarian.all
    @pet = Pet.find(params[:pet_id])
    @vet_appointment = VetAppointment.find(params[:vet_appointment_id])
    render('vet_appointments/edit.html.erb')
  end

  def update
    @pet = Pet.find(params[:pet_id])
    @vet_appointment = VetAppointment.find(params[:vet_appointment_id])
    if @vet_appointment.update(params[:vet_appointment])
      render('vet_appointments/success.html.erb')
    else
      render('vet_appointments/edit.html.erb')
    end
  end

  # def destroy
  #   @sighting = Sighting.find(params[:sighting_id])
  #   @sighting.destroy
  #   render('sightings/destroy.html.erb')
  # end
end