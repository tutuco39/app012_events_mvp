class CreateEvents < ActiveRecord::Migration[7.2]
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :starts_at
      t.datetime :ends_at
      t.string :location
      t.text :description
      t.integer :capacity

      t.timestamps
    end
  end
end
