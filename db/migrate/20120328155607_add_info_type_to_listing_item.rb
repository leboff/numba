class AddInfoTypeToListingItem < ActiveRecord::Migration
  def change
    add_column :listing_items, :info_type, :string

  end
end
