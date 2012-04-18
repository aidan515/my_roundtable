class Roundtable < ActiveRecord::Base
  validates_presence_of :topic, :kick_off, :dinner_on
  attr_accessible :topic, :kick_off, :dinner_on, :number_of_attendees, :user_id
  belongs_to :user
  default_scope :order => 'roundtables.created_at DESC'
end

