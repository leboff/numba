class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :addressone
      t.string :addresstwo
      t.string :city
      t.string :zip
      t.string :state
      t.string :country
      t.integer :user_id

      t.timestamps
    end
  end
end
