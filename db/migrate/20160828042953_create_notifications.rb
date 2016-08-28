class CreateNotifications < ActiveRecord::Migration[5.0]
  def change
    create_table :notifications do |t|
      t.string :notification_type
      t.text :description
      t.float :latitude
      t.float :longitude
      t.string :notification_status

      t.timestamps
    end
  end
end
