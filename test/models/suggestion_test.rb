# == Schema Information
#
# Table name: suggestions
#
#  id              :integer          not null, primary key
#  suggestion_type :string
#  reference       :string
#  is_valid        :boolean
#  start_time      :datetime
#  end_time        :datetime
#  points          :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class SuggestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
