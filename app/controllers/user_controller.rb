class UserController < ApplicationController

  def new_html
  end

  def create_html
    user = User.new
    user.username = params[:username]
    user.email = params[:email]
    user.bio = params[:bio]
    user.save
    redirect_to "/"
  end

  def new_form_tag
  end

  def create_form_tag
    user = User.new
    user.username = params[:username]
    user.email = params[:email]
    user.bio = params[:bio]
    user.save
    redirect_to "/"
  end

  def new_form_for
     @user = User.new
  end

  def create_form_for
      @user = User.new
      @user.username = params["user"]["username"]
      @user.email = params["user"]["email"]
      @user.bio = params["user"]["bio"]
      @user.save
    if @user.username.include?(" ")
      redirect_to error_path('user/error')
    else
      redirect_to "/"
    end
  end

  def error
  end

end
