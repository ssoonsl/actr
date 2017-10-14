class CreateFeedback < ActiveRecord::Migration[5.1]
  def change
    create_table :feedbacks do |t|
      t.references :reviewer, null: false, foreign_key: { to_table: :students }
      t.references :reviewee, null: false, foreign_key: { to_table: :students }
      t.text :answer1
      t.text :answer2

      t.timestamps
    end
  end
end
