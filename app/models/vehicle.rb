# == Schema Information
#
# Table name: vehicles
#
#  id         :bigint           not null, primary key
#  user_id    :bigint           not null
#  plate      :string
#  brand      :string
#  model      :string
#  year       :integer
#  color      :string
#  car_issue  :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Vehicle < ApplicationRecord
  # Associations
  belongs_to :user
  has_many :reparations, dependent: :destroy
  has_many :services, through: :reparations

  # Validations
  validates :plate, presence: true, uniqueness: true
  validates :brand, presence: true
  validates :model, presence: true
  validates :year, presence: true
  validates :color, presence: true

end
