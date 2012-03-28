class RemoveInfoTypeToListing < ActiveRecord::Migration
  def up
    remove_column :listings, :info_type
      end

  def down
    add_column :listings, :info_type, :string
  end
end
