class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.DateTime :start
      t.DateTime :end
      t.string :location
      t.string :info
      t.string :picture
      t.int :maxVolunteers
      t.bool :active

      t.timestamps null: false
    end
  end
end
