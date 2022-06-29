class UsersController < ApplicationController
  def  new 
    @users=User.new
  end
  
  def show
    @book=@user.books
    
  end

  def index
    @users=User.all
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
    params.require(:user).permit(:name,:introduction,:image)
  end
end
