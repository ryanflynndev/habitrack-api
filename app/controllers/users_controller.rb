class UsersController < ApplicationController

    def index
        users = User.all
        render json: users      
    end

    def create 
        user = User.create(user_params)
        render json: UserSerializer.new(user)
    end

    def show 
        user = User.find(params[:id])
        render json: UserSerializer.new(user)
    end

    private
    
    def user_params
        params.require(:user).permit(:username)
    end
end