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
require "test_helper"

class ReparationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
