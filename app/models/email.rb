class Email < ActiveRecord::Base
  belongs_to :user;
  has_many :listings, :as => :info
end
