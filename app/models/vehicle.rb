class Vehicle < ApplicationRecord
  belongs_to :user

  # Validations
  validates :plate, presence: true, uniqueness: true
  validates :brand, presence: true
  validates :model, presence: true
  validates :year, presence: true
  validates :color, presence: true

end
