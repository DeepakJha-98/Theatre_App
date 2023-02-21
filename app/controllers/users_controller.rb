class UsersController < ApplicationController
  def index
    # @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end

  def create
    # binding.pry
    @user = User.new(user_params)
    if @user.save
        # sign_in @user
       #flash[:success] = "Welcome to the Theatre App!"
       redirect_to screens_index_path
    else
        render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end

end
