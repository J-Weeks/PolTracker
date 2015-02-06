class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :issue
      t.boolean :how_vote

      t.timestamps null: false
    end
  end
end
