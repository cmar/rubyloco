class Meetup < ActiveRecord::Base
  attr_accessible :description, :location, :start_at

  validates_presence_of :location, :start_at

  has_many :responses
end
