class Request < ActiveRecord::Base
  attr_accessible :user_id, :content
  validates :content, :presence => true, :length => { :maximum =>140 }
  #validates :user_id, :presence => true
  belongs_to :user
  default_scope :order => 'requests.created_at DESC'
end
