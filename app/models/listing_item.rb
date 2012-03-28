class ListingItem < ActiveRecord::Base
  belongs_to :listing
  belongs_to :listable, :polymorphic => true

  validates_presence_of :listable, :listing
end
