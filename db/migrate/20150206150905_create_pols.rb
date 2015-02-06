class CreatePols < ActiveRecord::Migration
  def change
    create_table :pols do |t|
      t.string :congressman
      t.string :party

      t.timestamps null: false
    end
  end
end
