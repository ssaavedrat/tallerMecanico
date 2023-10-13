# == Schema Information
#
# Table name: reparations
#
#  id          :bigint           not null, primary key
#  vehicle_id  :bigint           not null
#  service_id  :bigint           not null
#  status      :integer          default(0)
#  start_time  :datetime
#  end_time    :datetime
#  observation :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Reparation < ApplicationRecord
  belongs_to :vehicle
  belongs_to :service

  # Validations
  validates :vehicle_id, presence: true
  validates :service_id, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true

  # Enums
  enum status: { pending: 0, finished: 1}
end
