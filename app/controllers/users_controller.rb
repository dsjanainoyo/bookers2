class UsersController < ApplicationController
    before_action :correct_user, only: [:edit,:update]
  
  def  new 
    @users=User.new
  end
  
  def show
    @book=Book.new
    @user=current_user
    @users=User.find(params[:id])
    @books=@users.books
    
  end

  def index
    @book=Book.new
    @users=User.all
    @user=current_user
    
  end

  def edit
    @user=User.find(params[:id])
    if @user==current_user
      render :edit
    else
      redirect_to user_path(current_user)
    end
  end
  
  def update
    @user=User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user),notice: 'You have updated user successfully'
    else
      render :edit
    end
  end   
  def user_params
    params.require(:user).permit(:name,:introduction,:profile_image)
  end
  
  def correct_user
    @user = User.find(params[:id])
    redirect_to(user_path(current_user)) unless @user == current_user
  end
end
