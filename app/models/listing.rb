class Listing < ActiveRecord::Base
  belongs_to :user
  has_many :listing_items , :dependent => :destroy
  has_many :connections , :dependent => :destroy
  validates_uniqueness_of :name, :scope => :user_id
end
