class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :info
      t.string :website
      t.string :phone
      t.string :address
      t.bool :active

      t.timestamps null: false
    end
  end
end
