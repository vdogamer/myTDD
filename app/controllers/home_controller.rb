class HomeController < ApplicationController
  #before_filter :authenticate_user!, :only => [:index, :new]
  def index
    @users = User.all
  end
  
  def create
    @user = User.new(user_params)
  end
  
  def new
    @user = User.new(user_params)
  end
  
  def edit
  end
end
