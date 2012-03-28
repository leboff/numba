class Email < ActiveRecord::Base
  belongs_to :user;
  has_many :listings, :as => :listable
  validates_presence_of :address, :user
end
