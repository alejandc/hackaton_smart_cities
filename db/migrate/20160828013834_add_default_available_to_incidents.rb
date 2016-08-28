class AddDefaultAvailableToIncidents < ActiveRecord::Migration[5.0]
  def change
    change_column :incidents, :available, :boolean, :default => false
  end
end
