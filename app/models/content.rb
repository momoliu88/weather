class Content < ActiveRecord::Base
  attr_accessible :area_code, :content, :status,:weather_code,:cityname
end
