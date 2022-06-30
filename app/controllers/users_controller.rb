class UsersController < ApplicationController
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
    user.update(user_params)
    redirect_to user_path(:id)
  end   
  def user_params
    params.require(:user).permit(:name,:introduction,:profile_image)
  end
end
