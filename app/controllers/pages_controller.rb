class PagesController < ApplicationController
  include IndexHelper
  def index
    your_values = current_user ? UserValue.values_of_user(current_user.id) : nil
    render 'show', locals: {your_values: your_values}
  end

  def login
    user = User.find_by(email: params[:user][:email])
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      your_values = UserValue.values_of_user(current_user.id)
      redirect_to '/', locals: {your_values: your_values}
    else
      session[:error] = "Invalid Login Information"
      render 'show'
    end
  end

  def profile
    current_user.update(bio: params[:newbio])
    render nothing: true
  end


  def register
    render partial: 'register'
  end

  def login_box
    render partial: 'logedout'
  end

  def logout
    session[:user_id] = nil
    redirect_to '/'
  end

  def new_register
    user = User.create(user_params)
    user.update(bio: "Edit bio...")
    session[:user_id] = user.id
    redirect_to '/'
  end


private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :salt, :encrypted_password)
  end


end
