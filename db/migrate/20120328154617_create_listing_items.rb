class CreateListingItems < ActiveRecord::Migration
  def change
    create_table :listing_items do |t|
      t.integer :listing_id
      t.integer :info_id

      t.timestamps
    end
  end
end
