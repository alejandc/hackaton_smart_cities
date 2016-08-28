class CreateSuggestions < ActiveRecord::Migration[5.0]
  def change
    create_table :suggestions do |t|
      t.string :suggestion_type
      t.string :reference
      t.boolean :is_valid
      t.datetime :start_start
      t.datetime :end_time
      t.integer :points

      t.timestamps
    end
  end
end
