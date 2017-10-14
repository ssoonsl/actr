class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.references :student, foreign_key: true, null: false
      t.references :teammate, null: false, foreign_key: { to_table: :students }

      t.timestamps
    end
  end
end
