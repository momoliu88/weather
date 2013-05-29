class User < ActiveRecord::Base
  attr_accessible :mobile_number, :name,:sex,:location
end
