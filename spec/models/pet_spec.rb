require 'spec_helper'

describe Pet do
  it { should validate_presence_of :name }
  it { should validate_presence_of :age }
  it { should validate_presence_of :weight }
  it { should validate_presence_of :type }
  it { should have_many :vet_appointments }
end