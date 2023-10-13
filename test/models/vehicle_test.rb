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
require "test_helper"

class VehicleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
