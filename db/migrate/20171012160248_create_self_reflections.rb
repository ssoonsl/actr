class CreateSelfReflections < ActiveRecord::Migration[5.1]
  def change
    create_table :self_reflections do |t|
      t.references :student, foreign_key: true, null: false
      t.text :answer1, null: false
      t.text :answer2, null: false

      t.timestamps
    end
  end
end
