class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :name, null: false
      t.string :sex, null: false, limit: 1
      t.string :color, null: false
      t.date :birth_date
      t.string :description

      t.timestamps null: false
    end
  end
end
