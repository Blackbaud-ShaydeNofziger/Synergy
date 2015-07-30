class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.timestamp :start
      t.timestamp :end
      t.string :location
      t.string :info
      t.string :picture
      t.integer :maxVolunteers
      t.boolean :active

      t.timestamps null: false
    end
  end
end
