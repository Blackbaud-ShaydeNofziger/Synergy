class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.string :type

      t.timestamps null: false
    end
  end
end
