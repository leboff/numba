class ChangeInfoListableToListingItems < ActiveRecord::Migration
  def up
    rename_column :listing_items, :info_id , :listable_id
    rename_column :listing_items, :info_type , :listable_type
  end

  def down
    rename_column :listing_items, :listable_id , :info_id
    rename_column :listing_items, :listable_type , :info_type
  end
end
