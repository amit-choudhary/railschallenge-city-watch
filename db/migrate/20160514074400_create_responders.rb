class CreateResponders < ActiveRecord::Migration
  def change
    create_table :responders do |t|
      t.string :name, unique: true
      t.integer :type, index: true
      t.boolean :on_duty, default: false
      t.integer :capacity
      t.timestamps null: false
    end
  end
end
