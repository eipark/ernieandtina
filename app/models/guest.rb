class Guest < ActiveRecord::Base
  attr_accessible :address, :comment, :email, :first_name, :last_name, :plus_one, :rsvp, :rsvp_code
end
