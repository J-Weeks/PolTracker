class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :issue
      t.string :bill
      t.boolean :how_vote1
      t.boolean :how_vote2
      t.boolean :how_vote3
      t.boolean :how_vote4
      t.boolean :how_vote5
      t.boolean :how_vote6
      t.boolean :how_vote7
      t.boolean :how_vote8
      t.boolean :how_vote9

      t.timestamps null: false
    end
  end
end
