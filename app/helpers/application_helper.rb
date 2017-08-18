module ApplicationHelper
  
  def logged_in?
    !session[:id].nil?
  end
  
  def current_user
    User.find(session[:id]) if logged_in?
  end
  
  def member_of? user:current_user, group: group
    user.groups.include?(group) if user
  end
end
