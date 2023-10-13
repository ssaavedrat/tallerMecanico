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
    # Validations
    validates :name, presence: true, uniqueness: true
    validates :description, presence: true
    validates :price, presence: true
end
