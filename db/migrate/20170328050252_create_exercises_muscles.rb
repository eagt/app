class CreateExercisesMuscles < ActiveRecord::Migration[5.0]
  def change
    create_table :exercises_muscles, :id => false do |t|
    	t.integer :muscle_id
    	t.integer :exercise_id
    end
    add_index("exercises_muscles",["muscle_id", "exercise_id"])
  end
end

