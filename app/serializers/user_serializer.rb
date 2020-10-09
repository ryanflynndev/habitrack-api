class UserSerializer < ActiveModel::Serializer
    attributes :username, :id
    has_many :habits
    has_many :user_habits
end