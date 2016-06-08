class CreateMyssions < ActiveRecord::Migration
  def change
    create_table :myssions do |t|
      t.string :description
      t.integer :risk_value
      t.string :location

      t.timestamps null: false
    end
  end
end
