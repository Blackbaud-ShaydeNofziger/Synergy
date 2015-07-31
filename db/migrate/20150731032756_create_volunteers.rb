class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.integer :userID
      t.integer :eventID

      t.timestamps null: false
    end
  end
end
