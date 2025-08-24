class CreateAttendances < ActiveRecord::Migration[7.2]
  def change
    create_table :attendances do |t|
      t.string :name
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
