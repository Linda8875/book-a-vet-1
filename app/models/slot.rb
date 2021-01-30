class Slot < ApplicationRecord
  belongs_to :vet
 #has_many :appointments, through: :vets
  end