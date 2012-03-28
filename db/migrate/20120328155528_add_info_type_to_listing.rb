class AddInfoTypeToListing < ActiveRecord::Migration
  def change
    add_column :listings, :info_type, :string

  end
end
