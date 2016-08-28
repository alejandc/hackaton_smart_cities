# == Schema Information
#
# Table name: notifications
#
#  id                  :integer          not null, primary key
#  notification_type   :string
#  description         :text
#  latitude            :float
#  longitude           :float
#  notification_status :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Notification < ApplicationRecord
end
