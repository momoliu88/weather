require 'pp'
class DashboardController < ApplicationController
  include TasksHelper
   def index
     @tasks = all_tasks
     respond_to do |format|
       format.html # index.html.erb
       format.js 
     end
   end

   def create_tasks
      @tasks = create_task 
      
  #   to deal with the fuckin network
     #@tasks = _weather_info
     respond_to do |format|
       format.html # index.html.erb
       format.js 
     end
   end
   def send_messages
     code_str = params[:city_codes]
     weather_infos = params[:infos]
     codes  = code_str.split(",")
     codes.each{|code|
       info = weather_infos[code]
       task = Task.new
       location = Location.find_by_city_code(code)
       task.weather_info = info
       task.area_code = location.area_code
       task.city_code = code
       task.city = location.location
       task.status = TaskStatus::SENDING
       task.save
       users = User.find_by_area_code(location.area_code)
       #start sending
     }
     @tasks = all_tasks
     puts @tasks[0].created_at
     respond_to do |format|
       format.html # index.html.erb
       format.js 
     end
   end
  
end
