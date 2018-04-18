class Stories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.column :name, :string
      t.column :imgLink, :string
      t.timestamps
    end
  end
end
