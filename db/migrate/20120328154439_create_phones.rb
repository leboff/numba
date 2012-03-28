class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :prefix
      t.string :areacode
      t.string :number
      t.string :ext
      t.integer :user_id

      t.timestamps
    end
  end
end
