class UserHabitsController < ApplicationController

    def create 
        user_habit = UserHabits.create(user_habit_params)
        render json: user_habit
    end

    private
    
    def user_habit_params
        params.require(:user_habit).permit(:user_id, :habit_id)
    end
end