class CreateIncidents < ActiveRecord::Migration[5.0]
  def change
    create_table :incidents do |t|
      t.string           :type
      t.datetime         :start_time
      t.datetime         :end_time
      t.decimal          :lat
      t.decimal          :lng
      t.string           :description
      t.boolean          :available
 
      t.timestamps
    end
  end
end
