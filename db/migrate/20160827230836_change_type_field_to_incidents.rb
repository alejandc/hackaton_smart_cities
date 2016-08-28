class ChangeTypeFieldToIncidents < ActiveRecord::Migration[5.0]
  def change
    rename_column :incidents, :type, :incident_type
  end
end
