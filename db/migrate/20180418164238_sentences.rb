class Sentences < ActiveRecord::Migration[5.2]
  def change
    create_table :sentences do |t|
      t.column :words, :string

      t.timestamps
    end
  end
end
