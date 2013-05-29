require 'pp'
class DashboardController < ApplicationController
  include TasksHelper
   def index
     respond_to do |format|
       format.html # index.html.erb
       format.js 
     end
   end

   def create_tasks
     @tasks = create_task 
     respond_to do |format|
       format.html # index.html.erb
       format.js 
     end
   end
   def send_messages
     if params == nil
       puts "params nil"
     end
     pp "#{params}"
     respond_to do |format|
       format.html # index.html.erb
       format.js 
     end
   end
  
end
