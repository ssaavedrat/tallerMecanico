# == Schema Information
#
# Table name: services
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :text
#  price       :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Service < ApplicationRecord
    # Associations
    has_many :reparations, dependent: :destroy
    has_many :vehicles, through: :reparations

    # Validations
    validates :name, presence: true, uniqueness: true
    validates :description, presence: true
    validates :price, presence: true
end
