class Users < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.column :username, :string
      t.column :imgLink, :string
      t.timestamps
    end
  end
end
