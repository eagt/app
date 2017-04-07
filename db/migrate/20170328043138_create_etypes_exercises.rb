class CreateEtypesExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :etypes_exercises, :id => false do |t|
    	t.integer :etype_id
    	t.integer :exercise_id
    end
    add_index("etypes_exercises",["etype_id", "exercise_id"])
  end
end
