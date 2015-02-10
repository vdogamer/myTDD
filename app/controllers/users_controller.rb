class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def update
    #@user = User.find(session[:username])
    respond_to do |format|
      if @user.update(users_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  
 
  
  def users_params
    params.require(:user).permit(:name, :title, :content)
  end
end
