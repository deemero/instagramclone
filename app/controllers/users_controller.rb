class UsersController < ApplicationController

  def new
     @user = User.new
   end

   def create
     @user = User.create(user_params)
     if @user.save
        redirect_to user_path(@user), notice: 'You have successfully signed up.'
     else
       render 'new'
     end
   end

  def edit
  end

   def show
     @user = User.find(params[:id])
   end

   private
    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
end
