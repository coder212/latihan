class PagesController < ApplicationController
  def home
  @title = "Home"
  end

  def contact
  @title = "Contact"
  end

  def about
  @title = "About"
  end
  def signup
@user = User.new
@title = "Sign up"
end
def create
@user = User.new(params[:user])
if @user.save
flash[:success] = "Welcome to the Sample App!"
redirect_to @user
else
@title = "Sign up"
render 'new'
end
end
end
