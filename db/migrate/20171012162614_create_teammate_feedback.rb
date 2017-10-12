class CreateTeammateFeedback < ActiveRecord::Migration[5.1]
  def change
    create_table :teammate_feedbacks do |t|
      t.references :student, foreign_key: true, null: false
      t.references :teammate, null: false, foreign_key: { to_table: :students }
      t.text :answer1
      t.text :answer2

      t.timestamps
    end
  end
end
