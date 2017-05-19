class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def edit
    byebug 
    if !current_user || current_user.id != params[:id].to_i
      render status: :forbidden 
    else
      @user = current_user
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
