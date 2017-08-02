class CreateInternetLines < ActiveRecord::Migration[5.0]
  def change
    create_table :internet_lines do |t|
      t.string :line_name
      t.integer :vlan

      t.timestamps
    end
  end
end
