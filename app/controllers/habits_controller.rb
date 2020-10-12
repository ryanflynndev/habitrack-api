class HabitsController < ApplicationController

    def create 
        habit = Habit.create(habit_params)
        render json: {habit: HabitSerializer.new(habit)}
    end

    def update
        habit = Habit.find(params[:id])
        habit.update(habit_params)
        render json: {habit: HabitSerializer.new(habit)}
    end
    
    def destroy
        habit = Habit.find(params[:id])
        habit.destroy
        render json: {success: 'success'}
    end
    private
    
    def habit_params
        params.require(:habit).permit(:title, :minutes, :run_streak, :time_spent, :user_id )
    end
end