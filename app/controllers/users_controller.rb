class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(whitelist)
    if @user.save
      render json: @user
    else
      render plain: "Signup unsuccessful"
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def update
  end

  def edit
  end

  def destroy
  end
  
  private
  def whitelist
    params.require(:user).permit(:name, :nickname)
  end
end
