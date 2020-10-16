class UserHabitSerializer < ActiveModel::Serializer
    attributes :created_at, :updated_at, :time_created, :id, :habit_id
    
    def time_created
        return object.created_at.to_f * 1000
    end
end