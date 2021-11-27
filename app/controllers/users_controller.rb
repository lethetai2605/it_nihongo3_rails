class UsersController < ApplicationController
  def show
      @user = User.new
  end

  def edit
      @user = current_user
  end
  
  def update
    if current_user.update(user_params)
      redirect_to current_user, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end

  private
  
  def user_params
    params.require(:user).permit(:name, :age)
  end
end
