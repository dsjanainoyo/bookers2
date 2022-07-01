class UsersController < ApplicationController
    before_action :carrent_user, only: [:edit,:update]
  
  def  new 
    @users=User.new
  end
  
  def show
    @book=Book.new
    @user=current_user
    @user=User.find(@user.id)
    @books=@user.books
    
  end

  def index
    @book=Book.new
    @users=User.all
    @user=current_user
    
  end

  def edit
    @user=User.find(params[:id])
  end
  
  def update
    user=User.find(params[:id])
    if user.update(user_params)
    redirect_to user_path(:id),notice: 'You have updated user successfully'
    else
    render edit
    end
  end   
  def user_params
    params.require(:user).permit(:name,:introduction,:profile_image)
  end
  
  def carrent_user
   
    redirect_to(user_url(current_user)) unless params[:id]==current_user.id
  end
end
