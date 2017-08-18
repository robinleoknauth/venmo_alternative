class GroupsController < ApplicationController
  def index
  end

  def create
  end

  def new
  end

  def show
    @group = Group.find_by(params[:id])
  end

  def update
  end

  def edit
  end

  def destroy
  end
end
