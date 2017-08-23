class SessionsController < ApplicationController
  
  def create
    session.delete(:id)
    user_data = request.env['omniauth.auth']['info']
    @user = User.find_by_nickname(user_data['nickname'])
    if @user
      session[:id] = @user.id
      render json: @user
    else
      @user = User.new(nickname: user_data['nickname'], name: user_data['nickname'])
      if @user.save
        redirect_to @user
      end
    end
  end

  def destroy
  end
end
