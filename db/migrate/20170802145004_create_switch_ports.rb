class CreateSwitchPorts < ActiveRecord::Migration[5.0]
  def change
    create_table :switch_ports do |t|
      t.references :switch, foreign_key: true
      t.string :port_num
      t.integer :speed, :limit => 8
      t.references :internet_line, foreign_key: true
      t.string :mode
      t.boolean :link_status

      t.index [:switch_id, :port_num], :unique => true

      t.timestamps
    end
  end
end
