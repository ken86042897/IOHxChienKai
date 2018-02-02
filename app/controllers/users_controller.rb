class UsersController < ApplicationController
	def index
      @users = User.all
    end
    def new
      @user = User.new
    end
    def create

    	@user = User.new(user_params)
    	if @user.save
        # 成功
        redirect_to users_path, notice: "新增會員成功!"
      	else
        # 失敗
        render :new
    	end
    end
    private
    def user_params
      params.require(:user).permit(:name, :email, :tel)
    end
end
