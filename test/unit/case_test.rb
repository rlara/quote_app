# == Schema Information
#
# Table name: cases
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  description :string(255)
#  code        :integer
#  design      :integer
#  base        :boolean
#  quote_id    :integer
#  created_at  :datetime
#  updated_at  :datetime
#  tipe        :string(255)
#  total_hours :integer
#

require 'test_helper'

class CaseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
