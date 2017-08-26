class SessionsController < ApplicationController
  
  def create
    session.delete(:id)
    user_data = request.env['omniauth.auth']['info']
    @user = User.find_by_nickname(user_data['nickname'])
    if @user
      session[:id] = @user.id
      redirect_to @user
    else
      @user = User.new(nickname: user_data['nickname'], name: user_data['name'])
      @user.groups << Group.all.sample # Add users to a group, for fun
      if @user.save
        session[:id] = @user.id
        redirect_to @user
      else
        render plain: 'Shit.'
      end
    end
  end

  def destroy
    session.delete(:id)
  end
end
