class CreateRoutines < ActiveRecord::Migration[5.0]
  def change
    create_table :routines do |t|
      t.string :user_id
      t.string :name
      t.date :date
      t.string :weekly_frequency
      t.date :days

      t.timestamps
    end
  end
end
