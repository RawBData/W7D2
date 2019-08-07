class CreateClears < ActiveRecord::Migration[5.2]
  def change
    create_table :clears do |t|

      t.timestamps
    end
  end
end
