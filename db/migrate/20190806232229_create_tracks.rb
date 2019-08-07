class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.string :title, null: false
      t.integer :ord, null: false
      t.text :lyrics
      t.string :kind_of, null:false, default: 'regular'
      t.timestamps
    end
    add_index :tracks, :title
    add_index :tracks, :ord
  end
end
