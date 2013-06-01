class User < ActiveRecord::Base
  attr_accessible :mobile_number, :name,:sex,:location,:subscrip_time, :quit_time,:area_code
end
