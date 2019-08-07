class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.text :title, null: false
      t.integer :year, null: false
      t.integer :band_id, null: false
      t.text :kind_of_recording, null: false, default: 'studio'
      t.timestamps
    end
    add_index :albums, :title
    add_index :albums, :band_id
  end
end
