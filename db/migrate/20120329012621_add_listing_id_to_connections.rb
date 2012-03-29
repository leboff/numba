class AddListingIdToConnections < ActiveRecord::Migration
  def change
    add_column :connections, :listing_id, :integer

  end
end
