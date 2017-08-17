class UsersController < ApplicationController
  def index
  end

  def create
  end

  def new
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
end
