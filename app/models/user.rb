class User < ApplicationRecord
    has_many :habits
    has_many :user_habits
end
