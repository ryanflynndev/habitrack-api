class CreateHabits < ActiveRecord::Migration[6.0]
  def change
    create_table :habits do |t|
      t.string :title
      t.integer :minutes
      t.integer :run_streak
      t.integer :time_spent
      t.integer :user_id

      t.timestamps
    end
  end
end
