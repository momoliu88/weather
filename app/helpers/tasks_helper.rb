require 'net/http'
require 'json'

module TasksHelper
  # create task automotically
  def all_tasks
    Task.all(:order=>"created_at desc")
  end
  def create_task
    locations = Location.all
    @tasks = Array.new
    locations.each{|location|
      task = Task.new
      city_code = location.city_code
      task.city = location.location
      task.area_code = location.area_code
      task.city_code = city_code
      task.weather_info = get_weather_info city_code
      task.created_at = Time.now
      puts task.created_at
      puts Time.now
      @tasks << task
    }
    @tasks
  end
   
  def _weather_info
    Task.all
  end
  def get_weather_info city_code
    uri_str = "http://m.weather.com.cn/data/"+city_code+".html"
    url = URI.parse(uri_str)
    req = Net::HTTP::Get.new(url.path)
    res = Net::HTTP.start(url.host, url.port) {|http|
      http.request(req)
    }
    weather = JSON.parse(res.body)
    weatherinfo = weather["weatherinfo"]
    "#{weatherinfo["date_y"]} #{weatherinfo["temp1"]},#{weatherinfo["weather1"]},#{weatherinfo["wind1"]},#{weatherinfo["index_d"]}"
  end
end
