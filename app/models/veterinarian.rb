class Veterinarian < ActiveRecord::Base
  validates :name, :presence => true
  validates :phone, :presence => true
  validates :email, :presence => true
  validates :address, :presence => true
  has_many :vet_appointments
end