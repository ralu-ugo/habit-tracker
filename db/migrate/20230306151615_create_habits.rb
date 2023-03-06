class CreateHabits < ActiveRecord::Migration[7.0]
  def change
    create_table :habits do |t|
      t.string :title
      t.text :description
      t.boolean :favourite
      t.references :user, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.boolean :repeat
      t.boolean :monday
      t.boolean :tuesday
      t.boolean :wednesday
      t.boolean :thursday
      t.boolean :friday
      t.boolean :saturday
      t.boolean :sunday

      t.timestamps
    end
  end
end
