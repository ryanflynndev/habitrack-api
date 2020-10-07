class UserSerializer < ActiveModel::Serializer
    attributes :username
    has_many :habits
    has_many :user_habits
end