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

class Suggestion < ApplicationRecord

  TYPES = {'Colectivo' => ['Linea 68', 'Linea 42', 'Linea 39', 'Linea 111'],
           'Tren'      => ['Urquiza', 'San Martin', 'Mitre', 'General Roca', 'Sarmiento'],
           'Subte'     => ['Linea A', 'Linea B', 'Linea C', 'Linea D', 'Linea E']}

end
