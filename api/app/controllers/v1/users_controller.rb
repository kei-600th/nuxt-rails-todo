class V1::UsersController < ApplicationController
  # -------- ここから追記 --------
      def index
          users = User.all
          render json: users
      end
  
      def create
        user = User.new(user_params)
        if user.save
          render json: user
        else
          render json: user.errors
        end
      end
  
      private
  
      def user_params
        params.require(:user).permit(:name, :email, :uid)
      end
  # -------- ここまで追記 --------
  end
  