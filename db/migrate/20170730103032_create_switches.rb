class CreateSwitches < ActiveRecord::Migration[5.0]
  def change
    create_table :switches do |t|
      t.string :hostname, presense: true, length: { maximum: 30 }
      t.string :manage_ipv4addr
      t.string :config_url

      t.timestamps
    end
  end
end
