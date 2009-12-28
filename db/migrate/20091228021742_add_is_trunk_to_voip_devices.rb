class AddIsTrunkToVoipDevices < ActiveRecord::Migration
  def self.up
    add_column :voip_devices, :is_trunk, :boolean
  end

  def self.down
    remove_column :voip_devices, :is_trunk
  end
end
