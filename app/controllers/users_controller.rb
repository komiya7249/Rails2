class UsersController < ApplicationController
  def index
    @user = current_user
    @q = Room.ransack(params[:q])
    @rooms = @q.result(distinct: true)
  end

  def new
    @user = User.new
  end

  def show

  end

  def update
    @user = current_user
    if @user.update(uesr_params)
      redirect_to profile_path
    else
      render"edit"
    end
  end

  def account
    @user = current_user
  end

  def profile
    @user = current_user
  end

  def edit
    @user = current_user
  end

  private
  def uesr_params
    params.require(:user).permit(:name,:introduction,:img)
  end

end
