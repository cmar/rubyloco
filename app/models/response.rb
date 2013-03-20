class Response < ActiveRecord::Base
  belongs_to :meetup
  belongs_to :user
  attr_accessible :user, :attending, :comment
end
