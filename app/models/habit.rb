class Habit < ApplicationRecord
    belongs_to :user
    has_many :user_habits
end
