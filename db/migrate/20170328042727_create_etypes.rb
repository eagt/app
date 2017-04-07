class CreateEtypes < ActiveRecord::Migration[5.0]
  def change
    create_table :etypes do |t|
      t.integer :user_id
      t.string :name

      t.timestamps
    end
  end
end
