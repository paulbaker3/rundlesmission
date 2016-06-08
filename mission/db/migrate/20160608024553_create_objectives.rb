class CreateObjectives < ActiveRecord::Migration
  def change
    create_table :objectives do |t|
      t.string :target
      t.integer :bounty
      t.references :myssion, index: true, foreign_key: true
      t.boolean :accomplished

      t.timestamps null: false
    end
  end
end
