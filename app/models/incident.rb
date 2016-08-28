# == Schema Information
#
# Table name: roles
#
#  id               :integer          not null, primary key
#  incident_type    :string
#  start_time       :datetime
#  end_time         :datetime
#  lat              :decimal
#  lng              :decimal
#  description      :string
#  available        :boolean
#  created_at       :datetime
#  updated_at       :datetime
#

class Incident < ActiveRecord::Base
  TIPOS = { ACCIDENTE: 'ACCIDENTE', MANIFESTACION: 'MANIFESTACION', EMBOTELLAMIENTO: 'EMBOTELLAMIENTO', INUNDACION: 'INUNDACION' }

  validates :incident_type, :start_time, :end_time, :lat, :lng, :description, :available, presence: true
end
