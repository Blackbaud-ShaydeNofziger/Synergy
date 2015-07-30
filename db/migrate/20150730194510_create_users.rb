class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fName
      t.string :lName
      t.string :email
      t.string :avatar
      t.string :phone
      t.string :bio
      t.boolean :active

      t.timestamps null: false
    end
  end
end
