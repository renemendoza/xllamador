class ChangeVoipDevicesDefaults < ActiveRecord::Migration
  def self.up
    change_column :voip_devices, :context, :string, :default => "default"
    change_column :voip_devices, :accountcode, :string, :default => "default"
    change_column :voip_devices, :disallow, :string, :default => "all"
    change_column :voip_devices, :allow, :string, :default => "ulaw"
    change_column :voip_devices, :dtmfmode, :string, :default => "rfc2833"
    change_column :voip_devices, :qualify, :string, :default => "yes"
    change_column :voip_devices, :language, :string, :default => "en"

    change_column :voip_devices, :technology, :string, :default => "sip"
    change_column :voip_devices, :is_trunk, :boolean, :default => false
  end

  def self.down
  end
end
