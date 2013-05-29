require 'net/http'
require 'json'

module TasksHelper
  # create task automotically
  def create_task
    locations = Location.all
    @tasks = Array.new
    locations.each{|location|
      task = Task.new
      city_code = location.city_code
      task.city = location.location
      task.city_code = location.city_code
      task.weather_info = get_weather_info city_code
      @tasks << task
    }
    @tasks
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
