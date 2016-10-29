class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.integer :num_1
      t.integer :num_2
      t.integer :num_3
      t.string :outcome
      t.timestamps null: false
    end
  end
end
