class DropListingVisibility < ActiveRecord::Migration
  def up
    drop_table :listing_visibilities
  end

  def down
  end
end
