class CreateBands < ActiveRecord::Migration[5.2]
  def change
    create_table :bands do |t|
      t.text :name, null: false
      t.integer :yr_started,
      t.timestamps
    end
    add_index :bands, :name
  end
end
