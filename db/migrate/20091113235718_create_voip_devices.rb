class CreateVoipDevices < ActiveRecord::Migration
  def self.up
    create_table :voip_devices do |t|
      t.string :name
      t.string :username
      t.string :type, :default => "friend"
      t.string :host, :default => "dynamic"
      t.string :secret
      t.string :disallow
      t.string :allow
      t.string :callerid
      t.string :callerid_name
      t.string :context
      t.string :accountcode
      t.string :dtmfmode
      t.string :language
      t.string :qualify
      t.string :technology
      t.string :ipaddr
      t.string :port
      t.integer :regseconds

      t.timestamps
    end
  end

  def self.down
    drop_table :voip_devices
  end
end
