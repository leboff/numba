class Connection < ActiveRecord::Base
  belongs_to :user
  belongs_to :contact, :class_name =>"User"
  has_many :listing_visibilities
end
