class Email < ActiveRecord::Base
  belongs_to :user;
  has_many :listings, :as => :listable
  has_many :listing_items,  :as => :listable, :dependent =>:destroy
  validates_presence_of :address, :user
end
