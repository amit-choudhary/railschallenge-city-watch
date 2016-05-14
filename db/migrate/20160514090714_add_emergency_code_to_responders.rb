class AddEmergencyCodeToResponders < ActiveRecord::Migration
  def change
    add_column :responders, :emergency_code, :string
  end
end
