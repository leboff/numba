class Connection < ActiveRecord::Base
  belongs_to :user
  belongs_to :contact, :class_name =>"User"
  belongs_to :listing
  validates_uniqueness_of :listing_id , :scope => :user_id
  validates_presence_of :listing
  def userlist
  end
end
