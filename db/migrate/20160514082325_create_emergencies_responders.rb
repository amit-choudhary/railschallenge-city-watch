class CreateEmergenciesResponders < ActiveRecord::Migration
  def change
    create_table :emergencies_responders do |t|
      t.references :emergencies, index: true
      t.references :responders, index: true
      t.timestamps null: false
    end
  end
end
