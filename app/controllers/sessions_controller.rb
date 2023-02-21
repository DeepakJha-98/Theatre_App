class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    # user.present?
    if user && user.authenticate(params[:session][:password])
      # session[:user_id] = user.id
      sign_in user
      redirect_to screens_index_path
  
    else
      # flash[:danger]='Invalid credentials'
      render 'new'
    end
  end


  def destroy
    sign_out if signed_in?
    redirect_to root_path
  end

  # def current_user
  #   @current_user = @current_user || User.find_by(id: session[:user_id])
  # end

  # def signed_in?
  #   !current_user.nil?
  # end


  # def sign_in(user)
  #   session[:user_id] = user.id
  # end
 
end
