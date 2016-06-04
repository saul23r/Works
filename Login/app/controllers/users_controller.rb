class UsersController < ApplicationController
  def new

    @user = User.new

    def create
        @user = User.new(user_params)
        if @user.save
          log_in(@user)
          redirect_to user_path

        else
          flash[:alert]= @user.errors.full_messages
          render :new

        end
    end

  end
end


private
def user_params
  params.require (:username).permit(:email, :password, :password_confirmation)

end







