class GroupsController < ApplicationController
  def index
  end

  def create
  end

  def new
  end

  def show
    @group = Group.find_by(params[:id]git )
  end

  def update
  end

  def edit
  end

  def destroy
  end
end
