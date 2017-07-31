class CreateSwitchPorts < ActiveRecord::Migration[5.0]
  def change
    create_table :switch_ports do |t|
      t.string :hostname_id
      t.integer :port_num
      t.string :speed
      t.integer :vlan
      t.string :mode
      t.boolean :link_status

      t.index [:hostname_id, :port_num, :speed], :unique => true

      t.timestamps
    end
  end
end
