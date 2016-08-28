# == Schema Information
#
# Table name: incidents
#
#  id            :integer          not null, primary key
#  incident_type :string
#  start_time    :datetime
#  end_time      :datetime
#  lat           :decimal(, )
#  lng           :decimal(, )
#  description   :string
#  available     :boolean          default(FALSE)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Incident < ActiveRecord::Base
  TIPOS = { ACCIDENTE: 'ACCIDENTE', MANIFESTACION: 'MANIFESTACION', EMBOTELLAMIENTO: 'EMBOTELLAMIENTO', INUNDACION: 'INUNDACION' }

  validates :incident_type, :start_time, :end_time, :lat, :lng, presence: true
  validates_inclusion_of :available, :in => [true, false]
end
