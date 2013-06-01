module UsersHelper
  def get_user_nums area_code
    User.count(:conditions=>{:area_code=>area_code})
  end
end
