class Comments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.column :words, :string
      t.column :user_id, :integer
      t.column :sentence_id, :integer
      t.timestamps
    end
  end
end
