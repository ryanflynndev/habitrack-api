class UserSerializer < ActiveModel::Serializer
    attributes :username, :id, :most_recent_user_habit
    has_many :habits
    has_many :user_habits

    def most_recent_user_habit
        object.user_habits.max_by{ |x| x.created_at.to_f * 1000}
    end
end