class AddNatAndCanreinviteToVoipDevices < ActiveRecord::Migration
  def self.up
    add_column :voip_devices, :nat, :string, :default => "no"
    add_column :voip_devices, :canreinvite, :string, :default => "no"
  end

  def self.down
    remove_column :voip_devices, :nat
    remove_column :voip_devices, :canreinvite
  end
end
