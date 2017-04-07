class CreatEquipmentExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :equipment_exercises, :id => false do |t|
    	t.integer :equipment_id
    	t.integer :exercise_id
    end
    add_index("equipment_exercises",["equipment_id", "exercise_id"])
  end
end

