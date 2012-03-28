class ListingItem < ActiveRecord::Base
  belongs_to :listing
  belongs_to :info, :polymorphic => true
end
