class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.string :district
      t.string :zip
      t.belongs_to :vote, index: true
      t.belongs_to :pol, index: true

      t.timestamps null: false
    end
    add_foreign_key :districts, :votes
    add_foreign_key :districts, :pols
  end
end
