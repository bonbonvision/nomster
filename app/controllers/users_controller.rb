class UsersController < ApplicationController

  def new
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end

  def edit 
    if !current_user || current_user.id != params[:id].to_i
      render status: :forbidden 
    end
  end 

  def update
    if !current_user || current_user.id != params[:id].to_i
      render status: :forbidden 
    else 
      current_user.update(user_params)
      redirect_to user_path(current_user)
    end
  end   

  private

  def user_params
    params.require(:user).permit(:username)
  end

end
