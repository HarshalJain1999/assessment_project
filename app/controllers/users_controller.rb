class UsersController < ApplicationController
  def index
    @users = User.all.order(id: :desc)
  end

  def show
    @user = User.find(params[:id])
  end
end

