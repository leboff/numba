class Listing < ActiveRecord::Base
  belongs_to :user
  has_many :listing_items
  has_many :connections
  validates_uniqueness_of :name, :scope => :user_id
end
