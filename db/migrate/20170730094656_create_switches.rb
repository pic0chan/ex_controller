class CreateSwitches < ActiveRecord::Migration[5.0]
  def change
    create_table :switches do |t|
      t.string :hostname
      t.string :ipv4_addr
      t.string :config_file

      t.timestamps
    end
  end
end
