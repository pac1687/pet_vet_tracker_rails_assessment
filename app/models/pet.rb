class Pet < ActiveRecord::Base
  validates :name, :presence => true
  validates :age, :presence => true
  validates :weight, :presence => true
  validates :type, :presence => true
  has_many :vet_appointments
end