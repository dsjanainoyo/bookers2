class UsersController < ApplicationController
  def  new 
    @users=User.new
  end
  
  def show
    @user=Book.all
    
  end

  def index
  end

  def edit
  end
end
