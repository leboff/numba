class CreateListingVisibilities < ActiveRecord::Migration
  def change
    create_table :listing_visibilities do |t|
      t.integer :connection_id
      t.integer :listing_id

      t.timestamps
    end
  end
end
