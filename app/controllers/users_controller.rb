class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    end
  end

  def destroy
    @user.destroy
    redirect_to root_path
  end

end
