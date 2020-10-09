class HabitSerializer < ActiveModel::Serializer
   attributes :title, :minutes, :run_streak, :time_spent, :user_id, :id
   has_many :user_habits
end